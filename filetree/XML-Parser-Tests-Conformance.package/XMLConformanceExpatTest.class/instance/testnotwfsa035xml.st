tests - exception raising
testnotwfsa035xml
	"Source file: xmltest/not-wf/sa/035.xml"

	self
		skipOrReturnWith: [^ self]
		ifSkippable: #testnotwfsa035xml.
	self
		should: [
			self
				parse: self class sourcenotwfsa035xml
				documentURI: 'not-wf/sa/035.xml']
		raise: self parserExceptions