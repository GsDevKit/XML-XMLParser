tests
testTimeout
	| request |

	self isSupported
		ifFalse: [^ self].

	request := self newMessage.
	self
		assert: request timeout = self defaultTimeout;
		assert: (request timeout: self defaultTimeout + 1) == request;
		assert: request timeout = (self defaultTimeout + 1).