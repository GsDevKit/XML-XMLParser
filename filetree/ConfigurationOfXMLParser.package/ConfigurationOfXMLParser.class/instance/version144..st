obsolete - versions
version144: spec
	<version: '1.4.4' imports: #('1.0.0-baseline')>
	spec
		for: #common
		do: [ 
			spec blessing: #release.
			spec
				package: 'XML-Parser' with: 'XML-Parser-monty.203';
				package: 'XML-Tests-Parser' with: 'XML-Tests-Parser-monty.41'
				].
	