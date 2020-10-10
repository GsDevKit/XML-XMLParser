tests - exception raising
testnotwfsa051xml
	"Source file: xmltest/not-wf/sa/051.xml"

	self
		skipOrReturnWith: [^ self]
		ifSkippable: #testnotwfsa051xml.
	self
		should: [
			self
				parse: self class sourcenotwfsa051xml
				documentURI: 'not-wf/sa/051.xml']
		raise: self parserExceptions