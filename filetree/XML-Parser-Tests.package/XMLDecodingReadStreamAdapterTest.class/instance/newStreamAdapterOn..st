instance creation
newStreamAdapterOn: aStream
	| adapter |

	adapter := super newStreamAdapterOn: aStream.
	self detectsBOMs
		ifTrue: [adapter detectEncoding]
		ifFalse: [adapter streamConverter: self streamConverterClass new].
	^ adapter.