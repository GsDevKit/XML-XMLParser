tests
testHasHeaders
	| message |

	self isSupported
		ifFalse: [^ self].

	message := self newMessage.
	self assert: message hasHeaders = message headers notEmpty.

	message removeHeaders.
	self deny: message hasHeaders.

	message addHeader: self headers first.
	self assert: message hasHeaders.