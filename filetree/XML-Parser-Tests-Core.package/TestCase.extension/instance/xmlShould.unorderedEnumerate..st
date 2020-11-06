*XML-Parser-Tests
xmlShould: aBlock unorderedEnumerate: aCollection
	| enumerated |

	enumerated := OrderedCollection new.
	aBlock value: [:each | enumerated add: each].
	self assert: enumerated sorted = aCollection asOrderedCollection sorted.