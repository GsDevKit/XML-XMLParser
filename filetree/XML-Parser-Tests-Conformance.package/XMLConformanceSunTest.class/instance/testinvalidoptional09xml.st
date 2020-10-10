tests - exception raising
testinvalidoptional09xml
	"Source file: sun/invalid/optional09.xml"

	self
		skipOrReturnWith: [^ self]
		ifSkippable: #testinvalidoptional09xml.
	self
		should: [
			self
				parse: self class sourceinvalidoptional09xml
				documentURI: 'invalid/optional09.xml']
		raise: self parserExceptions