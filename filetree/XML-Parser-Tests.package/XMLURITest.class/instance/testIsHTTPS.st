tests
testIsHTTPS
	self allURIStringsDo: [:each | | uri |
		uri := each asXMLURI.
		uri scheme = 'https'
			ifTrue: [self assert: uri isHTTPS]
			ifFalse: [self deny: uri isHTTPS]]