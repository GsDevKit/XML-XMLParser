tests
testIsInLanguage
	| element |

	super testIsInLanguage.

	element := self newElementWithAttributes.	
	self languageTagsAndFilters do: [:tagAndFilters |
		| tag matchingFilters nonMatchingFilters |
		
		tag := tagAndFilters first.
		matchingFilters := tagAndFilters second.
		nonMatchingFilters := tagAndFilters third.
		element attributeNodesDo: [:attributeNode |
			(matchingFilters, nonMatchingFilters) do: [:each |
				self deny: (attributeNode isInLanguage: each)]].
		
		element
			attributeAt: 'xml:lang'
			put: tag.
		element attributeNodesDo: [:attributeNode |
			matchingFilters do: [:each |
				self assert: (attributeNode isInLanguage: each)].
			nonMatchingFilters do: [:each |
				self deny: (attributeNode isInLanguage: each)]].
		
		element removeAttribute: 'xml:lang'].