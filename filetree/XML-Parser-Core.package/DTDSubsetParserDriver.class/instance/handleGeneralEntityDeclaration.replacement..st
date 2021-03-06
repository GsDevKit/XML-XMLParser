handling - dtd
handleGeneralEntityDeclaration: aName replacement: aReplacement
	self mustSkipEntityAndAttributeDeclarations
		ifTrue: [^ self].

	self isStandaloneExternal
		ifTrue: [
			self doctypeDefinition
				addStandaloneExternalInternalGeneralEntity: aName
				replacement: aReplacement
				baseURI: self baseURI]
		ifFalse: [
			self doctypeDefinition
				addInternalGeneralEntity: aName
				replacement: aReplacement
				baseURI: self baseURI].