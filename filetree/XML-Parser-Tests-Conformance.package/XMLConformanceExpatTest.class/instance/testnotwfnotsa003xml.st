tests - exception raising
testnotwfnotsa003xml
	"Source file: xmltest/not-wf/not-sa/003.xml"

	self
		skipOrReturnWith: [^ self]
		ifSkippable: #testnotwfnotsa003xml.
	self
		should: [
			self
				parse: self class sourcenotwfnotsa003xml
				documentURI: 'not-wf/not-sa/003.xml']
		raise: self parserExceptions