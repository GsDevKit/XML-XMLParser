tests - exception raising
testp39fail4xml
	"Source file: oasis/p39fail4.xml"

	self
		skipOrReturnWith: [^ self]
		ifSkippable: #testp39fail4xml.
	self
		should: [
			self
				parse: self class sourcep39fail4xml
				documentURI: 'p39fail4.xml']
		raise: self parserExceptions