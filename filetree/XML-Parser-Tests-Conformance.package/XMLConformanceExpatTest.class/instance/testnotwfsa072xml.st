tests - exception raising
testnotwfsa072xml
	"Source file: xmltest/not-wf/sa/072.xml"

	self
		skipOrReturnWith: [^ self]
		ifSkippable: #testnotwfsa072xml.
	self
		should: [
			self
				parse: self class sourcenotwfsa072xml
				documentURI: 'not-wf/sa/072.xml']
		raise: self parserExceptions