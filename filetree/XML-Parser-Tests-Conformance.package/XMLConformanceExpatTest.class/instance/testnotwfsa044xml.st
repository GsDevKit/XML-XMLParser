tests - exception raising
testnotwfsa044xml
	"Source file: xmltest/not-wf/sa/044.xml"

	self
		skipOrReturnWith: [^ self]
		ifSkippable: #testnotwfsa044xml.
	self
		should: [
			self
				parse: self class sourcenotwfsa044xml
				documentURI: 'not-wf/sa/044.xml']
		raise: self parserExceptions