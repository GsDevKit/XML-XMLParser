tests
testStatusLine
	| response |

	self isSupported
		ifFalse: [^ self].

	response := self newMessage.
	self assert: response statusLine = 'HTTP/1.1 200 OK'.

	response statusCode: 404.
	self assert: response statusLine = 'HTTP/1.1 404 Not Found'.

	response protocol: 'HTTP/1.0'.
	self assert: response statusLine = 'HTTP/1.0 404 Not Found'.