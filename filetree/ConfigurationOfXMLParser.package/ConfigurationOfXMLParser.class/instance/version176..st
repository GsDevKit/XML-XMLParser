obsolete - versions
version176: spec
	<version: '1.7.6' imports: #('1.0.0-baseline')>

	spec for: #'common' do: [
		spec blessing: #release.
		spec 
			project: 'XMLWriter' with: '2.4.3';
			package: 'XML-Parser' with: 'XML-Parser-monty.242';
			package: 'XML-Tests-Parser' with: 'XML-Tests-Parser-monty.70'.].

	spec for: #'pharo2.x'
		do: [ 
			spec package: 'XML-Pharo2-Parser' with: 'XML-Pharo2-Parser-DiegoLont.1' ]
	
