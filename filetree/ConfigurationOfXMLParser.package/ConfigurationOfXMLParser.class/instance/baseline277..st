obsolete - baselines
baseline277: spec
	<version: '2.7.7-baseline' imports: #('2.4-master-baseline')>
	spec
		for: #common
		do: [ 
			spec blessing: #baseline.
			spec project: 'XMLWriter' with: '2.7.2'. ].
	spec
		for: #gemstone
		do: [ spec package: 'XML-Parser-GemstoneCompatibility' with: 'XML-Parser-GemstoneCompatibility-monty.19' ].
	spec
		for: #gt
		do: [ spec package: 'XML-Parser-GTExtensions' with: 'XML-Parser-GTExtensions-TudorGirba.36' ]