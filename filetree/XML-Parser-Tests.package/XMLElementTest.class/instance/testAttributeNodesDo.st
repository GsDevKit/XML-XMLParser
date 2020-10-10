tests
testAttributeNodesDo
	| element |

	element := self newNode.
	self
		xmlShould: [:block | element attributeNodesDo: block]
		enumerate: #().

	element := self newElementWithAttributes.
	self
		xmlShould: [:block | element attributeNodesDo: block]
		enumerate: element attributeNodes.