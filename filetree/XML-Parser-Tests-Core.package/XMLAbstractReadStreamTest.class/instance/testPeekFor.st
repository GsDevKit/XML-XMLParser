tests
testPeekFor
	| stream |

	stream := self newStream.
	self outputCollection do: [:each |
		self
			deny: (stream peekFor: #absent);
			deny: (stream peekFor: nil);
			assert: (stream peekFor: each);
			deny: (stream peekFor: #absent);
			deny: (stream peekFor: nil)].
	self
		deny: (stream peekFor: #absent);
		deny: (stream peekFor: nil).