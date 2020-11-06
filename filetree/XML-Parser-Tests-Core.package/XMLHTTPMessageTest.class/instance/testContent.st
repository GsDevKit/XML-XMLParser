tests
testContent
	| message |

	self isSupported
		ifFalse: [^ self].

	message := self newMessage.
	self
		assert: message content = '';
		assert: (message content: 'test') == message;
		assert: message content = 'test'.