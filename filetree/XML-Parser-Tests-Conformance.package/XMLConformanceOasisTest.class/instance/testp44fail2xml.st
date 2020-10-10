tests - exception raising
testp44fail2xml
	"Source file: oasis/p44fail2.xml"

	self
		skipOrReturnWith: [^ self]
		ifSkippable: #testp44fail2xml.
	self
		should: [
			self
				parse: self class sourcep44fail2xml
				documentURI: 'p44fail2.xml']
		raise: self parserExceptions