prerequisites 
bitmapCharacterSetOn: spec
			
	spec
		baseline: 'BitmapCharacterSet'
      with: [ 
			spec
				loads: #('Core');
				repository: 'github://pharo-contributions/BitmapCharacterSet:1.2.x/src' ]. 
				
	spec project: 'BitmapCharacterSet Tests' copyFrom: 'BitmapCharacterSet' with: [ spec loads: #('Tests') ] 			
				
			