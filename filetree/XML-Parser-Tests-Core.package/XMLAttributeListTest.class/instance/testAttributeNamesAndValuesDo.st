tests
testAttributeNamesAndValuesDo
	| list |

	list := self emptyList.
	self
		xmlShould: [:twoArgumentBlock |
			list attributeNamesAndValuesDo: twoArgumentBlock]
		enumerate: #()
		and: #().

	list := self listWithItems.
	self
		xmlShould: [:twoArgumentBlock |
			list attributeNamesAndValuesDo: twoArgumentBlock]
		enumerate: self attributeNames
		and: self attributeValues.