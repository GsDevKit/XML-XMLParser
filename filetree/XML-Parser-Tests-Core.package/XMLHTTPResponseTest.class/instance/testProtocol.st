tests
testProtocol
	| response |

	self isSupported
		ifFalse: [^ self].

	response := self newMessage.
	self
		assert: response protocol = 'HTTP/1.1';
		assert: (response protocol: 'HTTP/1.0') == response;
		assert: response protocol = 'HTTP/1.0'.