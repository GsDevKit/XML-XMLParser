tests - exception raising
testp45fail2xml
	"Source file: oasis/p45fail2.xml"

	self
		skipOrReturnWith: [^ self]
		ifSkippable: #testp45fail2xml.
	self
		should: [
			self
				parse: self class sourcep45fail2xml
				documentURI: 'p45fail2.xml']
		raise: self parserExceptions