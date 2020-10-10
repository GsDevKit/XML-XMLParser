accessing
classNameStemForSuite: aSuite
	^ (aSuite = 'xmltest'
		ifTrue: ['Expat']
		ifFalse: [aSuite]) capitalized