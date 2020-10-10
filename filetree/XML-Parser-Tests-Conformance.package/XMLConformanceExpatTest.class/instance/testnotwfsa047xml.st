tests - exception raising
testnotwfsa047xml
	"Source file: xmltest/not-wf/sa/047.xml"

	self
		skipOrReturnWith: [^ self]
		ifSkippable: #testnotwfsa047xml.
	self
		should: [
			self
				parse: self class sourcenotwfsa047xml
				documentURI: 'not-wf/sa/047.xml']
		raise: self parserExceptions