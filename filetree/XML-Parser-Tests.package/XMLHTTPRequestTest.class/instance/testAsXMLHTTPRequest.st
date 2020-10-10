tests
testAsXMLHTTPRequest
	| request |

	self isSupported
		ifFalse: [^ self].

	request := self newMessage.
	self assert: request asXMLHTTPRequest == request.