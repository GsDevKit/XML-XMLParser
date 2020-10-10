tests - exception raising
testnotwfcontent01xml
	"Source file: sun/not-wf/content01.xml"

	self
		skipOrReturnWith: [^ self]
		ifSkippable: #testnotwfcontent01xml.
	self
		should: [
			self
				parse: self class sourcenotwfcontent01xml
				documentURI: 'not-wf/content01.xml']
		raise: self parserExceptions