tests - exception raising
testnotwfelement02xml
	"Source file: sun/not-wf/element02.xml"

	self
		skipOrReturnWith: [^ self]
		ifSkippable: #testnotwfelement02xml.
	self
		should: [
			self
				parse: self class sourcenotwfelement02xml
				documentURI: 'not-wf/element02.xml']
		raise: self parserExceptions