tests - exception raising
testp01fail4xml
	"Source file: oasis/p01fail4.xml"

	self
		skipOrReturnWith: [^ self]
		ifSkippable: #testp01fail4xml.
	self
		should: [
			self
				parse: self class sourcep01fail4xml
				documentURI: 'p01fail4.xml']
		raise: self parserExceptions