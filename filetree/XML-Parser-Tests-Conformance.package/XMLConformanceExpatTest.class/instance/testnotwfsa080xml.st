tests - exception raising
testnotwfsa080xml
	"Source file: xmltest/not-wf/sa/080.xml"

	self
		skipOrReturnWith: [^ self]
		ifSkippable: #testnotwfsa080xml.
	self
		should: [
			self
				parse: self class sourcenotwfsa080xml
				documentURI: 'not-wf/sa/080.xml']
		raise: self parserExceptions