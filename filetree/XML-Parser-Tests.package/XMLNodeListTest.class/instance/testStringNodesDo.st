tests
testStringNodesDo
	| list |

	list := self emptyList.
	self
		xmlShould: [:block | list stringNodesDo: block ]
		enumerate: #().

	list addAll: self listItems.
	self
		xmlShould: [:block | list stringNodesDo: block ]
		enumerate: self listStringNodes.