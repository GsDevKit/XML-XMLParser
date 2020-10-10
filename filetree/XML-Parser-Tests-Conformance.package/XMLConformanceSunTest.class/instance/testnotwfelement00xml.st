tests - exception raising
testnotwfelement00xml
	"Source file: sun/not-wf/element00.xml"

	self
		skipOrReturnWith: [^ self]
		ifSkippable: #testnotwfelement00xml.
	self
		should: [
			self
				parse: self class sourcenotwfelement00xml
				documentURI: 'not-wf/element00.xml']
		raise: self parserExceptions