versions
version051: spec
	<version: '0.5.1' imports: #('0.5-baseline')>
	spec for: #common do:[
		spec blessing: #beta.
		spec 
			package: 'FileMan-Core' with: 'FileMan-Core-MasashiUmezawa.17';
			package: 'FileMan-Example' with: 'FileMan-Example-mu.1';
			package: 'FileMan-Test' with: 'FileMan-Test-mu.3'.
	].
	spec for: #squeakCommon do:[
		spec package: 'FileMan-Squeak' with: 'FileMan-Squeak-mu.3'
	].
	spec for: #squeak do:[
		spec package: 'FileMan-Overrides-Squeak' with: 'FileMan-Overrides-Squeak-mu.1'.
		spec package: 'FileMan-Adaptor-FileDirectory' with: 'FileMan-Adaptor-FileDirectory-mu.6'
	].
	spec for: #pharo do:[
		spec package: 'FileMan-Adaptor-FileSystem' with: 'FileMan-Adaptor-FileSystem-MasashiUmezawa.7'
	].