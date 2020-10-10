obsolete - versions
version165: spec
	<version: '1.6.5' imports: #('1.0.0-baseline')>

	spec for: #'common' do: [
		spec blessing: #release.
		spec description: 'version 1.6.5'.
		spec author: 'GuillaumeLarcheveque'.
		spec timestamp: '6/27/2014 16:14'.
		spec 
			project: 'XMLWriter' with: '2.3.10';
			project: 'BitmapCharacterSet' with: '1.1';
			project: 'OrderPreservingDictionary' with: '1.2'.
		spec 
			package: 'XML-Parser' with: 'XML-Parser-monty.228';
			package: 'XML-Tests-Parser' with: 'XML-Tests-Parser-monty.58'. ].

	spec for: #'pharo2.x'
		do: [ 
			spec package: 'XML-Pharo2-Parser' with: 'XML-Pharo2-Parser-DiegoLont.1' ]
	
