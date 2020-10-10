tests - exception raising
testp02fail17xml
	"Source file: oasis/p02fail17.xml"

	self
		skipOrReturnWith: [^ self]
		ifSkippable: #testp02fail17xml.
	self
		should: [
			self
				parse: self class sourcep02fail17xml
				documentURI: 'p02fail17.xml']
		raise: self parserExceptions