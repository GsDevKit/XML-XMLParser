tests - exception raising
testnotwfcontent02xml
	"Source file: sun/not-wf/content02.xml"

	self
		skipOrReturnWith: [^ self]
		ifSkippable: #testnotwfcontent02xml.
	self
		should: [
			self
				parse: self class sourcenotwfcontent02xml
				documentURI: 'not-wf/content02.xml']
		raise: self parserExceptions