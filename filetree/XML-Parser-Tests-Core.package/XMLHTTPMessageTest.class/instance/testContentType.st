tests
testContentType
	| message firstType secondType |

	self isSupported
		ifFalse: [^ self].

	message := self newMessage.
	firstType :=
		XMLHTTPMIMEType
			mainType: 'application'
			subType: 'xml'.
	secondType :=
		XMLHTTPMIMEType
			mainType: 'text'
			subType: 'html'.
	self
		assert: message contentType isNil;
		assert: (message contentType: firstType) == message;
		assert: message contentType = firstType;
		deny: message contentType = secondType;
		assert: (message contentType: nil) == message;
		assert: message contentType isNil;
		assert: (message contentType: nil) == message;
		assert: message contentType isNil.

	message
		headerAt: 'Content-Type'
		put: secondType asString.
	self
		assert: message contentType = secondType;
		deny: message contentType = firstType.

	message removeHeaderAt: 'Content-Type'.
	self assert: message contentType isNil.