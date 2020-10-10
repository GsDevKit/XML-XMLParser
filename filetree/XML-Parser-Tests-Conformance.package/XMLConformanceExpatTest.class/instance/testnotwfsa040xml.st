tests - exception raising
testnotwfsa040xml
	"Source file: xmltest/not-wf/sa/040.xml"

	self
		skipOrReturnWith: [^ self]
		ifSkippable: #testnotwfsa040xml.
	self
		should: [
			self
				parse: self class sourcenotwfsa040xml
				documentURI: 'not-wf/sa/040.xml']
		raise: self parserExceptions