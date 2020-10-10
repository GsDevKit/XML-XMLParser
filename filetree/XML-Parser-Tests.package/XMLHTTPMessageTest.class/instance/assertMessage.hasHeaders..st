asserting
assertMessage: aMessage hasHeaders: anAssociationCollection
	| addedHeaders |

	addedHeaders := OrderedCollection new.
	"use #associationsDo: to support Dictionaries and SequenceableCollections"
	anAssociationCollection associationsDo: [:each |
		addedHeaders add: each].
	self assert: aMessage headers sorted = addedHeaders sorted.