tests - exception raising
testnotwfsa115xml
	"Source file: xmltest/not-wf/sa/115.xml"

	self
		skipOrReturnWith: [^ self]
		ifSkippable: #testnotwfsa115xml.
	self
		should: [
			self
				parse: self class sourcenotwfsa115xml
				documentURI: 'not-wf/sa/115.xml']
		raise: self parserExceptions