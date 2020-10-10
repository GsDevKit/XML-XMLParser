tests - exception raising
testp51fail2xml
	"Source file: oasis/p51fail2.xml"

	self
		skipOrReturnWith: [^ self]
		ifSkippable: #testp51fail2xml.
	self
		should: [
			self
				parse: self class sourcep51fail2xml
				documentURI: 'p51fail2.xml']
		raise: self parserExceptions