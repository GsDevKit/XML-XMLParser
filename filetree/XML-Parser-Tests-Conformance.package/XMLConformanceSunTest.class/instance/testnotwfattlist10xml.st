tests - exception raising
testnotwfattlist10xml
	"Source file: sun/not-wf/attlist10.xml"

	self
		skipOrReturnWith: [^ self]
		ifSkippable: #testnotwfattlist10xml.
	self
		should: [
			self
				parse: self class sourcenotwfattlist10xml
				documentURI: 'not-wf/attlist10.xml']
		raise: self parserExceptions