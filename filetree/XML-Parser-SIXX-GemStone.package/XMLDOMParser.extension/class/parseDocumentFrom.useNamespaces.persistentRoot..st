*xml-parser-sixx-gemstone
parseDocumentFrom: aStream useNamespaces: aBoolean persistentRoot: persistentArrayOrNil
	"pass in a persistent Array (UserGlobals at: #XML_Root put {}) as <persistentArrayOrNil>
		for writing very large XML documents"

	^ (super
		parseDocumentFrom: aStream
		useNamespaces: aBoolean
		persistentRoot: persistentArrayOrNil) document