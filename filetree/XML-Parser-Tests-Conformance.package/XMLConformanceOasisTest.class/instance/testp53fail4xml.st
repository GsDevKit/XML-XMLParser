tests - exception raising
testp53fail4xml
	"Source file: oasis/p53fail4.xml"

	self
		skipOrReturnWith: [^ self]
		ifSkippable: #testp53fail4xml.
	self
		should: [
			self
				parse: self class sourcep53fail4xml
				documentURI: 'p53fail4.xml']
		raise: self parserExceptions