testing
isDataOmittable
	"unlike standard canonical XML, PI data is never omittable
	for conformance canonical XML"
	^ self isCanonical not
		and: [self hasData not]