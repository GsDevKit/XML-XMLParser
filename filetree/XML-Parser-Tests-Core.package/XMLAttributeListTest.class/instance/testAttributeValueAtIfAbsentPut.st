tests
testAttributeValueAtIfAbsentPut
	| list |

	list := self emptyList.
	1 to: 2 do: [:i |
		self listItems do: [:each |
			self assert:
				(list
					attributeValueAt: each name
					ifAbsentPut: [
						i > 1
							ifTrue: [self fail]
							ifFalse: [each value]]) = each value.
	
			list add: each.
			self assert:
				(list
					attributeValueAt: each name
					ifAbsentPut: [self fail]) = each value]].

	self listItems do: [:each |
		self assert:
			(list
				attributeValueAt: each name
				ifAbsentPut: [self fail]) = each value].