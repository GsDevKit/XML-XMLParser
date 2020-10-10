private
canonicalOutputFromDocument: aDocument
	| writer |

	(writer := XMLConformanceWriter new)
		isCanonical: true.
	aDocument hasDoctypeDefinition
		ifTrue: [| doctypeDefinition |
			doctypeDefinition := aDocument doctypeDefinition.
			doctypeDefinition notations values asSet
				ifNotEmpty: [:referencedNotations |
					writer doctypeDeclaration
						root: aDocument doctypeDeclaration root;
						publicID: aDocument doctypeDeclaration publicID;
						systemID: aDocument doctypeDeclaration systemID;
						with: [
							referencedNotations asArray
								sort: [:a :b | a name <= b name];
								do: [:each |
									writer notationDeclaration
										name: each name;
										publicID: each publicID;
										systemID: each systemID]]]].

	aDocument writeInnerXMLOn: writer.

	^ writer contents.