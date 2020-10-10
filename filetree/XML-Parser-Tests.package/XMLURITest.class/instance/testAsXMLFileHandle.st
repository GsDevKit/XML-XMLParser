tests
testAsXMLFileHandle
	XMLFileHandle hasSupportedImplementation
		ifFalse: [^ self].

	self allURIStringsDo: [:each | | uri fileHandle |
		uri := each asXMLURI.
		uri isLocal
			ifTrue: [
				fileHandle := uri asXMLFileHandle.
				self
					assert: fileHandle class == XMLFileHandle implementation;
					assert: fileHandle path = uri path]
			ifFalse: [
				self
					should: [uri asXMLFileHandle]
					raise: XMLFileException]].