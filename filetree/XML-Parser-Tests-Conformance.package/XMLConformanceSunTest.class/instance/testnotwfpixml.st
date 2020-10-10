tests - exception raising
testnotwfpixml
	"Source file: sun/not-wf/pi.xml"

	self
		skipOrReturnWith: [^ self]
		ifSkippable: #testnotwfpixml.
	self
		should: [
			self
				parse: self class sourcenotwfpixml
				documentURI: 'not-wf/pi.xml']
		raise: self parserExceptions