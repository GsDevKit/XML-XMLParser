*XML-Parser-GemstoneCompatibility
initialize
	super initialize.

	mutex := (XMLClassFinder classNamed: #TransientRecursionLock) new.
