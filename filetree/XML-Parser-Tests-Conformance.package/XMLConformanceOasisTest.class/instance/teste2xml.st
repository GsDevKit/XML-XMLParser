tests - exception raising
teste2xml
	"Source file: oasis/e2.xml"

	self
		skipOrReturnWith: [^ self]
		ifSkippable: #teste2xml.
	self
		should: [
			self
				parse: self class sourcee2xml
				documentURI: 'e2.xml']
		raise: self parserExceptions