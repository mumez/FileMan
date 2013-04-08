accessing
dialectUtilClass
	^ dialectUtilClass
		ifNil: [| subclasses |
			subclasses := FmPortableUtil subclasses.
			subclasses notEmpty
				ifTrue: [dialectUtilClass := subclasses at: 1]]