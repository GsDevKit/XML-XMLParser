tests
testAttributeValueAt
	| list |

	list := self emptyList.
	1 to: 2 do: [:i |
		self listItems do: [:each |
			self assert:
				(list attributeValueAt: each name) =
					(i > 1
						ifTrue: [each value]
						ifFalse: ['']).
	
			list add: each.
			self assert: (list attributeValueAt: each name) = each value]].

	self listItems do: [:each |
		self assert: (list attributeValueAt: each name) = each value].