tests
testAsRetrievableResource
	(XMLFileHandle hasSupportedImplementation
		and: [XMLHTTPRequest hasSupportedImplementation])
		ifFalse: [^ self].

	self allURIStringsDo: [:each | | uri retrievableResource |
		uri := each asXMLURI.
		"other types of URIs may not be retrievable"
		(uri isLocal
			or: [uri isHTTP])
			ifTrue: [
				retrievableResource := uri asRetrievableResource.
				uri isLocal
					ifTrue: [
						self assert:
							retrievableResource class ==
								XMLFileHandle implementation.
						self assert: retrievableResource path = uri path]
					ifFalse: [
						self assert:
							retrievableResource class ==
								XMLHTTPRequest implementation.
						self assert: retrievableResource url = uri printString]]].