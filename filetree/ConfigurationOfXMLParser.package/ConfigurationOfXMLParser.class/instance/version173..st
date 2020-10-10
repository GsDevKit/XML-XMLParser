obsolete - versions
version173: spec
	<version: '1.7.3' imports: #('1.0.0-baseline')>

	spec for: #'common' do: [
		spec blessing: #release.
		spec 
			project: 'XMLWriter' with: '2.4.1';
			project: 'BitmapCharacterSet' with: '1.1';
			project: 'OrderPreservingDictionary' with: '1.2.3'.
		spec 
			package: 'XML-Parser' with: 'XML-Parser-monty.238';
			package: 'XML-Tests-Parser' with: 'XML-Tests-Parser-monty.66'.].

	spec for: #'pharo2.x'
		do: [ 
			spec package: 'XML-Pharo2-Parser' with: 'XML-Pharo2-Parser-DiegoLont.1' ]
	
