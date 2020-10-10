tests - exception raising
testnotwfsa173xml
	"Source file: xmltest/not-wf/sa/173.xml"

	self
		skipOrReturnWith: [^ self]
		ifSkippable: #testnotwfsa173xml.
	self
		should: [
			self
				parse: self class sourcenotwfsa173xml
				documentURI: 'not-wf/sa/173.xml']
		raise: self parserExceptions