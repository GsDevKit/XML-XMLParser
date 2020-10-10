tests - exception raising
testnotwfsa162xml
	"Source file: xmltest/not-wf/sa/162.xml"

	self
		skipOrReturnWith: [^ self]
		ifSkippable: #testnotwfsa162xml.
	self
		should: [
			self
				parse: self class sourcenotwfsa162xml
				documentURI: 'not-wf/sa/162.xml']
		raise: self parserExceptions