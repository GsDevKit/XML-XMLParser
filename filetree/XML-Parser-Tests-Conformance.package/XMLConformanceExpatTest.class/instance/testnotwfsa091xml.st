tests - exception raising
testnotwfsa091xml
	"Source file: xmltest/not-wf/sa/091.xml"

	self
		skipOrReturnWith: [^ self]
		ifSkippable: #testnotwfsa091xml.
	self
		should: [
			self
				parse: self class sourcenotwfsa091xml
				documentURI: 'not-wf/sa/091.xml']
		raise: self parserExceptions