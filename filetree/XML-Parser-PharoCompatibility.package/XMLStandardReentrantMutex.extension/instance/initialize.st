*XML-Parser-PharoCompatibility
initialize
	super initialize.

	mutex := (XMLClassFinder classNamed: #Mutex) new.
