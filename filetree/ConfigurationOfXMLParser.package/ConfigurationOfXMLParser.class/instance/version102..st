obsolete - versions
version102: spec
	<version: '1.0.2' imports: #('1.0.0-baseline')>
	spec
		for: #common
		do: [ 
			spec blessing: #release.
			spec
				package: 'XML-Parser' with: 'XML-Parser-DamienCassou.143';
				package: 'XML-Tests-Parser' with: 'XML-Tests-Parser-StephaneDucasse.15' 
				].
	
	