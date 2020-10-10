obsolete - baselines
baseline100: spec
	<version: '1.0.0-baseline' imports: #('1-master-baseline')>
	spec
		for: #common
		do: [ 
			spec blessing: #baseline.
			spec project: 'XMLWriter' with: '2.4.5' ]