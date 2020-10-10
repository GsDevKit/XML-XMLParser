obsolete - versions
version177: spec
	<version: '1.7.7' imports: #('1.0.0-baseline')>

	spec for: #'common' do: [
		spec blessing: #release.
		spec 
			project: 'XMLWriter' with: '2.4.3';
			package: 'XML-Parser' with: 'XML-Parser-monty.243';
			package: 'XML-Tests-Parser' with: 'XML-Tests-Parser-monty.71'.]