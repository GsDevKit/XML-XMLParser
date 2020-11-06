tests
testUpToEnd
	| adapter |

	self outputCollection withIndexDo: [:each :i |
		adapter := self newStreamAdapter.
		adapter skip: i.
		self
			assert: adapter upToEnd = (self outputCollection allButFirst: i);
			assert: adapter upToEnd = self emptyOutputCollection].

	adapter := self newStreamAdapter.
	self
		assert: adapter upToEnd = self outputCollection;
		assert: adapter upToEnd = self emptyOutputCollection.