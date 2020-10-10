obsolete - versions
version175: spec
	<version: '1.7.5' imports: #('1.0.0-baseline')>

	spec for: #'common' do: [
		spec blessing: #release.
		spec 
			project: 'XMLWriter' with: '2.4.2';
			package: 'XML-Parser' with: 'XML-Parser-monty.241';
			package: 'XML-Tests-Parser' with: 'XML-Tests-Parser-monty.69'.].

	spec for: #'pharo2.x'
		do: [ 
			spec package: 'XML-Pharo2-Parser' with: 'XML-Pharo2-Parser-DiegoLont.1' ]
	
