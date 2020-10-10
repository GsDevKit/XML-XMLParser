tests - exception raising
testnotwfdtd02xml
	"Source file: sun/not-wf/dtd02.xml"

	self
		skipOrReturnWith: [^ self]
		ifSkippable: #testnotwfdtd02xml.
	self
		should: [
			self
				parse: self class sourcenotwfdtd02xml
				documentURI: 'not-wf/dtd02.xml']
		raise: self parserExceptions