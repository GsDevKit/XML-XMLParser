obsolete - baselines
baseline183: spec
	<version: '1.8.3-baseline' imports: #('1-master-baseline')>
	spec
		for: #common
		do: [ 
			spec blessing: #baseline.
			spec project: 'XMLWriter' with: '2.4.6' ]