tests - exception raising
testnotwfsa150xml
	"Source file: xmltest/not-wf/sa/150.xml"

	self
		skipOrReturnWith: [^ self]
		ifSkippable: #testnotwfsa150xml.
	self
		should: [
			self
				parse: self class sourcenotwfsa150xml
				documentURI: 'not-wf/sa/150.xml']
		raise: self parserExceptions