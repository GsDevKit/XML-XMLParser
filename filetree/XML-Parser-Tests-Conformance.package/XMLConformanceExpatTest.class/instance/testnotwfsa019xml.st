tests - exception raising
testnotwfsa019xml
	"Source file: xmltest/not-wf/sa/019.xml"

	self
		skipOrReturnWith: [^ self]
		ifSkippable: #testnotwfsa019xml.
	self
		should: [
			self
				parse: self class sourcenotwfsa019xml
				documentURI: 'not-wf/sa/019.xml']
		raise: self parserExceptions