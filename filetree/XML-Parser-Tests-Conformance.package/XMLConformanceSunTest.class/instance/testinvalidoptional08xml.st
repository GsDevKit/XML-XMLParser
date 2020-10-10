tests - exception raising
testinvalidoptional08xml
	"Source file: sun/invalid/optional08.xml"

	self
		skipOrReturnWith: [^ self]
		ifSkippable: #testinvalidoptional08xml.
	self
		should: [
			self
				parse: self class sourceinvalidoptional08xml
				documentURI: 'invalid/optional08.xml']
		raise: self parserExceptions