tests - exception raising
testp26fail2xml
	"Source file: oasis/p26fail2.xml"

	self
		skipOrReturnWith: [^ self]
		ifSkippable: #testp26fail2xml.
	self
		should: [
			self
				parse: self class sourcep26fail2xml
				documentURI: 'p26fail2.xml']
		raise: self parserExceptions