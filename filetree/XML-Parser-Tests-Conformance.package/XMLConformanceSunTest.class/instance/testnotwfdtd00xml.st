tests - exception raising
testnotwfdtd00xml
	"Source file: sun/not-wf/dtd00.xml"

	self
		skipOrReturnWith: [^ self]
		ifSkippable: #testnotwfdtd00xml.
	self
		should: [
			self
				parse: self class sourcenotwfdtd00xml
				documentURI: 'not-wf/dtd00.xml']
		raise: self parserExceptions