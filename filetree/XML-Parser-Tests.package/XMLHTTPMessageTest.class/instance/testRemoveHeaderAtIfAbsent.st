tests
testRemoveHeaderAtIfAbsent
	| message addedHeaders addedHeaderKeys |

	self isSupported
		ifFalse: [^ self].

	message := self newMessage.
	addedHeaders := message headers.
	self headers do: [:each |
		message addHeader: each.
		addedHeaders addLast: each].
	addedHeaderKeys := (addedHeaders collect: [:each | each key]) asSet.
	addedHeaderKeys do: [:each |
		self assert:
			(message
				removeHeaderAt: each
				ifAbsent: [self fail]) sorted =
					(self
						headerValuesAt: each
						from: addedHeaders) sorted.
		self assert:
			(message
				removeHeaderAt: each
				ifAbsent: [#absent]) = #absent].