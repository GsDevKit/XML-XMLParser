tests - exception raising
testp03fail7xml
	"Source file: oasis/p03fail7.xml"

	self
		skipOrReturnWith: [^ self]
		ifSkippable: #testp03fail7xml.
	self
		should: [
			self
				parse: self class sourcep03fail7xml
				documentURI: 'p03fail7.xml']
		raise: self parserExceptions