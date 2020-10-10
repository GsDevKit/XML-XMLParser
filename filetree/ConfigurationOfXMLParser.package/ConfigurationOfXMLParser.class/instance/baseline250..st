obsolete - baselines
baseline250: spec
	<version: '2.5.0-baseline' imports: #('2.4-master-baseline')>
	spec
		for: #common
		do: [ 
			spec blessing: #baseline.
			spec project: 'XMLWriter' with: '2.6.4'.
			"#stable BitmapCharacterSet is ok now because XMLParser isn't extending it anymore" ].
	spec
		for: #gemstone
		do: [ spec package: 'XML-Parser-GemstoneCompatibility' with: 'XML-Parser-GemstoneCompatibility-monty.11' ].
	spec
		for: #gt
		do: [ spec package: 'XML-Parser-GTExtensions' with: 'XML-Parser-GTExtensions-monty.8' ]