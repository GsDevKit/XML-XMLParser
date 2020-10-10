tests
testHeaderValuesAt
	| message addedHeaders |

	self isSupported
		ifFalse: [^ self].

	message := self newMessage.
	addedHeaders := message headers.
	self headers do: [:each |
		self assert:
			(message headerValuesAt: each key) sorted =
				(self
					headerValuesAt: each key
					from: addedHeaders) sorted.

		message addHeader: each.
		addedHeaders addLast: each.
		self assert:
			(message headerValuesAt: each key) sorted =
				(self
					headerValuesAt: each key
					from: addedHeaders) sorted].