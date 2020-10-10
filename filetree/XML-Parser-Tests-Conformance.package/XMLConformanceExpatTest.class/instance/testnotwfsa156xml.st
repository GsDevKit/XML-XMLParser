tests - exception raising
testnotwfsa156xml
	"Source file: xmltest/not-wf/sa/156.xml"

	self
		skipOrReturnWith: [^ self]
		ifSkippable: #testnotwfsa156xml.
	self
		should: [
			self
				parse: self class sourcenotwfsa156xml
				documentURI: 'not-wf/sa/156.xml']
		raise: self parserExceptions