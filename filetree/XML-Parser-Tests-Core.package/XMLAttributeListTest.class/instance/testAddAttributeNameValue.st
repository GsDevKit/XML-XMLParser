tests
testAddAttributeNameValue
	| list |

	list := self emptyList.
	self listItems do: [:each | | attribute |
		attribute :=
			list
				addAttributeName: each name
				value: each value.
		self
			assert: attribute class == self attributeClass;
			assert: attribute name = each name;
			assert: attribute value = each value;
			assert: list last = attribute].