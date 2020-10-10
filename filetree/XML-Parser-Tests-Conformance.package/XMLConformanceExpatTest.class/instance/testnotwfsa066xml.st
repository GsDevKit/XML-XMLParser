tests - exception raising
testnotwfsa066xml
	"Source file: xmltest/not-wf/sa/066.xml"

	self
		skipOrReturnWith: [^ self]
		ifSkippable: #testnotwfsa066xml.
	self
		should: [
			self
				parse: self class sourcenotwfsa066xml
				documentURI: 'not-wf/sa/066.xml']
		raise: self parserExceptions