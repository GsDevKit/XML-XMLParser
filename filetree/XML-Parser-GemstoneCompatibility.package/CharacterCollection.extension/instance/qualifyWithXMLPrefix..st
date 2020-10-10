*XML-Parser-GemstoneCompatibility
qualifyWithXMLPrefix: aPrefix
	"optimized"
	aPrefix size == 0
		ifTrue: [^ self]
		ifFalse: [^ (aPrefix copyWith: $:), self]