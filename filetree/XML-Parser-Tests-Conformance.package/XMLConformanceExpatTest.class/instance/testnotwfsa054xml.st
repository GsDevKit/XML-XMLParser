tests - exception raising
testnotwfsa054xml
	"Source file: xmltest/not-wf/sa/054.xml"

	self
		skipOrReturnWith: [^ self]
		ifSkippable: #testnotwfsa054xml.
	self
		should: [
			self
				parse: self class sourcenotwfsa054xml
				documentURI: 'not-wf/sa/054.xml']
		raise: self parserExceptions