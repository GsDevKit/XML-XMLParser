accessing
project
	^ project
		ifNil: [ 
			| constructor |
			"Bootstrap Metacello if it is not already loaded"
			self class ensureMetacello.
			project := MetacelloMCProject new projectAttributes: self customProjectAttributes.	"Construct Metacello project"
			constructor := (Smalltalk at: #MetacelloVersionConstructor) on: self project: project.
			project loadType: #linear.	"change to #atomic if desired"
			project ]