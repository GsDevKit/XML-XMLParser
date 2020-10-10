tests - exception raising
testp43fail2xml
	"Source file: oasis/p43fail2.xml"

	self
		skipOrReturnWith: [^ self]
		ifSkippable: #testp43fail2xml.
	self
		should: [
			self
				parse: self class sourcep43fail2xml
				documentURI: 'p43fail2.xml']
		raise: self parserExceptions