tests
testHeaderKeys
	| message addedHeaderKeys |

	self isSupported
		ifFalse: [^ self].

	message := self newMessage.
	addedHeaderKeys := self headerKeysFrom: message headers.
	self headers do: [:each |
		self assert: message headerKeys sorted = addedHeaderKeys sorted.

		message addHeader: each.
		addedHeaderKeys add: each key.
		self assert: message headerKeys sorted = addedHeaderKeys sorted].