obsolete - baselines
baseline312: spec
	<version: '3.1.2-baseline' imports: #('2.4-master-baseline')>
	spec
		for: #common
		do: [ 
			spec blessing: #baseline.
			spec project: 'XMLWriter' with: '2.8.2'. ].
	"need a newer version for the Lazy classes"
	spec
		for: #common
		do: [ 
			spec blessing: #baseline.
			spec project: 'OrderPreservingDictionary' with: '1.3.7'. ].
	spec
		for: #gemstone
		do: [
			spec package: 'XML-Parser-GemstoneCompatibility' with: 'XML-Parser-GemstoneCompatibility-monty.24'.
			"force initialization of lazy-initialized class and class isnt
			vars to avoid write conflicts on GS"
			spec postLoadDoIt: #initializeClassesForGSBaseline312. ].
	spec
		for: #gt
		do: [ spec package: 'XML-Parser-GTExtensions' with: 'XML-Parser-GTExtensions-PavelKrivanek.60' ]