tests - exception raising
testnotwfsa152xml
	"Source file: xmltest/not-wf/sa/152.xml"

	self
		skipOrReturnWith: [^ self]
		ifSkippable: #testnotwfsa152xml.
	self
		should: [
			self
				parse: self class sourcenotwfsa152xml
				documentURI: 'not-wf/sa/152.xml']
		raise: self parserExceptions