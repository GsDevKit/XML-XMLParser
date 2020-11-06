tests
testIsFile
	self allURIStringsDo: [:each | | uri |
		uri := each asXMLURI.
		uri scheme = 'file'
			ifTrue: [self assert: uri isFile]
			ifFalse: [self deny: uri isFile]]