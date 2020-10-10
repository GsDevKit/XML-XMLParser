tests - exception raising
testnotwfsa100xml
	"Source file: xmltest/not-wf/sa/100.xml"

	self
		skipOrReturnWith: [^ self]
		ifSkippable: #testnotwfsa100xml.
	self
		should: [
			self
				parse: self class sourcenotwfsa100xml
				documentURI: 'not-wf/sa/100.xml']
		raise: self parserExceptions