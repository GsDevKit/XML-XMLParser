tests
testSkipTo
	| stream |

	self outputCollection do: [:each |
		stream := self newStream.
		self
			assert: (stream skipTo: each);
			assert: stream upToEnd = (self outputCollection copyAfter: each)].

	stream := self newStream.
	self
		deny: (stream skipTo: #absent);
		assert: stream atEnd.