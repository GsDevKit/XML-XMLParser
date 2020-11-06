tests
testHeaderAtIfAbsentPut
	| message addedHeaderDictionary |

	self isSupported
		ifFalse: [^ self].

	message := self newMessage.
	addedHeaderDictionary := self headerDictionaryFrom: message headers.
	self headers do: [:each |
		self assert:
			(message
				headerAt: each key
				ifAbsentPut: [each value]) =
				(addedHeaderDictionary
					at: each key
					ifAbsentPut: [each value]).

		self assert:
			(message headerAt: each key) =
				(addedHeaderDictionary at: each key).
		self
			assertMessage: message
			hasHeaders: addedHeaderDictionary associations].