tests - exception raising
testnotwfsgml04xml
	"Source file: sun/not-wf/sgml04.xml"

	self
		skipOrReturnWith: [^ self]
		ifSkippable: #testnotwfsgml04xml.
	self
		should: [
			self
				parse: self class sourcenotwfsgml04xml
				documentURI: 'not-wf/sgml04.xml']
		raise: self parserExceptions