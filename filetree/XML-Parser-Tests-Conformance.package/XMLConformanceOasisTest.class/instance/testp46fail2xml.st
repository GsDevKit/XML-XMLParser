tests - exception raising
testp46fail2xml
	"Source file: oasis/p46fail2.xml"

	self
		skipOrReturnWith: [^ self]
		ifSkippable: #testp46fail2xml.
	self
		should: [
			self
				parse: self class sourcep46fail2xml
				documentURI: 'p46fail2.xml']
		raise: self parserExceptions