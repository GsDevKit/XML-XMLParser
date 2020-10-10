*XML-Parser-GTExtensions
treeViewChildren
	| nextStates |

	nextStates := #().
	self nextStatesDo: [:each |
		nextStates := nextStates copyWith: each].
	^ nextStates.