tests - exception raising
testp53fail3xml
	"Source file: oasis/p53fail3.xml"

	self
		skipOrReturnWith: [^ self]
		ifSkippable: #testp53fail3xml.
	self
		should: [
			self
				parse: self class sourcep53fail3xml
				documentURI: 'p53fail3.xml']
		raise: self parserExceptions