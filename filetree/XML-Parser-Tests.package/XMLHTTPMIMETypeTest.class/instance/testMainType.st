tests
testMainType
	#('{1}'
		' {1} '
		'{1}/'
		' {1} / '
		'{1};'
		' {1} ; '
		'{1}/xml'
		' {1} / xml '
		'{1};charset=utf8'
		' {1} ; charset=utf8 ')
		do: [:template |
			#(#('application') #('Application') #('APPLICATION'))
				do: [:values |
					self assert:
						(XMLHTTPMIMEType fromString:
							(template format: values)) mainType equals: 'application']].
	#(''
		' '
		'/'
		' / '
		';'
		' ; '
		'/xml'
		' / xml '
		';charset=utf8'
		' ; charset=utf8 '
		'/xml;charset=utf8'
		' / xml ; charset=utf8 ')
		do: [:each |
			self assert: (XMLHTTPMIMEType fromString: each) mainType equals: ''].