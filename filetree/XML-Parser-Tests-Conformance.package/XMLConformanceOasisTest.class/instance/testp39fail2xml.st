tests - exception raising
testp39fail2xml
	"Source file: oasis/p39fail2.xml"

	self
		skipOrReturnWith: [^ self]
		ifSkippable: #testp39fail2xml.
	self
		should: [
			self
				parse: self class sourcep39fail2xml
				documentURI: 'p39fail2.xml']
		raise: self parserExceptions