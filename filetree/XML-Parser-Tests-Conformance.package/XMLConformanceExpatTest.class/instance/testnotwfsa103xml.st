tests - exception raising
testnotwfsa103xml
	"Source file: xmltest/not-wf/sa/103.xml"

	self
		skipOrReturnWith: [^ self]
		ifSkippable: #testnotwfsa103xml.
	self
		should: [
			self
				parse: self class sourcenotwfsa103xml
				documentURI: 'not-wf/sa/103.xml']
		raise: self parserExceptions