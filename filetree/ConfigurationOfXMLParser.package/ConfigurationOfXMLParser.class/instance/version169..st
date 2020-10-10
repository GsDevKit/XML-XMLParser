obsolete - versions
version169: spec
	<version: '1.6.9' imports: #('1.0.0-baseline')>

	spec for: #'common' do: [
		spec blessing: #release.
		spec 
			project: 'XMLWriter' with: '2.3.10';
			project: 'BitmapCharacterSet' with: '1.1';
			project: 'OrderPreservingDictionary' with: '1.2'.
		spec 
			package: 'XML-Parser' with: 'XML-Parser-monty.234';
			package: 'XML-Tests-Parser' with: 'XML-Tests-Parser-monty.62'.].

	spec for: #'pharo2.x'
		do: [ 
			spec package: 'XML-Pharo2-Parser' with: 'XML-Pharo2-Parser-DiegoLont.1' ]
	
