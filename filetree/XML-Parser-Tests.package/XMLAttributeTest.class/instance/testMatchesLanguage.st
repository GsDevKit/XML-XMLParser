tests
testMatchesLanguage
	| attribute |

	attribute := self nodeClass named: 'xml:lang'.	
	self languageTagsAndFilters do: [:tagAndFilters |
		| tag matchingFilters nonMatchingFilters |
		
		tag := tagAndFilters first.
		matchingFilters := tagAndFilters second.
		nonMatchingFilters := tagAndFilters third.
		(matchingFilters, nonMatchingFilters) do: [:each |
			self deny: (attribute matchesLanguage: each)].
		
		attribute value: tag.
		matchingFilters do: [:each |
			self assert: (attribute matchesLanguage: each)].
		nonMatchingFilters do: [:each |
			self deny: (attribute matchesLanguage: each)].
		
		attribute value: ''].