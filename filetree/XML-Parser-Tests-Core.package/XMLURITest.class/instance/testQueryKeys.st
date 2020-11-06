tests
testQueryKeys
	self allURIStringsDo: [:uriString | | uri |
		uri := uriString asXMLURI.
		self assert:
			uri queryKeys =
				(uri query collect: [:each | each key])]