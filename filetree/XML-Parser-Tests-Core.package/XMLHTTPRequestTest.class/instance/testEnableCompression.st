tests
testEnableCompression
	| request  |

	self isSupported
		ifFalse: [^ self].

	(request := self newRequestWithURL) acceptEncoding: ''.
	self
		assert: request enableCompression == request;
		deny: request acceptEncoding isEmpty.
	request acceptEncoding do: [:each |
		self assert:
			(XMLHTTPDecompressingReadStreamAdapterFactory
				classForCompression: each) notNil].