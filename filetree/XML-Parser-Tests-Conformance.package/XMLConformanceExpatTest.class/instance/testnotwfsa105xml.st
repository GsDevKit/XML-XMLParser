tests - exception raising
testnotwfsa105xml
	"Source file: xmltest/not-wf/sa/105.xml"

	self
		skipOrReturnWith: [^ self]
		ifSkippable: #testnotwfsa105xml.
	self
		should: [
			self
				parse: self class sourcenotwfsa105xml
				documentURI: 'not-wf/sa/105.xml']
		raise: self parserExceptions