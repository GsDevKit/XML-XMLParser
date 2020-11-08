*xml-parser-sixx-gemstone
parseDocumentFrom: aStream persistentRoot: persistentArrayOrNil
	"pass in a persistent Array (UserGlobals at: #XML_Root put {}) as <persistentArrayOrNil>
		for writing very large XML documents"

	^ self
		parseDocumentFrom: aStream
		useNamespaces: false
		persistentRoot: persistentArrayOrNil