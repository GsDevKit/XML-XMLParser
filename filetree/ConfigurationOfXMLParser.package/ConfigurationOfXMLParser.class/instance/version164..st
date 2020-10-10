obsolete - versions
version164: spec
	<version: '1.6.4' imports: #('1.0.0-baseline')>
	spec
		for: #common
		do: [ 
			spec
				blessing: #release;
				description: 'Added a pharo2 specific method to fix tests'.
			spec
				package: 'XML-Parser' with: 'XML-Parser-monty.228';
				package: 'XML-Tests-Parser' with: 'XML-Tests-Parser-monty.58' ].
	spec for: #'pharo2.x'
		do: [ 
			spec package: 'XML-Pharo2-Parser' with: 'XML-Pharo2-Parser-DiegoLont.1' ]
	