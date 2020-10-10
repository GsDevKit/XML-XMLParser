obsolete - baselines
baseline297: spec
	<version: '2.9.7-baseline' imports: #('2.4-master-baseline')>
	spec
		for: #common
		do: [ 
			spec blessing: #baseline.
			spec project: 'XMLWriter' with: '2.7.5'. ].
	spec
		for: #gemstone
		do: [
			spec package: 'XML-Parser-GemstoneCompatibility' with: 'XML-Parser-GemstoneCompatibility-monty.22'.
			"force initialization of lazy-initialized class and class isnt
			vars to avoid write conflicts on GS"
			spec postLoadDoIt: #initializeClassesForGSBaseline297. ].
	spec
		for: #gt
		do: [ spec package: 'XML-Parser-GTExtensions' with: 'XML-Parser-GTExtensions-monty.40' ]