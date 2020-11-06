accessing
listItems
	attributes ifNil: [
		attributes :=
			Array streamContents: [:stream |
				super listItems do: [:each |
					"have the prefixed attributes come before the non-prefixed
					versions to better test #isNamed: local name matching"
					stream
						nextPut:
							(self attributeClass
								name: 'prefix:', each
								value: 'prefixed', each);
						nextPut:
							(self attributeClass
								name: each
								value: each)]]].
	^ attributes copy.