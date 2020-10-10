initialization
setCollection: aKeyValueCollection
	collection :=
		(XMLClassFinder classNamed: #TransientValue) value:
			aKeyValueCollection