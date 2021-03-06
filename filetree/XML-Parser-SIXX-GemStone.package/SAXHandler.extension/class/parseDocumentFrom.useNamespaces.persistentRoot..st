*xml-parser-sixx-gemstone
parseDocumentFrom: aStream useNamespaces: aBoolean persistentRoot: persistentArrayOrNil
	"pass in a persistent Array (UserGlobals at: #XML_Root put {}) as <persistentArrayOrNil>
		for writing very large XML documents"

	| parser |
	parser _ self on: aStream.
	persistentArrayOrNil ~~ nil
		ifTrue: [ persistentArrayOrNil add: parser ].
	parser usesNamespaces: aBoolean.
	parser parseDocument.
	persistentArrayOrNil ~~ nil
		ifTrue: [ persistentArrayOrNil size: 0 ].
	^ parser