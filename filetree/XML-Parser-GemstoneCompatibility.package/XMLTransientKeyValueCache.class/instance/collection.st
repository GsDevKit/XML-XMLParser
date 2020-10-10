accessing
collection
	^ collection value
		ifNil: [
			collection
				value: self collectionClass new;
				value]