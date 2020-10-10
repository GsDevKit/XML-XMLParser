doits
initializeClassesForGSBaseline312
	"All lazily initialized class and class instance variables must be
	explicitly initialized on GS during installation to prevent write
	conflicts between Gems later on. 
	
	This can help identify classes that use lazy initialization:
		self findLazyInitializedClassStateInPackage: 'XML-Parser'
	"

	DTDCachingExternalEntityResolver entityCache.
	XMLAbstractFactory allSubclassesDo: [:each |
		each hasSupportedImplementation
			ifTrue: [each implementation]].
	XMLFileHandle xmlDocumentFileExtensions.
	XMLParserLimits defaultDocumentReadLimit.
	XMLStatelessStreamConverter allSubclassesDo: [:each |
		each instance].
	XMLStreamConverter
		encodingNamesAndClassesCache;
		preferredClasses;
		encodingNames;
		allSubclassesDo: [:each | each encodingNames].
	"removed"
	(XMLClassFinder classNamed: #XMLTextConverterStreamConverter)
		encodingNamesAndTextConverterClassesCache.
	"renamed"
	(XMLClassFinder classNamed: #XMLTokenContext) allSubclassesDo: [:each |
		each instance].