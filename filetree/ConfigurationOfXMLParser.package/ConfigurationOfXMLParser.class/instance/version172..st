obsolete - versions
version172: spec
	<version: '1.7.2' imports: #('1.0.0-baseline')>

	spec for: #'common' do: [
		spec blessing: #release.
		spec 
			project: 'XMLWriter' with: '2.4.1';
			project: 'BitmapCharacterSet' with: '1.1';
			project: 'OrderPreservingDictionary' with: '1.2.1'.
		spec 
			package: 'XML-Parser' with: 'XML-Parser-monty.237';
			package: 'XML-Tests-Parser' with: 'XML-Tests-Parser-monty.65'.].

	spec for: #'pharo2.x'
		do: [ 
			spec package: 'XML-Pharo2-Parser' with: 'XML-Pharo2-Parser-DiegoLont.1' ]
	
