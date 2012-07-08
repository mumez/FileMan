versions
version038: spec
	<version: '0.3.8' imports: #('0.3-baseline')>

	spec for: #common do:[
		spec blessing: #beta.
		
		spec 
			package: 'FileMan-Core' with: 'FileMan-Core-mu.2';
			package: 'FileMan-Example' with: 'FileMan-Example-mu.1';
			package: 'FileMan-Test' with: 'FileMan-Test-mu.1'.
	].