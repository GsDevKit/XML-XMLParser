tests - exception raising
testnotwfsa165xml
	"Source file: xmltest/not-wf/sa/165.xml"

	self
		skipOrReturnWith: [^ self]
		ifSkippable: #testnotwfsa165xml.
	self
		should: [
			self
				parse: self class sourcenotwfsa165xml
				documentURI: 'not-wf/sa/165.xml']
		raise: self parserExceptions