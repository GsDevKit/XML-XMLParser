tests
testIsXMLBinaryOrExternalStream
	| streamReader |

	streamReader := self newStreamReaderOnSourceXML.
	self assert: streamReader isXMLBinaryOrExternalStream = streamReader isBinary.