tests
testHeaderKeysAndValuesDo
	| message addedHeaders |

	self isSupported
		ifFalse: [^ self].

	message := self newMessage.
	addedHeaders := message headers.
	self
		xmlShould: [:block | message headerKeysAndValuesDo: block]
		unorderedEnumerate: (self headerKeysFrom: addedHeaders)
		and: (self headerValuesFrom: addedHeaders).

	self headers do: [:each |
		message addHeader: each.
		addedHeaders addLast: each].
	self
		xmlShould: [:block | message headerKeysAndValuesDo: block]
		unorderedEnumerate: (self headerKeysFrom: addedHeaders)
		and: (self headerValuesFrom: addedHeaders).