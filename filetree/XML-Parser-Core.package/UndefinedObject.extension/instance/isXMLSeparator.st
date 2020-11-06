*XML-Parser-Core
isXMLSeparator
	"hack optimization to avoid testing for nil before sending
	this to objects from streams in XMLParser"
	^ false