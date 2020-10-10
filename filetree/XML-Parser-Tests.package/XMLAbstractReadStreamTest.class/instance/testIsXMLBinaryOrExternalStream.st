tests
testIsXMLBinaryOrExternalStream
	| stream |

	stream := self newStream.
	self assert: stream isXMLBinaryOrExternalStream = stream isBinary.