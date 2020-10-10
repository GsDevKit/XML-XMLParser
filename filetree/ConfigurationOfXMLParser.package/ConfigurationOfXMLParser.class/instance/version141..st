obsolete - versions
version141: spec
	<version: '1.4.1' imports: #('1.0.0-baseline')>
	spec
		for: #common
		do: [ 
			spec blessing: #release.
			spec
				package: 'XML-Parser' with: 'XML-Parser-monty.198';
				package: 'XML-Tests-Parser' with: 'XML-Tests-Parser-monty.38'
				].
	