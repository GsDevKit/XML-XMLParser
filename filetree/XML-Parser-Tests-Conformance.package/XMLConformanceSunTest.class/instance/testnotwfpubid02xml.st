tests - exception raising
testnotwfpubid02xml
	"Source file: sun/not-wf/pubid02.xml"

	self
		skipOrReturnWith: [^ self]
		ifSkippable: #testnotwfpubid02xml.
	self
		should: [
			self
				parse: self class sourcenotwfpubid02xml
				documentURI: 'not-wf/pubid02.xml']
		raise: self parserExceptions