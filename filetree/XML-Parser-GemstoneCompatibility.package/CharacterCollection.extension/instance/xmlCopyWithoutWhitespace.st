*XML-Parser-GemstoneCompatibility
xmlCopyWithoutWhitespace
	^ self reject: [:each | each isXMLWhitespace]