tests - exception raising
testp02fail18xml
	"Source file: oasis/p02fail18.xml"

	self
		skipOrReturnWith: [^ self]
		ifSkippable: #testp02fail18xml.
	self
		should: [
			self
				parse: self class sourcep02fail18xml
				documentURI: 'p02fail18.xml']
		raise: self parserExceptions