tests
testAttributeNodeAt
	| list |

	list := self emptyList.
	self listItems withIndexDo: [:attribute :i | | firstMatchingAttribute |
		firstMatchingAttribute :=
			(self listItems copyFrom: 1 to: i - 1)
				detect: [:each | each isNamed: attribute name]
				ifNone: [nil].
		self assert:
			(list attributeNodeAt: attribute name) =
				(firstMatchingAttribute
					ifNil: [self defaultValue]).
	
		list add: attribute.
		self assert:
			(list attributeNodeAt: attribute name) =
				(firstMatchingAttribute
					ifNil: [attribute])].