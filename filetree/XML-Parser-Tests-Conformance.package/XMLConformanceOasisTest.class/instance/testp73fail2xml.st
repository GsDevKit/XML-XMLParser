tests - exception raising
testp73fail2xml
	"Source file: oasis/p73fail2.xml"

	self
		skipOrReturnWith: [^ self]
		ifSkippable: #testp73fail2xml.
	self
		should: [
			self
				parse: self class sourcep73fail2xml
				documentURI: 'p73fail2.xml']
		raise: self parserExceptions