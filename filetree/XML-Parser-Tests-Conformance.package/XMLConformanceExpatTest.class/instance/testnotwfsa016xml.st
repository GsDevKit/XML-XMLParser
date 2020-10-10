tests - exception raising
testnotwfsa016xml
	"Source file: xmltest/not-wf/sa/016.xml"

	self
		skipOrReturnWith: [^ self]
		ifSkippable: #testnotwfsa016xml.
	self
		should: [
			self
				parse: self class sourcenotwfsa016xml
				documentURI: 'not-wf/sa/016.xml']
		raise: self parserExceptions