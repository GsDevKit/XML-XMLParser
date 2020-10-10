tests - exception raising
testnotwfencoding02xml
	"Source file: sun/not-wf/encoding02.xml"

	self
		skipOrReturnWith: [^ self]
		ifSkippable: #testnotwfencoding02xml.
	self
		should: [
			self
				parse: self class sourcenotwfencoding02xml
				documentURI: 'not-wf/encoding02.xml']
		raise: self parserExceptions