tests - exception raising
testnotwfsa068xml
	"Source file: xmltest/not-wf/sa/068.xml"

	self
		skipOrReturnWith: [^ self]
		ifSkippable: #testnotwfsa068xml.
	self
		should: [
			self
				parse: self class sourcenotwfsa068xml
				documentURI: 'not-wf/sa/068.xml']
		raise: self parserExceptions