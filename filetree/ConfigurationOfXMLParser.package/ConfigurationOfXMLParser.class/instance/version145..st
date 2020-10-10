obsolete - versions
version145: spec
	<version: '1.4.5' imports: #('1.0.0-baseline')>
	spec
		for: #common
		do: [ 
			spec blessing: #release.
			spec
				package: 'XML-Parser' with: 'XML-Parser-monty.205';
				package: 'XML-Tests-Parser' with: 'XML-Tests-Parser-monty.43'
				].
	