tests
testOn
	| stream adapter |

	stream := self newStream.
	adapter := self newStreamAdapterOn: stream.
	self
		assert: adapter class == self streamAdapterClass;
		assert:
			(self expectsBinaryOutput
				ifTrue: [adapter stream == stream]
				ifFalse: [adapter stream stream == stream]).