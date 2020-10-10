obsolete - versions
version138: spec
	<version: '1.3.8' imports: #('1.0.0-baseline')>
	spec
		for: #common
		do: [ 
			spec blessing: #release.
			spec
				package: 'XML-Parser' with: 'XML-Parser-monty.195';
				package: 'XML-Tests-Parser' with: 'XML-Tests-Parser-monty.36'
				].
	
	