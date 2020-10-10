obsolete - baselines
baseline231: spec
	<version: '2.3.1-baseline' imports: #('1.9-master-baseline')>
	spec
		for: #common
		do: [ 
			spec blessing: #baseline.
			spec project: 'XMLWriter' with: '2.5.6'.
			"requires concrete versions from now on"
			spec project: 'BitmapCharacterSet' with: '1.1.5' ].
	spec
		for: #gemstone
		do: [ spec package: 'XML-Parser-GemstoneCompatibility' with: 'XML-Parser-GemstoneCompatibility-monty.10' ]