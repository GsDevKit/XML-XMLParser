building subclasses
buildPassingTestMethodFor: aFileReference in: aClass
	| template arguments outputFileReference |

	arguments :=
		OrderedCollection
			with: (self testSelectorFor: aFileReference) asString
			with: (self relativePathStringFor: aFileReference)
			with: (self sourceSelectorFor: aFileReference) asString
			with: (self documentURIFor: aFileReference).

	outputFileReference :=
		((aFileReference pathString allButLast: aFileReference basename size),
			'out/',
			aFileReference basename) asFileReference.
	outputFileReference exists
		ifTrue: [
			template := self passingTestMethodWithOutputTemplate.
			arguments addLast: (self sourceSelectorFor: outputFileReference)]
		ifFalse: [template := self passingTestMethodTemplate].

	aClass
		compile: (template format: arguments)
		classified: #'tests'.