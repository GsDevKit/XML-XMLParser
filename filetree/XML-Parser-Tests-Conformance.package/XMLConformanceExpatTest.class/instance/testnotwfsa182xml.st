tests - exception raising
testnotwfsa182xml
	"Source file: xmltest/not-wf/sa/182.xml"

	self
		skipOrReturnWith: [^ self]
		ifSkippable: #testnotwfsa182xml.
	self
		should: [
			self
				parse: self class sourcenotwfsa182xml
				documentURI: 'not-wf/sa/182.xml']
		raise: self parserExceptions