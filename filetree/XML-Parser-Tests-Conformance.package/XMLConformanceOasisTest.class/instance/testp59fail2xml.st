tests - exception raising
testp59fail2xml
	"Source file: oasis/p59fail2.xml"

	self
		skipOrReturnWith: [^ self]
		ifSkippable: #testp59fail2xml.
	self
		should: [
			self
				parse: self class sourcep59fail2xml
				documentURI: 'p59fail2.xml']
		raise: self parserExceptions