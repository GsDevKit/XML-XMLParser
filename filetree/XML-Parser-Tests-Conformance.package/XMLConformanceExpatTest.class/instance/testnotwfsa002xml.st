tests - exception raising
testnotwfsa002xml
	"Source file: xmltest/not-wf/sa/002.xml"

	self
		skipOrReturnWith: [^ self]
		ifSkippable: #testnotwfsa002xml.
	self
		should: [
			self
				parse: self class sourcenotwfsa002xml
				documentURI: 'not-wf/sa/002.xml']
		raise: self parserExceptions