testing
isFailingTestFilePathSegments: aPathSegmentCollection
	aPathSegmentCollection do: [:segment |
		self failingTestFileNamePatterns do: [:pattern |
			(segment includesSubstring: pattern)
				ifTrue: [^ true]]].
	^ false.