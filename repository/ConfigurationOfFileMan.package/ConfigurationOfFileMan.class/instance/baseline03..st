baselines
baseline03: spec
	<version: '0.3-baseline'>

	spec for: #common do:[
		spec blessing: #baseline.
		spec repository: 'http://www.squeaksource.com/FileMan'.
		spec repository: 'http://squeaksource.blueplane.jp/FileMan'.
		spec description: 'FileMan 0.3 baseline'.
		
		spec package: 'FileMan-Core'.
		
		spec package: 'FileMan-Test' 
			with: [spec requires: #('FileMan-Core')].
		spec package: 'FileMan-Example' 
			with: [spec requires: #('FileMan-Test')].
			
		spec
			group: 'default' with: #('Core' 'Examples' 'Tests');
			group: 'Core' with: #('FileMan-Core');
			group: 'Examples' with: #('FileMan-Example' );
			group: 'Tests' with: #('FileMan-Test' ).	
	].
