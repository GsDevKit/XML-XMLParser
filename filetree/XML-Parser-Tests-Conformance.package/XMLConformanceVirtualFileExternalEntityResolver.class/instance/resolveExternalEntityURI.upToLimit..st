resolving
resolveExternalEntityURI: anXMLURIOrURIString upToLimit: aMaxSize
	| path sourceSelector contents |

	path := anXMLURIOrURIString asXMLURI path.
	sourceSelector := self virtualFileClass sourceSelectorForPath: path.
	(self virtualFileClass respondsTo: sourceSelector)
		ifFalse: [
			self
				errorCannotResolveVirtualFilePath: path
				withSelector: sourceSelector].

	contents := self virtualFileClass perform: sourceSelector.
	(aMaxSize notNil
		and: [contents size > aMaxSize])
		ifTrue: [
			self
				errorVirtualFilePath: path
				exceedsMazSize: aMaxSize].

	^ DTDDecodedResolvedExternalParsedEntityReplacement contents: contents.