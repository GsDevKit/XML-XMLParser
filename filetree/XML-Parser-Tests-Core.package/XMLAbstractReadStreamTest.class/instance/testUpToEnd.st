tests
testUpToEnd
	| stream |

	self outputCollection withIndexDo: [:each :i |
		stream := self newStream.
		stream skip: i.
		self
			assert: stream upToEnd = (self outputCollection allButFirst: i);
			assert: stream upToEnd = ''].

	stream := self newStream.
	self
		assert: stream upToEnd = self outputCollection;
		assert: stream upToEnd = ''.