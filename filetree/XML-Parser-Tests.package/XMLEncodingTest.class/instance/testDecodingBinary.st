tests
testDecodingBinary
	| source binarySource parser stream |

	source := self sourceXML.
	binarySource := XMLStreamAdapterTest binaryFrom: source.
	parser := (SAXHandler on: binarySource) parser.
	stream := parser tokenizer streamReader stream.
	self
		assert: stream isXMLConvertingStreamAdapter;
		assert: stream hasNullStreamConverter;
		assert: stream upToEnd equals: source.