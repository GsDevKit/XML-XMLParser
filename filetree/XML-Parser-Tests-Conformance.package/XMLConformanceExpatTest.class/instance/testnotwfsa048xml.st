tests - exception raising
testnotwfsa048xml
	"Source file: xmltest/not-wf/sa/048.xml"

	self
		skipOrReturnWith: [^ self]
		ifSkippable: #testnotwfsa048xml.
	self
		should: [
			self
				parse: self class sourcenotwfsa048xml
				documentURI: 'not-wf/sa/048.xml']
		raise: self parserExceptions