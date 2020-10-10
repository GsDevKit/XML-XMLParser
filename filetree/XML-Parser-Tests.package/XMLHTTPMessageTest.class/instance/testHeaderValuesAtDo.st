tests
testHeaderValuesAtDo
	| message addedHeaders |

	self isSupported
		ifFalse: [^ self].

	message := self newMessage.
	addedHeaders := message headers.
	(self headerKeysFrom: addedHeaders) do: [:each |
		self
			xmlShould: [:block |
				message
					headerValuesAt: each
					do: block]
			unorderedEnumerate:
				(self
					headerValuesAt: each
					from: addedHeaders)].

	self headers do: [:each |
		message addHeader: each.
		addedHeaders addLast: each].
	(self headerKeysFrom: addedHeaders) do: [:each |
		self
			xmlShould: [:block |
				message
					headerValuesAt: each
					do: block]
			unorderedEnumerate:
				(self
					headerValuesAt: each
					from: addedHeaders)].