tests - exception raising
testnotwfsa139xml
	"Source file: xmltest/not-wf/sa/139.xml"

	self
		skipOrReturnWith: [^ self]
		ifSkippable: #testnotwfsa139xml.
	self
		should: [
			self
				parse: self class sourcenotwfsa139xml
				documentURI: 'not-wf/sa/139.xml']
		raise: self parserExceptions