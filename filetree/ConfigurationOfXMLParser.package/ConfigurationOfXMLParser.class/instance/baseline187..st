obsolete - baselines
baseline187: spec
	<version: '1.8.7-baseline' imports: #('1-master-baseline')>
	spec
		for: #common
		do: [ 
			spec blessing: #baseline.
			spec project: 'XMLWriter' with: '2.4.7' ]