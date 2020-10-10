tests
testContentNodesDo
	| list |

	list := self emptyList.
	self
		xmlShould: [:block | list contentNodesDo: block ]
		enumerate: #().

	list addAll: self listItems.
	self
		xmlShould: [:block | list contentNodesDo: block ]
		enumerate: self listContentNodes.