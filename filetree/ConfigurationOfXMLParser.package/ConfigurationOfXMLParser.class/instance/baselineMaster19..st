obsolete - baselines
baselineMaster19: spec
	<version: '1.9-master-baseline' imports: #('1-master-baseline')>

	spec
		for: #gemstone
		do: [
			"load gemstone compatibility methods"
			spec
				package: 'XML-Parser'
				with: [ spec includes: 'XML-Parser-GemstoneCompatibility' ].
			spec
				package: 'XML-Parser-GemstoneCompatibility'
				with: [ spec requires: 'XML-Parser' ]. ].