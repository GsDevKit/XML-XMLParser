accessing
classNameForSuite: aSuite
	^ ('XMLConformance',
		(self classNameStemForSuite: aSuite),
		'Test') asSymbol