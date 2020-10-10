tests
testIncludesHeaderAt
	| message addedHeaderKeys |

	self isSupported
		ifFalse: [^ self].

	message := self newMessage.
	addedHeaderKeys := self headerKeysFrom: message headers.
	self headers do: [:each |
		self assert:
			(message includesHeaderAt: each key) =
				(addedHeaderKeys includes: each key).

		message addHeader: each.
		addedHeaderKeys add: each key.
		self assert: (message includesHeaderAt: each key)].