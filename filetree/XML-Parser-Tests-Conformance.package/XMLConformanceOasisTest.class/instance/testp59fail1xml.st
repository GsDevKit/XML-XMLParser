tests - exception raising
testp59fail1xml
	"Source file: oasis/p59fail1.xml"

	self
		skipOrReturnWith: [^ self]
		ifSkippable: #testp59fail1xml.
	self
		should: [
			self
				parse: self class sourcep59fail1xml
				documentURI: 'p59fail1.xml']
		raise: self parserExceptions