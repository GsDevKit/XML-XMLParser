tests - exception raising
testnotwfsgml05xml
	"Source file: sun/not-wf/sgml05.xml"

	self
		skipOrReturnWith: [^ self]
		ifSkippable: #testnotwfsgml05xml.
	self
		should: [
			self
				parse: self class sourcenotwfsgml05xml
				documentURI: 'not-wf/sgml05.xml']
		raise: self parserExceptions