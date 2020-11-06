tests
testSubType
	#('/{1}'
		' / {1} '
		'application/{1}'
		' application / {1} '
		'/{1};'
		' / {1} ; '
		'/{1};charset=utf8'
		' / {1} ; charset=utf8 '
		'application/{1};charset=utf8'
		' application / {1} ; charset=utf8')
		do: [:template |
			#(#('xml') #('Xml') #('XML'))
				do: [:values |
					self assert:
						(XMLHTTPMIMEType fromString:
							(template format: values)) subType equals: 'xml']].
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
		';charset=utf8'
		' ; charset=utf8 '
		'application/;charset=utf8'
		' application / ; charset=utf8 ')
		do: [:each |
			self assert: (XMLHTTPMIMEType fromString: each) subType = ''].