obsolete - versions
version157: spec
	<version: '1.5.7' imports: #('1.0.0-baseline')>
	spec
		for: #common
		do: [ 
			spec blessing: #release.
			spec
				package: 'XML-Parser' with: 'XML-Parser-monty.222';
				package: 'XML-Tests-Parser' with: 'XML-Tests-Parser-monty.55'
				].
	