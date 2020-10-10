tests - exception raising
testinvalidid09xml
	"Source file: sun/invalid/id09.xml"

	self
		skipOrReturnWith: [^ self]
		ifSkippable: #testinvalidid09xml.
	self
		should: [
			self
				parse: self class sourceinvalidid09xml
				documentURI: 'invalid/id09.xml']
		raise: self parserExceptions