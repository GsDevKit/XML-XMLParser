tests
testOn
	| adapter stream |

	super testOn.

	stream := self newStream.
	adapter := self streamAdapterClass on: stream.
	self assert: adapter hasDefaultStreamConverter.