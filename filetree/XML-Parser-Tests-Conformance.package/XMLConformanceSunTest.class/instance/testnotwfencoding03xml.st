tests - exception raising
testnotwfencoding03xml
	"Source file: sun/not-wf/encoding03.xml"

	self
		skipOrReturnWith: [^ self]
		ifSkippable: #testnotwfencoding03xml.
	self
		should: [
			self
				parse: self class sourcenotwfencoding03xml
				documentURI: 'not-wf/encoding03.xml']
		raise: self parserExceptions