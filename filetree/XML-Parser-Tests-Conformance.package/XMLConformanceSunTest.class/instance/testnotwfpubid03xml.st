tests - exception raising
testnotwfpubid03xml
	"Source file: sun/not-wf/pubid03.xml"

	self
		skipOrReturnWith: [^ self]
		ifSkippable: #testnotwfpubid03xml.
	self
		should: [
			self
				parse: self class sourcenotwfpubid03xml
				documentURI: 'not-wf/pubid03.xml']
		raise: self parserExceptions