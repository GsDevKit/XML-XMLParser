tests - exception raising
testp18fail2xml
	"Source file: oasis/p18fail2.xml"

	self
		skipOrReturnWith: [^ self]
		ifSkippable: #testp18fail2xml.
	self
		should: [
			self
				parse: self class sourcep18fail2xml
				documentURI: 'p18fail2.xml']
		raise: self parserExceptions