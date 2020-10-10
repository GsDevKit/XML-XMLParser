tests
testStatusDescription
	| response |

	self isSupported
		ifFalse: [^ self].

	response := self newMessage.
	self assert: response statusDescription = 'OK'.
	
	response statusCode: 404.
	self assert: response statusDescription = 'Not Found'.