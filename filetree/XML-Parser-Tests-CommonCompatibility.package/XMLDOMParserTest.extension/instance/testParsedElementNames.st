*XML-Parser-Tests-CommonCompatibility
testParsedElementNames
	| document |

	document := XMLDOMParser parse: self addressBookNamespacePrefixedXML.
	self assert:
		document elementNames equals:
			(document elements collect: [:each | each name ]).

	document allElementsDo: [:element |
		self assert:
			element elementNames equals:
				(element elements collect: [:each | each name])].
