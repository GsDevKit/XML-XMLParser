tests - exception raising
testnotwfattlist07xml
	"Source file: sun/not-wf/attlist07.xml"

	self
		skipOrReturnWith: [^ self]
		ifSkippable: #testnotwfattlist07xml.
	self
		should: [
			self
				parse: self class sourcenotwfattlist07xml
				documentURI: 'not-wf/attlist07.xml']
		raise: self parserExceptions