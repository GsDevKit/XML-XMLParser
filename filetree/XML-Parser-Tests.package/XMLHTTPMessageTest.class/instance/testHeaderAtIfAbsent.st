tests
testHeaderAtIfAbsent
	| message addedHeaderDictionary |

	self isSupported
		ifFalse: [^ self].

	message := self newMessage.
	addedHeaderDictionary := self headerDictionaryFrom: message headers.
	self headers do: [:each |
		self assert:
			(message
				headerAt: each key
				ifAbsent: [#absent]) =
				(addedHeaderDictionary
					at: each key
					ifAbsent: [#absent]).

		message
			headerAt: each key
			put: each value.
		addedHeaderDictionary add: each.
		self assert:
			(message
				headerAt: each key
				ifAbsent: [self fail]) = each value].

	self headers do: [:each |
		message addHeader: each].
	addedHeaderDictionary keysAndValuesDo: [:key :value |
		self assert:
			(message
				headerAt: key
				ifAbsent: [self fail]) = value].