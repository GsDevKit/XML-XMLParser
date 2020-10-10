instance creation
onFileNamed: aFileName
	^ self on:
		(XMLDecodingReadStreamAdapter nonDecodingOn:
			aFileName asXMLFileHandle rawReadStream)