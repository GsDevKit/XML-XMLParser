accessing
headerValuesAt: aKey from: aSequenceableCollection
	| headerValues |

	headerValues := OrderedCollection new.
	aSequenceableCollection do: [:each |
		(each key = aKey)
			ifTrue: [headerValues addLast: each value]].
	^ headerValues.