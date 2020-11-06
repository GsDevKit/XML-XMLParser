tests
testHeaderKeysDo
	| message addedHeaders |

	self isSupported
		ifFalse: [^ self].

	message := self newMessage.
	addedHeaders := message headers.
	self
		xmlShould: [:block | message headerKeysDo: block]
		unorderedEnumerate: (self headerKeysFrom: addedHeaders).

	self headers do: [:each |
		message addHeader: each.
		addedHeaders addLast: each].
	self
		xmlShould: [:block | message headerKeysDo: block]
		unorderedEnumerate: (self headerKeysFrom: addedHeaders).