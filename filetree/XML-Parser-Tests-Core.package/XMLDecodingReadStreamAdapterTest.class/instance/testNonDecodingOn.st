tests
testNonDecodingOn
	| adapter stream |

	stream := self newStream.
	adapter := self streamAdapterClass nonDecodingOn: stream.
	self assert: adapter hasNullStreamConverter.