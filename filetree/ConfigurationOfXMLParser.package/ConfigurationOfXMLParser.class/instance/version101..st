obsolete - versions
version101: spec
	<version: '1.0.1' imports: #('1.0.0-baseline')>
	spec
		for: #common
		do: [ 
			spec blessing: #release.
			spec
				package: 'XML-Parser' with: 'XML-Parser-StephaneDucasse.142';
				package: 'XML-Tests-Parser' with: 'XML-Tests-Parser-StephaneDucasse.15' 
				].
	
	