tests
testIncludesAttributeNode
	| list |

	list := self emptyList.
	self listItems withIndexDo: [:attribute :i | | included |
		included :=
			(self listItems
				copyFrom: 1
				to: i - 1) anySatisfy: [:each |
				each isNamed: attribute name].
		self assert:
			(list includesAttributeNode: attribute name) =
				included.

		list add: attribute.
		self assert: (list includesAttributeNode: attribute name)].