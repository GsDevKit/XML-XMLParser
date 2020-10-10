tests - exception raising
testnotwfcond01xml
	"Source file: sun/not-wf/cond01.xml"

	self
		skipOrReturnWith: [^ self]
		ifSkippable: #testnotwfcond01xml.
	self
		should: [
			self
				parse: self class sourcenotwfcond01xml
				documentURI: 'not-wf/cond01.xml']
		raise: self parserExceptions