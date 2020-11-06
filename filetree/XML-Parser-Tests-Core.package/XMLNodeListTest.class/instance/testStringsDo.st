tests
testStringsDo
	| list |

	list := self emptyList.
	self
		xmlShould: [:block | list stringsDo: block ]
		enumerate: #().

	list addAll: self listItems.
	self
		xmlShould: [:block | list stringsDo: block ]
		enumerate: self listStrings.