tests - exception raising
testnotwfsgml08xml
	"Source file: sun/not-wf/sgml08.xml"

	self
		skipOrReturnWith: [^ self]
		ifSkippable: #testnotwfsgml08xml.
	self
		should: [
			self
				parse: self class sourcenotwfsgml08xml
				documentURI: 'not-wf/sgml08.xml']
		raise: self parserExceptions