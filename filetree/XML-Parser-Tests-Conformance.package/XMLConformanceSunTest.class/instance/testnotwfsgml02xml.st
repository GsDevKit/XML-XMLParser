tests - exception raising
testnotwfsgml02xml
	"Source file: sun/not-wf/sgml02.xml"

	self
		skipOrReturnWith: [^ self]
		ifSkippable: #testnotwfsgml02xml.
	self
		should: [
			self
				parse: self class sourcenotwfsgml02xml
				documentURI: 'not-wf/sgml02.xml']
		raise: self parserExceptions