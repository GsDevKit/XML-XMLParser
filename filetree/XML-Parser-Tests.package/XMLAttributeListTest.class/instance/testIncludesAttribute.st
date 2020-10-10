tests
testIncludesAttribute
	| list |

	list := self emptyList.
	self listItems do: [:each |
		self deny: (list includesAttribute: each name).

		list add: each.
		self assert: (list includesAttribute: each name)].