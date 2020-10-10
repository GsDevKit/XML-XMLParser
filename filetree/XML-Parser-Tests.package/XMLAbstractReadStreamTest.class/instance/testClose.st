tests
testClose
	| stream |

	stream := self newStream.
	self
		assert: stream close == stream;
		assert: stream atEnd.