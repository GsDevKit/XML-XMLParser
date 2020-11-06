tests
testAddHeader
	| message addedHeaders |

	self isSupported
		ifFalse: [^ self].

	message := self newMessage.
	addedHeaders := message headers.
	self headers do: [:each |
		self deny: (message headers includes: each).

		self assert: (message addHeader: each) = each.
		addedHeaders addLast: each.
		self
			assertMessage: message
			hasHeaders: addedHeaders].

	self headers do: [:each |
		self assert: (message addHeader: each) = each.
		addedHeaders addLast: each.
		self
			assertMessage: message
			hasHeaders: addedHeaders].