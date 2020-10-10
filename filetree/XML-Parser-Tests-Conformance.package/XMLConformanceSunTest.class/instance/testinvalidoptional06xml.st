tests - exception raising
testinvalidoptional06xml
	"Source file: sun/invalid/optional06.xml"

	self
		skipOrReturnWith: [^ self]
		ifSkippable: #testinvalidoptional06xml.
	self
		should: [
			self
				parse: self class sourceinvalidoptional06xml
				documentURI: 'invalid/optional06.xml']
		raise: self parserExceptions