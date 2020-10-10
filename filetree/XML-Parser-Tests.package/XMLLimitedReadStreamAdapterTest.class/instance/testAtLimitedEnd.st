tests
testAtLimitedEnd
	| adapter unlimitedOutputCollectionSize |

	adapter := self newStreamAdapter.
	self outputCollection size timesRepeat: [
		self deny: adapter atLimitedEnd.
		adapter next].
	self
		assert: adapter atEnd;
		assert: adapter atLimitedEnd.

	unlimitedOutputCollectionSize := self outputCollection size * 2.
	adapter :=
		self
			newStreamAdapterOn: self newStream
			limit: unlimitedOutputCollectionSize.
	unlimitedOutputCollectionSize timesRepeat: [
		self deny: adapter atLimitedEnd.
		adapter next].
	self
		assert: adapter atEnd;
		deny: adapter atLimitedEnd.