instance creation
newStreamAdapterOn: aStream limit: aLimit
	^ self streamAdapterClass
		on: aStream
		limit: aLimit