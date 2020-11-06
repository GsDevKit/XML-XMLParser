tests
testIsXMLBinaryOrExternalStream
	| streamAdapter |

	streamAdapter := self newStreamAdapter.
	self assert: streamAdapter isXMLBinaryOrExternalStream = streamAdapter isBinary.