tests - exception raising
testnotwfsa015xml
	"Source file: xmltest/not-wf/sa/015.xml"

	self
		skipOrReturnWith: [^ self]
		ifSkippable: #testnotwfsa015xml.
	self
		should: [
			self
				parse: self class sourcenotwfsa015xml
				documentURI: 'not-wf/sa/015.xml']
		raise: self parserExceptions