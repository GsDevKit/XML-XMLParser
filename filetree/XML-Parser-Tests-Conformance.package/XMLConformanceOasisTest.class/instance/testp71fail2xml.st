tests - exception raising
testp71fail2xml
	"Source file: oasis/p71fail2.xml"

	self
		skipOrReturnWith: [^ self]
		ifSkippable: #testp71fail2xml.
	self
		should: [
			self
				parse: self class sourcep71fail2xml
				documentURI: 'p71fail2.xml']
		raise: self parserExceptions