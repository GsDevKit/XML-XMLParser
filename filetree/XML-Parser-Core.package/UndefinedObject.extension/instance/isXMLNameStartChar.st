*XML-Parser-Core
isXMLNameStartChar
	"hack optimization to avoid testing for nil before sending
	this to objects from streams in XMLParser"
	^ false