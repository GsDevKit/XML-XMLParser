tests - exception raising
testnotwfnotsa005xml
	"Source file: xmltest/not-wf/not-sa/005.xml"

	self
		skipOrReturnWith: [^ self]
		ifSkippable: #testnotwfnotsa005xml.
	self
		should: [
			self
				parse: self class sourcenotwfnotsa005xml
				documentURI: 'not-wf/not-sa/005.xml']
		raise: self parserExceptions