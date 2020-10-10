tests
testStatusCode
	| response |

	self isSupported
		ifFalse: [^ self].

	response := self newMessage.
	self
		assert: response statusCode = 200;
		assert: (response statusCode: 404) == response;
		assert: response statusCode = 404.