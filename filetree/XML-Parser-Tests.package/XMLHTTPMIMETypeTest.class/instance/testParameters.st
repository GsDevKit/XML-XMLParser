tests
testParameters
	#(';{1}={2};{3}={4}'
		' ; {1} = {2} ; {3} = {4} '
		';{1}={2};{3}={4};'
		' ; {1} = {2} ; {3} = {4} ; '
		'application;{1}={2};{3}={4}'
		' application ; {1} = {2} ; {3} = {4} '
		'application;{1}={2};{3}={4};'
		' application ; {1} = {2} ; {3} = {4} ; '
		'/xml;{1}={2};{3}={4}'
		' / xml ; {1} = {2} ; {3} = {4} '
		'/xml;{1}={2};{3}={4};'
		' / xml ; {1} = {2} ; {3} = {4} ; '
		'application/xml;{1}={2};{3}={4}'
		' application / xml ; {1} = {2} ; {3} = {4} '
		'application/xml;{1}={2};{3}={4};'
		' application / xml ; {1} = {2} ; {3} = {4} ; ')
		do: [:template |
			#(#('charset' 'utf8' 'custom' 'value')
				#('Charset' 'Utf8' 'Custom' 'Value')
				#('CHARSET' 'UTF8' 'CUSTOM' 'VALUE')
				#('charset' '' '' 'value')
				#('' 'utf8' 'custom' '')
				#('' '' '' '')
				#('name' '" quoted value "' 'name2' '"quoted/value"')
				#('name' '"quoted;value"' 'name2' '"quoted=value"')
				#('name' '"quoted\"value"' 'name2' '"quotedvalue\\"')
				#('duplicate' 'one' 'DUPLICATE' 'two' 'Duplicate' 'three'))
				do: [:values | | mimeType parameters attributes |
					mimeType :=
						XMLHTTPMIMEType fromString:
							(template format: values).
					"no GS #pairsCollect:"
					parameters := OrderedCollection new.
					attributes := Set new.
					values pairsDo: [:key :value | | attribute |
						attribute := key asLowercase.
						(attributes includes: attribute)
							ifFalse: [
								parameters addLast: attribute -> value.
								attributes add: attribute]].
					self assert: mimeType parameters equals: parameters]].
	#(''
		' '
		'/'
		' / '
		';'
		' ; '
		'application'
		' application '
		'application/'
		' application / '
		'application;'
		' application ; '
		'/xml'
		'  / xml '
		'/xml;'
		' / xml ; '
		'application/xml'
		' application / xml '
		'application/xml;'
		' application /xml ; '
		';"invalid"=value'
		' ; "invalid" = value '
		'application;"invalid"=value'
		' application ; "invalid" = value '
		'application/xml;"invalid"=value'
		' application / xml ; "invalid" = value ')
		do: [:each |
			self assert: (XMLHTTPMIMEType fromString: each) parameters isEmpty].