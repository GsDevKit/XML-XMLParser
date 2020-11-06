tests
testElementsDo
	| list |

	list := self emptyList.
	self
		xmlShould: [:block | list elementsDo: block ]
		enumerate: #().

	list addAll: self listItems.
	self
		xmlShould: [:block | list elementsDo: block ]
		enumerate: self listElements.