tests - exception raising
testp03fail28xml
	"Source file: oasis/p03fail28.xml"

	self
		skipOrReturnWith: [^ self]
		ifSkippable: #testp03fail28xml.
	self
		should: [
			self
				parse: self class sourcep03fail28xml
				documentURI: 'p03fail28.xml']
		raise: self parserExceptions