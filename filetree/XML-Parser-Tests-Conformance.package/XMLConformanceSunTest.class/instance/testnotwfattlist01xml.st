tests - exception raising
testnotwfattlist01xml
	"Source file: sun/not-wf/attlist01.xml"

	self
		skipOrReturnWith: [^ self]
		ifSkippable: #testnotwfattlist01xml.
	self
		should: [
			self
				parse: self class sourcenotwfattlist01xml
				documentURI: 'not-wf/attlist01.xml']
		raise: self parserExceptions