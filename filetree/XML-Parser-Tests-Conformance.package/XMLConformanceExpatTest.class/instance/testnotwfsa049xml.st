tests - exception raising
testnotwfsa049xml
	"Source file: xmltest/not-wf/sa/049.xml"

	self
		skipOrReturnWith: [^ self]
		ifSkippable: #testnotwfsa049xml.
	self
		should: [
			self
				parse: self class sourcenotwfsa049xml
				documentURI: 'not-wf/sa/049.xml']
		raise: self parserExceptions