tests - exception raising
testnotwfsa112xml
	"Source file: xmltest/not-wf/sa/112.xml"

	self
		skipOrReturnWith: [^ self]
		ifSkippable: #testnotwfsa112xml.
	self
		should: [
			self
				parse: self class sourcenotwfsa112xml
				documentURI: 'not-wf/sa/112.xml']
		raise: self parserExceptions