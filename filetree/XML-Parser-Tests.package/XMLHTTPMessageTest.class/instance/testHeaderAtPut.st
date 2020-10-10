tests
testHeaderAtPut
	| message addedHeaderDictionary |

	self isSupported
		ifFalse: [^ self].

	message := self newMessage.
	addedHeaderDictionary := self headerDictionaryFrom: message headers.
	self headers do: [:each |
		self assert:
			(message
				headerAt: each key
				put: each value) = each value.
		addedHeaderDictionary add: each.
		self assert: (message headerAt: each key) = each value.
		self
			assertMessage: message
			hasHeaders: addedHeaderDictionary associations].