private
try: execBlock forFileNamed: fullName

	"If fail, return nil"

	^ (self concreteStreamClass retryWithGC: execBlock until: [:result | result notNil] forFileNamed: fullName) notNil