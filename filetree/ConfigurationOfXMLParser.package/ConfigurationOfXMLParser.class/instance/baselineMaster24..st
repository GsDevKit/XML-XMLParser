obsolete - baselines
baselineMaster24: spec
	<version: '2.4-master-baseline' imports: #('1.9-master-baseline')>

	"load GT extension methods"
	spec
		for: #gt
		do: [
			"the extensions require XMLWriter"
			spec
				group: 'CoreWithWriting' with: #('XMLWriter' 'XML-Parser' 'XML-Parser-GTExtensions');
				group: 'Tests' with: #('XML-Tests-Parser' 'XML-Parser-GTExtensions').
			spec
				package: 'XML-Parser-GTExtensions'
				with: [ spec requires: 'XML-Parser' ]. ].