tests - exception raising
testnotwfsgml13xml
	"Source file: sun/not-wf/sgml13.xml"

	self
		skipOrReturnWith: [^ self]
		ifSkippable: #testnotwfsgml13xml.
	self
		should: [
			self
				parse: self class sourcenotwfsgml13xml
				documentURI: 'not-wf/sgml13.xml']
		raise: self parserExceptions