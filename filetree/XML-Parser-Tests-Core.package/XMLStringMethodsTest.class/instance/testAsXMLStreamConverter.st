tests
testAsXMLStreamConverter
	XMLStreamConverter allSubclassesDo: [:class |
		(class class includesSelector: #encodingNames)
			ifTrue: [
				class encodingNames do: [:each |
					self assert: each asXMLStreamConverter class == class]]]