tests - exception raising
testnotwfsa155xml
	"Source file: xmltest/not-wf/sa/155.xml"

	self
		skipOrReturnWith: [^ self]
		ifSkippable: #testnotwfsa155xml.
	self
		should: [
			self
				parse: self class sourcenotwfsa155xml
				documentURI: 'not-wf/sa/155.xml']
		raise: self parserExceptions