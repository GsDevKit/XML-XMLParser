tests
testAttributeNamesDo
	| element |

	element := self newNode.
	self
		xmlShould: [:block | element attributeNamesDo: block]
		enumerate: #().

	element := self newElementWithAttributes.
	self
		xmlShould: [:block | element attributeNamesDo: block]
		enumerate: element attributeNames.