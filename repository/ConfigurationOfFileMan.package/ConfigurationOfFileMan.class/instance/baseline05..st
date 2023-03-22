baselines
baseline05: spec
	<version: '0.5-baseline'>

	spec for: #common do:[
		spec blessing: #baseline.
		spec repository: 'http://www.squeaksource.com/FileMan'.
		spec repository: 'https://squeaksource.blueplane.jp/FileMan'.
		spec description: 'FileMan 0.5 baseline'.
		
		spec package: 'FileMan-Core'.
		
		spec package: 'FileMan-Squeak'.
		spec group: 'Dialect' with: #('FileMan-Squeak').
		
		spec package: 'FileMan-Adaptor-FileDirectory' with: [spec requires: #('FileMan-Core' 'Dialect')].
		spec package: 'FileMan-Adaptor-FileSystem' with: [spec requires: #('FileMan-Core' 'Dialect')].
		spec for: #squeak do:[
			spec group: 'Dialect' with: #('FileMan-Overrides-Squeak').
			spec group: 'Adapter' with: #('FileMan-Adaptor-FileDirectory')
		].
		spec for: #pharo do:[spec group: 'Adapter' with: #('FileMan-Adaptor-FileSystem')].
		
		spec
			group: 'Core' with: #('FileMan-Core');
			group: 'Examples' with: #('FileMan-Example' );
			group: 'Tests' with: #('FileMan-Test' ).
			
		spec group: 'default' with: #('Core' 'Dialect' 'Adapter' 'Examples' 'Tests').
	].
