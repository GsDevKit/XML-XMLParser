tests - exception raising
testp68fail3xml
	"Source file: oasis/p68fail3.xml"

	self
		skipOrReturnWith: [^ self]
		ifSkippable: #testp68fail3xml.
	self
		should: [
			self
				parse: self class sourcep68fail3xml
				documentURI: 'p68fail3.xml']
		raise: self parserExceptions