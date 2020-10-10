tests
testDescendantNodesDo
	| nodeWithNodes descendantNodes |

	nodeWithNodes := self newNodeWithNodes.
	descendantNodes := nodeWithNodes descendantNodes.
	self
		xmlShould: [:block | nodeWithNodes descendantNodesDo: block]
		enumerate: descendantNodes.

	descendantNodes do: [:node |
		node canHaveChildren
			ifTrue: [
				self
					xmlShould: [:block | node descendantNodesDo: block]
					enumerate: node descendantNodes]].