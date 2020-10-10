tests - exception raising
testinvaliddtd06xml
	"Source file: sun/invalid/dtd06.xml"

	self
		skipOrReturnWith: [^ self]
		ifSkippable: #testinvaliddtd06xml.
	self
		should: [
			self
				parse: self class sourceinvaliddtd06xml
				documentURI: 'invalid/dtd06.xml']
		raise: self parserExceptions