tests - exception raising
testp03fail26xml
	"Source file: oasis/p03fail26.xml"

	self
		skipOrReturnWith: [^ self]
		ifSkippable: #testp03fail26xml.
	self
		should: [
			self
				parse: self class sourcep03fail26xml
				documentURI: 'p03fail26.xml']
		raise: self parserExceptions