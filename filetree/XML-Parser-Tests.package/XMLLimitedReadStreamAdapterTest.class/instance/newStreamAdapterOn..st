instance creation
newStreamAdapterOn: aStream
	^ self
		newStreamAdapterOn: aStream
		limit: self inputCollectionLimit