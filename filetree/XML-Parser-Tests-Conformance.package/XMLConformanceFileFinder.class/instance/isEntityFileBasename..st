testing
isEntityFileBasename: aBasename
	^ self entityExtensions anySatisfy: [:each |
		aBasename endsWith: each]