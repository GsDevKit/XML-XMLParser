*XML-Parser-GemstoneCompatibility
upToEnd
	"needed for compatibility with XMLReadStreamAdapter
	(GsFile>>#contents works like #upToEnd, so this is OK)"
	^ self contents