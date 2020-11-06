*XML-Parser-Core
xmlCopyWithoutWhitespace
	^ self reject: [:each | each isXMLWhitespace]