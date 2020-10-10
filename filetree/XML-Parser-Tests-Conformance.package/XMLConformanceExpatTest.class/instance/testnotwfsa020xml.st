tests - exception raising
testnotwfsa020xml
	"Source file: xmltest/not-wf/sa/020.xml"

	self
		skipOrReturnWith: [^ self]
		ifSkippable: #testnotwfsa020xml.
	self
		should: [
			self
				parse: self class sourcenotwfsa020xml
				documentURI: 'not-wf/sa/020.xml']
		raise: self parserExceptions