tests - exception raising
testnotwfencoding01xml
	"Source file: sun/not-wf/encoding01.xml"

	self
		skipOrReturnWith: [^ self]
		ifSkippable: #testnotwfencoding01xml.
	self
		should: [
			self
				parse: self class sourcenotwfencoding01xml
				documentURI: 'not-wf/encoding01.xml']
		raise: self parserExceptions