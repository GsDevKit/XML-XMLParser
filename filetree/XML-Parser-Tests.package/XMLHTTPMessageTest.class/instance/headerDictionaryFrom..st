accessing
headerDictionaryFrom: aSequenceableCollection
	| headerDictionary |

	headerDictionary := Dictionary new.
	aSequenceableCollection associationsDo: [:each |
		headerDictionary add: each].
	^ headerDictionary.