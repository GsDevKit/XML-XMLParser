tests
testAttributeValueAtIfAbsent
	| list |

	list := self emptyList.
	1 to: 2 do: [:i |
		self listItems do: [:each |
			self assert:
				(list
					attributeValueAt: each name
					ifAbsent: [
						i > 1
							ifTrue: [self fail]
							ifFalse: [self absentListItem value]]) =
					(i > 1
						ifTrue: [each value]
						ifFalse: [self absentListItem value]).
	
			list add: each.
			self assert:
				(list
					attributeValueAt: each name
					ifAbsent: [self fail]) = each value]].

	self listItems do: [:each |
		self assert:
			(list
				attributeValueAt: each name
				ifAbsent: [self fail]) = each value].