tests
testHeaderAt
	| message addedHeaderDictionary |

	self isSupported
		ifFalse: [^ self].

	message := self newMessage.
	addedHeaderDictionary := self headerDictionaryFrom: message headers.
	self headers do: [:each |
		self assert:
			(message headerAt: each key) =
				(addedHeaderDictionary
					at: each key
					ifAbsent: ['']).

		message
			headerAt: each key
			put: each value.
		addedHeaderDictionary add: each.
		self assert: (message headerAt: each key) = each value].

	self headers do: [:each |
		message addHeader: each].
	addedHeaderDictionary keysAndValuesDo: [:key :value |
		self assert: (message headerAt: key) = value].