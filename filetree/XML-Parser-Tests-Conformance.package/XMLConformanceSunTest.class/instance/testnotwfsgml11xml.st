tests - exception raising
testnotwfsgml11xml
	"Source file: sun/not-wf/sgml11.xml"

	self
		skipOrReturnWith: [^ self]
		ifSkippable: #testnotwfsgml11xml.
	self
		should: [
			self
				parse: self class sourcenotwfsgml11xml
				documentURI: 'not-wf/sgml11.xml']
		raise: self parserExceptions