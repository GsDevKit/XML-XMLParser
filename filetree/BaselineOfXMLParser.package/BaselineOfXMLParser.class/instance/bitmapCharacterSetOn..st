prerequisites 
bitmapCharacterSetOn: spec
			
	spec
		baseline: 'BitmapCharacterSet'
      with: [ 
			spec
				loads: #('Core');
				repository: 'github://GsDevKit/BitmapCharacterSet:gemstone/filetree' ]. 
				
	spec project: 'BitmapCharacterSet Tests' copyFrom: 'BitmapCharacterSet' with: [ spec loads: #('Tests') ] 			
				
			
