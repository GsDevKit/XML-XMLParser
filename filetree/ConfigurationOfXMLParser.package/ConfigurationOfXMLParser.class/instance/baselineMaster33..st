obsolete - baselines
baselineMaster33: spec
	<version: '3.3-master-baseline' imports: #('1-master-baseline')>

	spec
		for: #gemstone
		do: [
			"load gemstone compatibility methods"
			spec
				package: 'XML-Parser'
				with: [ spec includes: 'XML-ParserGemstoneCompatibility' ].
			"renamed from 'XML-Parser-GemstoneCompatibility'"
			spec
				package: 'XML-ParserGemstoneCompatibility'
				with: [ spec requires: 'XML-Parser' ]. ].

	"load GT extension methods"
	spec
		for: #gt
		do: [
			"the extensions require XMLWriter"
			spec
				group: 'CoreWithWriting' with: #('XMLWriter' 'XML-Parser' 'XML-ParserGTExtensions');
				group: 'Tests' with: #('XML-Tests-Parser' 'XML-ParserGTExtensions').
			"renamed from 'XML-Parser-GTExtensions'"
			spec
				package: 'XML-ParserGTExtensions'
				with: [ spec requires: 'XML-Parser' ]. ].