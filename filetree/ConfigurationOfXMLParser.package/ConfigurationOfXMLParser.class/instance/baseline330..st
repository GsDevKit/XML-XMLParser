obsolete - baselines
baseline330: spec
	<version: '3.3.0-baseline' imports: #('3.3-master-baseline')>
	spec
		for: #common
		do: [ 
			spec blessing: #baseline.
			spec project: 'XMLWriter' with: '2.8.3'. ].
	spec
		for: #common
		do: [ 
			spec blessing: #baseline.
			spec project: 'OrderPreservingDictionary' with: '1.4.0'. ].
	spec
		for: #gemstone
		do: [
			spec package: 'XML-ParserGemstoneCompatibility' with: 'XML-ParserGemstoneCompatibility-monty.1'.
			"force initialization of lazy-initialized class and class isnt
			vars to avoid write conflicts on GS"
			spec postLoadDoIt: #initializeClassesForGSBaseline321. ].
	spec
		for: #gt
		do: [
			spec package: 'XML-ParserGTExtensions' with: 'XML-ParserGTExtensions-monty.1' ]