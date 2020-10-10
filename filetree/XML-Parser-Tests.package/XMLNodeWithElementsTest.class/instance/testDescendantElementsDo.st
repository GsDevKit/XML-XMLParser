tests
testDescendantElementsDo
	| nodeWithElements descendantElements |

	nodeWithElements := self newNodeWithElements.
	descendantElements := nodeWithElements descendantElements.
	self
		xmlShould: [:block | nodeWithElements descendantElementsDo: block]
		enumerate: descendantElements.

	descendantElements do: [:element |
		self
			xmlShould: [:block | element descendantElementsDo: block]
			enumerate: element descendantElements].