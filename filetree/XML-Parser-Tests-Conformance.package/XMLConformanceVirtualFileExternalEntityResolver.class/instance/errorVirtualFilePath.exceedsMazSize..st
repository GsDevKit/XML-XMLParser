private
errorVirtualFilePath: aPath exceedsMazSize: aMaxSize
	XMLFileException
		formatSignal: 'Virtual file at "{1}" exceeds max size of {2} bytes'
		with: aPath
		with: aMaxSize