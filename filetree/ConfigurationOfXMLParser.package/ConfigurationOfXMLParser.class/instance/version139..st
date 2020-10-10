obsolete - versions
version139: spec
	<version: '1.3.9' imports: #('1.0.0-baseline')>
	spec
		for: #common
		do: [ 
			spec blessing: #release.
			spec
				package: 'XML-Parser' with: 'XML-Parser-monty.196';
				package: 'XML-Tests-Parser' with: 'XML-Tests-Parser-monty.36'
				].
	