accessing
headers
	^ OrderedCollection
		with: 'X-Unique-One' -> 'zero'
		with: 'X-Duplicate' -> 'one'
		with: 'X-Unique-Two' -> 'two'
		with: 'X-Duplicate' -> 'three'