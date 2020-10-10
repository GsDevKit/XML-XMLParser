tests - exception raising
testp02fail11xml
	"Source file: oasis/p02fail11.xml"

	self
		skipOrReturnWith: [^ self]
		ifSkippable: #testp02fail11xml.
	self
		should: [
			self
				parse: self class sourcep02fail11xml
				documentURI: 'p02fail11.xml']
		raise: self parserExceptions