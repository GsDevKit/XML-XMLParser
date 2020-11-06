tests
testHeaders
	| message addedHeaders |

	self isSupported
		ifFalse: [^ self].

	message := self newMessage.
	addedHeaders := message headers.
	self
		assert: addedHeaders class == OrderedCollection;
		assert: addedHeaders = message headers;
		deny: addedHeaders == message headers.