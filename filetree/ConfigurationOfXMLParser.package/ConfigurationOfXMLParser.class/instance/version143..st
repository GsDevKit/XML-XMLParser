obsolete - versions
version143: spec
	<version: '1.4.3' imports: #('1.0.0-baseline')>
	spec
		for: #common
		do: [ 
			spec blessing: #release.
			spec
				package: 'XML-Parser' with: 'XML-Parser-monty.201';
				package: 'XML-Tests-Parser' with: 'XML-Tests-Parser-monty.40'
				].
	