tests - exception raising
testnotwfsa012xml
	"Source file: xmltest/not-wf/sa/012.xml"

	self
		skipOrReturnWith: [^ self]
		ifSkippable: #testnotwfsa012xml.
	self
		should: [
			self
				parse: self class sourcenotwfsa012xml
				documentURI: 'not-wf/sa/012.xml']
		raise: self parserExceptions