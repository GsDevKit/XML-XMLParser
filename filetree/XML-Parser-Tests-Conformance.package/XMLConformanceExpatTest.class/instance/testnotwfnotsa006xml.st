tests - exception raising
testnotwfnotsa006xml
	"Source file: xmltest/not-wf/not-sa/006.xml"

	self
		skipOrReturnWith: [^ self]
		ifSkippable: #testnotwfnotsa006xml.
	self
		should: [
			self
				parse: self class sourcenotwfnotsa006xml
				documentURI: 'not-wf/not-sa/006.xml']
		raise: self parserExceptions