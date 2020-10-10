tests
testRemoveAttribute
	(Array
		with: self listWithItems
		with: self listWithItems reversed)
		do: [:list | | copy |
			copy := list copy.
			copy withIndexDo: [:each :i |
				self
					assert: (list removeAttribute: each name) = each value;
					deny: (list includes: each).
				self
					assertList: list
					equals: (copy allButFirst: i).

				self
					should: [list removeAttribute: each name]
					raise: Error]].