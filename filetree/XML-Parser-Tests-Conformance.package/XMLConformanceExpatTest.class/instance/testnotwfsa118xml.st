tests - exception raising
testnotwfsa118xml
	"Source file: xmltest/not-wf/sa/118.xml"

	self
		skipOrReturnWith: [^ self]
		ifSkippable: #testnotwfsa118xml.
	self
		should: [
			self
				parse: self class sourcenotwfsa118xml
				documentURI: 'not-wf/sa/118.xml']
		raise: self parserExceptions