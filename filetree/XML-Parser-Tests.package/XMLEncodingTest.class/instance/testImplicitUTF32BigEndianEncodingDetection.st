tests
testImplicitUTF32BigEndianEncodingDetection
	| document |

	self
		shouldnt: [
			document :=
				XMLDOMParser parse:
					(self convertableStreamOn:
						(self asciiToUTF32BE: self sourceXML))]
		raise: XMLParserException.
	self assertIsDecodedSourceXMLDocument: document.
	self
		should: [
			(SAXHandler on:
				(self convertableStreamOn:
					(self asciiToUTF32BE: self sourceXML)))
					decodesCharacters: false;
					parseDocument]
		raise: XMLParserException.