accessing
languageTagsAndFilters
	"returns an array of triplet arrays of langauge tag, matching filters,
	and non-matching filters"
	^ #(
		#(''
			#()
			#('' 'de' 'De' 'DE' 'de'
				'en' 'En' 'EN' '*'
				'en-US' 'En-Us' 'EN-US' 'en-*' '*-US' '*-*'
				'en-GB' 'En-Gb' 'EN-GB' 'de-*' '*-GB'
				'en-US-Custom' 'EN-US-CUSTOM'
				'en-US-*' '*-US-custom' 'en-*-Custom'
				'en-*-*' '*-*-custom' '*-us-*'
				'*-*-*'
				'en-US-other' 'en-GB-custom' 'de-at-custom'
				'de-US-*' '*-GB-Custom' 'de-*-custom'
				'de-*-*' '*-*-other' '*-GB-*'))
		#('en'
			#('en' 'En' 'EN' '*')
			#('' 'de' 'De' 'DE' 'de'
				'en-US' 'En-Us' 'EN-US' 'en-*' '*-US' '*-*'
				'en-GB' 'En-Gb' 'EN-GB' 'de-*' '*-GB'
				'en-US-Custom' 'EN-US-CUSTOM'
				'en-US-*' '*-US-custom' 'en-*-Custom'
				'en-*-*' '*-*-custom' '*-us-*'
				'*-*-*'
				'en-US-other' 'en-GB-custom' 'de-at-custom'
				'de-US-*' '*-GB-Custom' 'de-*-custom'
				'de-*-*' '*-*-other' '*-GB-*'))
		#('en-US'
			#('en' 'En' 'EN' '*' 'en-US' 'En-Us' 'EN-US' 'en-*' '*-US' '*-*')
			#('' 'de' 'De' 'DE' 'de'
				'en-GB' 'En-Gb' 'EN-GB' 'de-*' '*-GB'
				'en-US-Custom' 'EN-US-CUSTOM'
				'en-US-*' '*-US-custom' 'en-*-Custom'
				'en-*-*' '*-*-custom' '*-us-*'
				'*-*-*'
				'en-US-other' 'en-GB-custom' 'de-at-custom'
				'de-US-*' '*-GB-Custom' 'de-*-custom'
				'de-*-*' '*-*-other' '*-GB-*'))
		#('en-US-custom'
			#('en' 'En' 'EN' '*' 'en-US' 'En-Us' 'EN-US'
				'en-*' '*-US' '*-*'
				'en-US-Custom' 'EN-US-CUSTOM'
				'en-US-*' '*-US-custom' 'en-*-Custom'
				'en-*-*' '*-*-custom' '*-us-*'
				'*-*-*')
			#('' 'de' 'De' 'DE' 'de'
				'en-GB' 'En-Gb' 'EN-GB' 'de-*' '*-GB'
				'en-US-other' 'en-GB-custom' 'de-at-custom'
				'de-US-*' '*-GB-Custom' 'de-*-custom'
				'de-*-*' '*-*-other' '*-GB-*')))