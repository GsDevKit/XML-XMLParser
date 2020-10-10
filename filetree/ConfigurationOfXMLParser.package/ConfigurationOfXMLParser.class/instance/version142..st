obsolete - versions
version142: spec
	<version: '1.4.2' imports: #('1.0.0-baseline')>
	spec
		for: #common
		do: [ 
			spec blessing: #release.
			spec
				package: 'XML-Parser' with: 'XML-Parser-monty.200';
				package: 'XML-Tests-Parser' with: 'XML-Tests-Parser-monty.39'
				].
	