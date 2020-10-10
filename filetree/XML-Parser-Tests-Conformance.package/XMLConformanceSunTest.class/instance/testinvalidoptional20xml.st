tests - exception raising
testinvalidoptional20xml
	"Source file: sun/invalid/optional20.xml"

	self
		skipOrReturnWith: [^ self]
		ifSkippable: #testinvalidoptional20xml.
	self
		should: [
			self
				parse: self class sourceinvalidoptional20xml
				documentURI: 'invalid/optional20.xml']
		raise: self parserExceptions