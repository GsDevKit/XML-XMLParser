tests - exception raising
testp66fail2xml
	"Source file: oasis/p66fail2.xml"

	self
		skipOrReturnWith: [^ self]
		ifSkippable: #testp66fail2xml.
	self
		should: [
			self
				parse: self class sourcep66fail2xml
				documentURI: 'p66fail2.xml']
		raise: self parserExceptions