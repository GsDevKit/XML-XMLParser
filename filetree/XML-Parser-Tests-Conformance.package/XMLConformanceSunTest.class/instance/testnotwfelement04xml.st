tests - exception raising
testnotwfelement04xml
	"Source file: sun/not-wf/element04.xml"

	self
		skipOrReturnWith: [^ self]
		ifSkippable: #testnotwfelement04xml.
	self
		should: [
			self
				parse: self class sourcenotwfelement04xml
				documentURI: 'not-wf/element04.xml']
		raise: self parserExceptions