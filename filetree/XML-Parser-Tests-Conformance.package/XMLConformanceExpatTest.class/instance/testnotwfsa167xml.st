tests - exception raising
testnotwfsa167xml
	"Source file: xmltest/not-wf/sa/167.xml"

	self
		skipOrReturnWith: [^ self]
		ifSkippable: #testnotwfsa167xml.
	self
		should: [
			self
				parse: self class sourcenotwfsa167xml
				documentURI: 'not-wf/sa/167.xml']
		raise: self parserExceptions