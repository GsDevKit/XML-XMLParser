tests
testContentLength
	| message |

	self isSupported
		ifFalse: [^ self].

	message := self newMessage.
	self
		assert: message contentLength isNil;
		assert: (message contentLength: 100) == message;
		assert: message contentLength = 100;
		assert: (message contentLength: nil) == message;
		assert: message contentLength isNil;
		assert: (message contentLength: nil) == message;
		assert: message contentLength isNil.

	message
		headerAt: 'Content-Length'
		put: '200'.
	self assert: message contentLength = 200.

	message removeHeaderAt: 'Content-Length'.
	self assert: message contentLength isNil.