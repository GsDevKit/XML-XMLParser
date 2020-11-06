tests
testUpTo
	self outputCollection do: [:each | | stream |
		stream := self newStream.
		self assert:
			(stream upTo: each) =
				(self outputCollection copyUpTo: each).
		self assert:
			stream upToEnd =
				(self outputCollection copyAfter: each)].
	self assert: (self newStream upTo: #absent) = self outputCollection.