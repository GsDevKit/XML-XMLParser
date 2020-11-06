baselines
baselineOf: spec
	<baseline>
	spec
		for: #'common'
		do: [ 
			self
				bitmapCharacterSetOn: spec;
				orderPreservingDictionaryOn: spec;
				xmlWriterOn: spec.	"Packages"
			spec
				package: 'XML-Parser-Core'
					with: [ spec requires: #('OrderPreservingDictionary' 'BitmapCharacterSet') ];
				package: 'XML-Parser-Tests-Core'
					with: [ 
							spec
								requires:
									#('XML-Parser-Core' 'OrderPreservingDictionary Tests' 'BitmapCharacterSet Tests') ];
				package: 'XML-Parser-Tests-Conformance'
					with: [ spec requires: #('XML-Parser-Core' 'XMLWriter Tests' 'XML-Parser-Tests-Core') ].	"Groups"
			spec
				group: 'Core' with: #('XML-Parser-Core');
				group: 'Tools' with: #();
				group: 'Tests' with: #('XML-Parser-Tests-Core' 'XML-Parser-Tests-Conformance');
				group: 'all' with: #('Core' 'Tools' 'Tests');
				group: 'default' with: #('all') ].
	spec
		for: #'gt'
		do: [ 
			spec package: 'XML-Parser-GTExtensions' with: [ spec requires: #('XML-Parser-Core') ].
			spec
				group: 'Tools'
				with:
					#('OrderPreservingDictionary Tools' 'XMLWriter Tools' 'XML-Parser-GTExtensions') ].
	spec
		for: #'gemstone'
		do: [ 
			spec
				package: 'XML-Parser-Core'
					with: [ spec includes: 'XML-Parser-GemstoneCompatibility' ];
				package: 'XML-Parser-GemstoneCompatibility'
					with: [ spec requires: 'XML-Parser-Core' ] ].
	spec
		for: #'gs3.1.x'
		do: [ 
			spec
				package: 'XML-Parser-Core'
				with: [ 
					spec
						includes:
							#('XML-Parser-GemstoneCompatibility31x') ].
			spec
				package: 'XML-Parser-GemstoneCompatibility31x'
				with: [ spec requires: 'XML-Parser-GemstoneCompatibility' ].
			spec
				package: 'XML-Parser-Tests-Core'
				with: [ spec includes: #('XML-Parser-Tests-GemstoneCompatibility31x') ].
			spec
				package: 'XML-Parser-Tests-GemstoneCompatibility31x'
				with: [ spec requires: #('XML-Parser-Tests-Core') ] ]
