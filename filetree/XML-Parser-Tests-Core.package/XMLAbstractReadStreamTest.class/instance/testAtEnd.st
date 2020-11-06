tests
testAtEnd
	| stream |

	stream := self newStream.
	self outputCollection size timesRepeat: [
		self deny: stream atEnd.
		stream next].
	self assert: stream atEnd.