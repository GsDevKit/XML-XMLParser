tests - exception raising
testnotwfsgml03xml
	"Source file: sun/not-wf/sgml03.xml"

	self
		skipOrReturnWith: [^ self]
		ifSkippable: #testnotwfsgml03xml.
	self
		should: [
			self
				parse: self class sourcenotwfsgml03xml
				documentURI: 'not-wf/sgml03.xml']
		raise: self parserExceptions