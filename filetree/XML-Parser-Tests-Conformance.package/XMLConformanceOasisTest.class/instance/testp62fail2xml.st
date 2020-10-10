tests - exception raising
testp62fail2xml
	"Source file: oasis/p62fail2.xml"

	self
		skipOrReturnWith: [^ self]
		ifSkippable: #testp62fail2xml.
	self
		should: [
			self
				parse: self class sourcep62fail2xml
				documentURI: 'p62fail2.xml']
		raise: self parserExceptions