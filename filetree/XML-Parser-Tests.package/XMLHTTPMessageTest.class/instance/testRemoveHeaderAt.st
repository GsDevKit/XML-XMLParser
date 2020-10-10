tests
testRemoveHeaderAt
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
			(message removeHeaderAt: each) sorted =
				(self
					headerValuesAt: each
					from: addedHeaders) sorted.
		self
			should: [message removeHeaderAt: each]
			raise: XMLHTTPException].