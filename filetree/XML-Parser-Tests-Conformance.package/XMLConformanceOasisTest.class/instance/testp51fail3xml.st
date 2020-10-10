tests - exception raising
testp51fail3xml
	"Source file: oasis/p51fail3.xml"

	self
		skipOrReturnWith: [^ self]
		ifSkippable: #testp51fail3xml.
	self
		should: [
			self
				parse: self class sourcep51fail3xml
				documentURI: 'p51fail3.xml']
		raise: self parserExceptions