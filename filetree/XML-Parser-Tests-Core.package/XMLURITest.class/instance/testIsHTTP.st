tests
testIsHTTP
	self allURIStringsDo: [:each | | uri |
		uri := each asXMLURI.
		uri scheme = 'http'
			ifTrue: [self assert: uri isHTTP]
			ifFalse: [self deny: uri isHTTP]]