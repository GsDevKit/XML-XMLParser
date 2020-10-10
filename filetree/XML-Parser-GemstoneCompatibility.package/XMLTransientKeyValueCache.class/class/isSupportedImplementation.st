testing
isSupportedImplementation
	^ XMLReentrantMutex hasSupportedImplementation
		and: [XMLClassFinder hasClassNamed: #TransientValue]