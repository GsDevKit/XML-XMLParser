tests - exception raising
testnotwfsa130xml
	"Source file: xmltest/not-wf/sa/130.xml"

	self
		skipOrReturnWith: [^ self]
		ifSkippable: #testnotwfsa130xml.
	self
		should: [
			self
				parse: self class sourcenotwfsa130xml
				documentURI: 'not-wf/sa/130.xml']
		raise: self parserExceptions