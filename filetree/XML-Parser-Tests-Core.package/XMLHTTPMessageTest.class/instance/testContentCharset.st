tests
testContentCharset
	| message firstType secondType |

	self isSupported
		ifFalse: [^ self].

	message := self newMessage.
	firstType :=
		XMLHTTPMIMEType
			mainType: 'application'
			subType: 'xml'
			parameters: (OrderedCollection with: 'charset' -> 'utf8').
	secondType :=
		XMLHTTPMIMEType
			mainType: 'text'
			subType: 'html'.
	self
		assert: message contentType isNil;
		assert: (message contentType: firstType) == message;
		assert: message contentCharset = firstType charset;
		assert: (message contentType: secondType) == message;
		assert: message contentCharset = secondType charset;
		assert: (message contentType: nil) == message;
		assert: message contentCharset = XMLHTTPMIMEType defaultCharset.

	message
		headerAt: 'Content-Type'
		put: firstType asString.
	self assert: message contentCharset = firstType charset.

	message removeHeaderAt: 'Content-Type'.
	self assert: message contentCharset = XMLHTTPMIMEType defaultCharset.