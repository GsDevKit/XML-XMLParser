tests
testCopy
	| configuration externalEntityResolver copy |

	externalEntityResolver := self externalEntityResolverClass new.
	(configuration := self newConfiguration)
		isValidating: false;
		usesNamespaces: false;
		decodesCharacters: false;
		parserHandlerClass: self otherParserHandlerClass;
		documentReadLimit: XMLParserLimits defaultDocumentReadLimit - 1;
		maxEntityReplacementDepth: XMLParserLimits defaultMaxEntityReplacementDepth - 1;
		preservesUndeclaredEntityReferences: true;
		replacesContentEntityReferences: false;
		resolvesExternalEntities: true;
		externalEntityResolver: externalEntityResolver.
	copy := configuration copy.
	self
		deny: copy == configuration;
		assert: copy isValidating equals: configuration isValidating;
		assert: copy usesNamespaces equals: configuration usesNamespaces;
		assert: copy decodesCharacters equals: configuration decodesCharacters;
		assert: copy requiresSchema equals: configuration requiresSchema;
		assert: copy parserHandlerClass == configuration parserHandlerClass.

	self
		deny: copy parserLimits == configuration parserLimits;
		assert: copy documentReadLimit equals: configuration documentReadLimit;
		assert: copy maxEntityReplacementDepth equals: configuration maxEntityReplacementDepth.

	self
		deny: copy entityConfiguration == configuration entityConfiguration;
		assert: copy preservesUndeclaredEntityReferences equals: configuration preservesUndeclaredEntityReferences;
		assert: copy replacesContentEntityReferences equals: configuration replacesContentEntityReferences;
		assert: copy resolvesExternalEntities equals: configuration resolvesExternalEntities;
		deny: copy externalEntityResolver == configuration externalEntityResolver;
		assert: copy externalEntityResolver class == configuration externalEntityResolver class.