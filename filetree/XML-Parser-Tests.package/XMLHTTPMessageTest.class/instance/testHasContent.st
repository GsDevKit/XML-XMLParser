tests
testHasContent
	| message |

	self isSupported
		ifFalse: [^ self].

	message := self newMessage.
	self deny: message hasContent.

	message content: 'test'.
	self assert: message hasContent.