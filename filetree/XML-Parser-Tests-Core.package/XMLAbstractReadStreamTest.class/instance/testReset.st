tests
testReset
	| stream |

	stream := self newStream.
	self
		assert: stream upToEnd = self outputCollection;
		assert: stream upToEnd isEmpty;
		assert: stream reset == stream;
		assert: stream upToEnd = self outputCollection;
		assert: stream upToEnd isEmpty.