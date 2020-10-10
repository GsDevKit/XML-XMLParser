tests - exception raising
testnotwfsa127xml
	"Source file: xmltest/not-wf/sa/127.xml"

	self
		skipOrReturnWith: [^ self]
		ifSkippable: #testnotwfsa127xml.
	self
		should: [
			self
				parse: self class sourcenotwfsa127xml
				documentURI: 'not-wf/sa/127.xml']
		raise: self parserExceptions