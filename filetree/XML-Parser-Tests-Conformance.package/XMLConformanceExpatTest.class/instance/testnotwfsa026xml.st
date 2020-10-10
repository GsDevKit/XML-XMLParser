tests - exception raising
testnotwfsa026xml
	"Source file: xmltest/not-wf/sa/026.xml"

	self
		skipOrReturnWith: [^ self]
		ifSkippable: #testnotwfsa026xml.
	self
		should: [
			self
				parse: self class sourcenotwfsa026xml
				documentURI: 'not-wf/sa/026.xml']
		raise: self parserExceptions