*XML-Parser-Tests-Core
xmlShould: aBlock unorderedEnumerate: aFirstCollection and: aSecondCollection
	| firstEnumerated secondEnumerated |

	firstEnumerated := OrderedCollection new.
	secondEnumerated := OrderedCollection new.
	aBlock value: [:first :second |
		firstEnumerated addLast: first.
		secondEnumerated addLast: second].
	self assert:
		firstEnumerated sorted =
			aFirstCollection asOrderedCollection sorted.
	self assert:
		secondEnumerated sorted =
			aSecondCollection asOrderedCollection sorted.