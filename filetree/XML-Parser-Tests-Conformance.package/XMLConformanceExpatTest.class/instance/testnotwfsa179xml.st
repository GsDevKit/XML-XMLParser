tests - exception raising
testnotwfsa179xml
	"Source file: xmltest/not-wf/sa/179.xml"

	self
		skipOrReturnWith: [^ self]
		ifSkippable: #testnotwfsa179xml.
	self
		should: [
			self
				parse: self class sourcenotwfsa179xml
				documentURI: 'not-wf/sa/179.xml']
		raise: self parserExceptions