tests - exception raising
testinvalidattr08xml
	"Source file: sun/invalid/attr08.xml"

	self
		skipOrReturnWith: [^ self]
		ifSkippable: #testinvalidattr08xml.
	self
		should: [
			self
				parse: self class sourceinvalidattr08xml
				documentURI: 'invalid/attr08.xml']
		raise: self parserExceptions