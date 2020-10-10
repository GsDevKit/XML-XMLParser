tests - exception raising
testp14fail2xml
	"Source file: oasis/p14fail2.xml"

	self
		skipOrReturnWith: [^ self]
		ifSkippable: #testp14fail2xml.
	self
		should: [
			self
				parse: self class sourcep14fail2xml
				documentURI: 'p14fail2.xml']
		raise: self parserExceptions