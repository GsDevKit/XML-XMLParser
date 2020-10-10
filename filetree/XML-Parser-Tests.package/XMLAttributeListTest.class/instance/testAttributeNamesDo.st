tests
testAttributeNamesDo
	| list |

	list := self emptyList.
	self
		xmlShould: [:block | list attributeNamesDo: block]
		enumerate: #().

	list := self listWithItems.
	self
		xmlShould: [:each | list attributeNamesDo: each]
		enumerate: self attributeNames.