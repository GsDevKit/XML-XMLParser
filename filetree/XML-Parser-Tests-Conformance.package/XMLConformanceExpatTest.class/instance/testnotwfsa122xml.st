tests - exception raising
testnotwfsa122xml
	"Source file: xmltest/not-wf/sa/122.xml"

	self
		skipOrReturnWith: [^ self]
		ifSkippable: #testnotwfsa122xml.
	self
		should: [
			self
				parse: self class sourcenotwfsa122xml
				documentURI: 'not-wf/sa/122.xml']
		raise: self parserExceptions