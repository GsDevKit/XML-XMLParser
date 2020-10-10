initialization
initialize
	super initialize.

	transientRecursionLock :=
		(XMLClassFinder classNamed: #TransientRecursionLock) new.