obsolete - baselines
baseline266: spec
	<version: '2.6.6-baseline' imports: #('2.4-master-baseline')>
	spec
		for: #common
		do: [ 
			spec blessing: #baseline.
			spec project: 'XMLWriter' with: '2.6.8'. ].
	spec
		for: #gemstone
		do: [ spec package: 'XML-Parser-GemstoneCompatibility' with: 'XML-Parser-GemstoneCompatibility-monty.15' ].
	spec
		for: #gt
		do: [ spec package: 'XML-Parser-GTExtensions' with: 'XML-Parser-GTExtensions-monty.31' ]