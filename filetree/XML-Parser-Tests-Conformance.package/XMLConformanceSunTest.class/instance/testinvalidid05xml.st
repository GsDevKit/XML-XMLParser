tests - exception raising
testinvalidid05xml
	"Source file: sun/invalid/id05.xml"

	self
		skipOrReturnWith: [^ self]
		ifSkippable: #testinvalidid05xml.
	self
		should: [
			self
				parse: self class sourceinvalidid05xml
				documentURI: 'invalid/id05.xml']
		raise: self parserExceptions