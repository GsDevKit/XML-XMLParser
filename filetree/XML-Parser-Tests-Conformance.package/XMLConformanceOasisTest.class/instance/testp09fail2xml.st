tests - exception raising
testp09fail2xml
	"Source file: oasis/p09fail2.xml"

	self
		skipOrReturnWith: [^ self]
		ifSkippable: #testp09fail2xml.
	self
		should: [
			self
				parse: self class sourcep09fail2xml
				documentURI: 'p09fail2.xml']
		raise: self parserExceptions