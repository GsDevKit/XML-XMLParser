tests - exception raising
testnotwfencoding05xml
	"Source file: sun/not-wf/encoding05.xml"

	self
		skipOrReturnWith: [^ self]
		ifSkippable: #testnotwfencoding05xml.
	self
		should: [
			self
				parse: self class sourcenotwfencoding05xml
				documentURI: 'not-wf/encoding05.xml']
		raise: self parserExceptions