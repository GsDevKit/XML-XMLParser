obsolete - baselines
baseline319: spec
	<version: '3.1.9-baseline' imports: #('2.4-master-baseline')>
	spec
		for: #common
		do: [ 
			spec blessing: #baseline.
			spec project: 'XMLWriter' with: '2.8.3'. ].
	spec
		for: #common
		do: [ 
			spec blessing: #baseline.
			spec project: 'OrderPreservingDictionary' with: '1.3.8'. ].
	spec
		for: #gemstone
		do: [
			spec package: 'XML-Parser-GemstoneCompatibility' with: 'XML-Parser-GemstoneCompatibility-monty.25'.
			"force initialization of lazy-initialized class and class isnt
			vars to avoid write conflicts on GS"
			spec postLoadDoIt: #initializeClassesForGSBaseline312. ].
	spec
		for: #gt
		do: [ spec package: 'XML-Parser-GTExtensions' with: 'XML-Parser-GTExtensions-monty.61' ]