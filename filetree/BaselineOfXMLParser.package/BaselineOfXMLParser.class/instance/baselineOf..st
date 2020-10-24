baselines
baselineOf: spec

	<baseline>
	spec
		for: #common
		do: [
			
			self 
				bitmapCharacterSetOn: spec;
				orderPreservingDictionaryOn: spec;
				xmlWriterOn: spec.		
			
			"Packages"
			spec 
				package: 'XML-Parser' with: [ spec requires: #('OrderPreservingDictionary' 'BitmapCharacterSet') ];
				package: 'XML-Parser-Tests' with: [ spec requires: #('XML-Parser' 'OrderPreservingDictionary Tests' 'BitmapCharacterSet Tests') ];
				package: 'XML-Parser-Tests-Conformance' with: [ spec requires: #('XML-Parser' 'XMLWriter Tests' 'XML-Parser-Tests') ];
				package: 'XML-Parser-GTExtensions' with: [ spec requires: #('XML-Parser') ].
			
			"Groups"
			spec
				group: 'Core' with: #('XML-Parser');
				group: 'Tools' with: #('OrderPreservingDictionary Tools' 'XMLWriter Tools' 'XML-Parser-GTExtensions'); 
				group: 'Tests' with: #('XML-Parser-Tests' 'XML-Parser-Tests-Conformance');	
				group: 'all' with: #('Core' 'Tools' 'Tests');
				group: 'default' with: #('all')	
	].
  spec
		for: #'gemstone'
		do: [
			spec
				package: 'XML-Parser' with: [ spec includes: 'XML-Parser-GemstoneCompatibility' ];
				package: 'XML-Parser-GemstoneCompatibility' with: [ spec requires: 'XML-Parser' ]
	].
	spec
		for: #'gs3.1.x'
		do: [ 
			spec package: 'XML-Parser' with: [ spec includes: #('XML-Parser-GemstoneCompatibility' 'XML-Parser-GemstoneCompatibility31x')].
			spec package: 'XML-Parser-GemstoneCompatibility' with: [ spec requires: 'XML-Parser' ].
			spec package: 'XML-Parser-GemstoneCompatibility31x' with: [ spec requires: 'XML-Parser-GemstoneCompatibility' ].
			spec	package: 'XML-Parser-Tests' with: [ spec includes: #('XML-Parser-Tests-GemstoneCompatibility31x') ].
			spec package: 'XML-Parser-Tests-GemstoneCompatibility31x' with: [ spec requires: #('XML-Parser-Tests') ].
		].
