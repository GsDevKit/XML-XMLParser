tests - exception raising
testinvalidoptional10xml
	"Source file: sun/invalid/optional10.xml"

	self
		skipOrReturnWith: [^ self]
		ifSkippable: #testinvalidoptional10xml.
	self
		should: [
			self
				parse: self class sourceinvalidoptional10xml
				documentURI: 'invalid/optional10.xml']
		raise: self parserExceptions