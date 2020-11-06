tests
testAsXMLHTTPRequest
	XMLHTTPRequest hasSupportedImplementation
		ifFalse: [^ self].

	self allURIStringsDo: [:each | | uri request |
		uri := each asXMLURI.
		(uri isRelative
			or: [uri isHTTP])
			ifTrue: [
				request := uri asXMLHTTPRequest.
				self
					assert: request class == XMLHTTPRequest implementation;
					assert: request url = uri printString]
			ifFalse: [
				"do not assume HTTPS is supported even if HTTP is"
				uri isHTTPS
					ifFalse: [
						self
							should: [uri asXMLHTTPRequest]
							raise: XMLHTTPException]]].