tests - exception raising
testnotwfsa029xml
	"Source file: xmltest/not-wf/sa/029.xml"

	self
		skipOrReturnWith: [^ self]
		ifSkippable: #testnotwfsa029xml.
	self
		should: [
			self
				parse: self class sourcenotwfsa029xml
				documentURI: 'not-wf/sa/029.xml']
		raise: self parserExceptions