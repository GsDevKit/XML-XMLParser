tests
testIncludesAttributeNodeNamespaceURI
	| list |

	list := self emptyList.
	self listItems do: [:each |
		self deny:
			(list
				includesAttributeNode: each name
				namespaceURI: 'defaultNS').

		list add: each.
		self deny:
			(list
				includesAttributeNode: each name
				namespaceURI: 'defaultNS').
		self assert:
			(list
				includesAttributeNode: each name
				namespaceURI: '')].