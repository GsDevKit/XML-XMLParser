tests
testMethod
	| request |

	self isSupported
		ifFalse: [^ self].

	request := self newMessage.
	self
		assert: request method = 'GET';
		deny: request method isSymbol;
		assert: (request method: 'POST') == request;
		assert: request method = 'POST';
		deny: request method isSymbol.