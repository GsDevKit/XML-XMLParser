obsolete - baselines
baselineMaster1: spec
	<version: '1-master-baseline'>

	"default baseline inherited by others, describes basic dependencies.
	other baselines that inherit pick concrete project versions
	if loading #stable isn't enough"
	spec
		for: #common
		do: [ 
			spec
				blessing: #baseline;
				description: 'Migrated to SmalltalkHub';
				author: 'StephaneDucasse';
				timestamp: '04/30/2013';
				repository: 'http://www.smalltalkhub.com/mc/PharoExtras/XMLParser/main'.

			"other baselines choose concrete versions because this package changes
			with XMLParser to be backwards incompatible"
			spec
				project: 'XMLWriter'
				with: [
					spec 
						className: 'ConfigurationOfXMLWriter';
						versionString: #stable;
						loads: #('Core'); 
						repository: 'http://www.smalltalkhub.com/mc/PharoExtras/XMLWriter/main'.].
			spec
				project: 'XMLWriterTests'
				copyFrom: 'XMLWriter'
				with: [ spec loads: #('Tests') ].

			spec
				project: 'BitmapCharacterSet'
				with: [
					spec 
						className: 'ConfigurationOfBitmapCharacterSet';
						versionString: #stable;
						loads: #('Core'); 
						repository: 'http://www.smalltalkhub.com/mc/PharoExtras/BitmapCharacterSet/main'.].

			spec
				project: 'OrderPreservingDictionary'
				with: [
					spec 
						className: 'ConfigurationOfOrderPreservingDictionary';
						versionString: #stable; 
						loads: #('Core'); 
						repository: 'http://smalltalkhub.com/mc/PharoExtras/OrderPreservingDictionary/main'].
			spec
				project: 'OrderPreservingDictionaryTests'
				copyFrom: 'OrderPreservingDictionary'
				with: [ spec loads: #('Tests') ].

			spec 
				package: 'XML-Parser' 
				with: [spec requires: #('BitmapCharacterSet' 'OrderPreservingDictionary')].
			"some XML-Tests-Parser TestCases inherit from OrderPreservingDictionary TestCases"
			spec
				package: 'XML-Tests-Parser'
				with: [ spec requires: #('OrderPreservingDictionaryTests' 'XMLWriterTests' 'XML-Parser') ].
			
			"Core was made to only load XMLParser, CoreWithWriting loads XMLParser and XMLWriter"
			spec
				group: 'default' with: #('CoreWithWriting' 'Tests');
				group: 'Core' with: #('XML-Parser');
				group: 'CoreWithWriting' with: #('XMLWriter' 'XML-Parser');
				group: 'Tests' with: #('XML-Tests-Parser') ].