tests
testURL
	self isSupported
		ifFalse: [^ self].

	self assert: self newRequestWithURL url = self url.