tests - exception raising
testp51fail5xml
	"Source file: oasis/p51fail5.xml"

	self
		skipOrReturnWith: [^ self]
		ifSkippable: #testp51fail5xml.
	self
		should: [
			self
				parse: self class sourcep51fail5xml
				documentURI: 'p51fail5.xml']
		raise: self parserExceptions