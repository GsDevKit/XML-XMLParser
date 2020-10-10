private
copyXMLGSExtensionMethods
	"
	self copyXMLGSExtensionMethods
	"
	(String selectorsInProtocol: #'*XML-Parser') do: [:each |
		CharacterCollection
			compile: (String sourceCodeAt: each)
			classified: #'*XML-Parser-GemstoneCompatibility'].