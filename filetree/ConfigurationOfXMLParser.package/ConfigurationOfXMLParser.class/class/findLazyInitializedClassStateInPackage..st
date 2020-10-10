private
findLazyInitializedClassStateInPackage: aPackageName
	"This method tries to find all classes in aPackageName with class and
	class instance vars that are lazy initialized and require explicit
	initialization on GS to prevent write conflicts. This is a hueristic.

		self findLazyInitializedClassStateInPackage: 'XML-Parser'

	"
	| classesAndLazyInitializedClassState |

	classesAndLazyInitializedClassState := OrderedCollection new.
	(SystemNavigation default allClassesInPackageNamed: aPackageName)
		do: [:classInPackage |
			| superclassInPackage metaClassInPackage newClassAndClassInstVars |

			superclassInPackage := classInPackage superclass.
			metaClassInPackage := classInPackage class.
			newClassAndClassInstVars := Set new.
			classInPackage classVariables do: [:each |
				(superclassInPackage classVariables includes: each)
					ifFalse: [newClassAndClassInstVars add: each key]].
			metaClassInPackage instanceVariables do: [:each |
				newClassAndClassInstVars add: each].
			newClassAndClassInstVars
				ifNotEmpty: [
					(metaClassInPackage includesSelector: #initialize)
						ifTrue: [| classInitializationMethods |
							classInitializationMethods :=
								Set with: (metaClassInPackage compiledMethodAt: #initialize).
							[classInitializationMethods isEmpty]
								whileFalse: [| method |
									method := classInitializationMethods anyOne.
									method ast nodesDo: [:each |
										each isAssignment
											ifTrue: [
												((newClassAndClassInstVars includes: each variable name)
													and: [each value isLiteralNode not
														or: [each value value notNil]])
													ifTrue: [newClassAndClassInstVars remove: each variable name]]
											ifFalse: [
												(each isMessage
													and: [each receiver isSelf
														and: [each isUnary]])
													ifTrue: [
														(metaClassInPackage lookupSelector: each selector)
															ifNotNil: [:newMethod |
																classInitializationMethods add: newMethod]]]].
									classInitializationMethods remove: method]]].
			newClassAndClassInstVars
				ifNotEmpty: [
					classesAndLazyInitializedClassState addLast:
						classInPackage -> newClassAndClassInstVars]].

	^ classesAndLazyInitializedClassState sort: [:a :b |
		(b key inheritsFrom: a key)
			ifTrue: [true]
			ifFalse: [a key name <= b key name]].