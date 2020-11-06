tests
testIsInLanguage
	| nodeWithElements |

	super testIsInLanguage.

	nodeWithElements := self newNodeWithElements.
	self languageTagsAndFilters do: [:tagAndFilters |
		| tag matchingFilters nonMatchingFilters |
		
		tag := tagAndFilters first.
		matchingFilters := tagAndFilters second.
		nonMatchingFilters := tagAndFilters third.
		nodeWithElements allElementsDo: [:element |
			(matchingFilters, nonMatchingFilters) do: [:each |
				self deny: (element isInLanguage: each)]].
		
		nodeWithElements
			attributeAt: 'xml:lang'
			put: tag.
		nodeWithElements allElementsDo: [:element |
			matchingFilters do: [:each |
				self assert: (element isInLanguage: each)].
			nonMatchingFilters do: [:each |
				self deny: (element isInLanguage: each)].

			element = nodeWithElements
				ifFalse: [
					"ensure it can be shadowed"
					element
						attributeAt: 'xml:lang'
						put: ''.
					(matchingFilters, nonMatchingFilters) do: [:each |
						self deny: (element isInLanguage: each)].
					element removeAttribute: 'xml:lang']].
		
		nodeWithElements removeAttribute: 'xml:lang'].