tests - exception raising
testinvalidutf16bxml
	"Source file: sun/invalid/utf16b.xml"

	self
		skipOrReturnWith: [^ self]
		ifSkippable: #testinvalidutf16bxml.
	self
		should: [
			self
				parse: self class sourceinvalidutf16bxml
				documentURI: 'invalid/utf16b.xml']
		raise: self parserExceptions