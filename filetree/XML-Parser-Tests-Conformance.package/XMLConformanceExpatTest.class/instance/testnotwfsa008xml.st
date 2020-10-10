tests - exception raising
testnotwfsa008xml
	"Source file: xmltest/not-wf/sa/008.xml"

	self
		skipOrReturnWith: [^ self]
		ifSkippable: #testnotwfsa008xml.
	self
		should: [
			self
				parse: self class sourcenotwfsa008xml
				documentURI: 'not-wf/sa/008.xml']
		raise: self parserExceptions