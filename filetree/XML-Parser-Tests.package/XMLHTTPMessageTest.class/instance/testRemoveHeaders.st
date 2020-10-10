tests
testRemoveHeaders
	| message empty |

	self isSupported
		ifFalse: [^ self].

	message := self newMessage.
	empty := OrderedCollection new.
	self assert: message removeHeaders == message.
	self
		assertMessage: message
		hasHeaders: empty.

	self headers do: [:each |
		message addHeader: each].
	self
		assertMessage: message
		hasHeaders: self headers.
	self assert: message removeHeaders == message.
	self
		assertMessage: message
		hasHeaders: empty.