tests
testSkip
	| stream |

	0 to: self outputCollection size do: [:i |
		stream := self newStream.
		self
			assert: (stream skip: i) == stream;
			assert: stream upToEnd = (self outputCollection allButFirst: i)].

	stream := self newStream.
	self
		assert: (stream skip: self outputCollection size + 1) == stream;
		assert: stream upToEnd isEmpty.