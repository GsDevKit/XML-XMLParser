tests
testAttributeNamesAndValuesDo
	| element |

	element := self newNode.
	self
		xmlShould: [:twoArgumentBlock |
			element attributeNamesAndValuesDo: twoArgumentBlock]
		enumerate: #()
		and: #().

	element := self newElementWithAttributes.
	self
		xmlShould: [:twoArgumentBlock |
			element attributeNamesAndValuesDo: twoArgumentBlock]
		enumerate: self attributeNames
		and: self attributeValues.