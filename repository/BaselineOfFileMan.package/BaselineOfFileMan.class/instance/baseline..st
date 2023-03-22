baselines
baseline: spec
	<baseline>

	spec for: #'common' do: [
		spec package: 'FileMan-Core'.
		
		spec package: 'FileMan-Squeak'.
		spec group: 'Dialect' with: #('FileMan-Squeak').
		
		spec package: 'FileMan-Adaptor-FileSystem' with: [spec requires: #('FileMan-Core' 'Dialect')].
		spec package: 'FileMan-Adaptor-FileDirectory' with: [spec requires: #('FileMan-Core' 'Dialect')].
		spec package: 'FileMan-Example' with: [spec requires: #('FileMan-Core' 'Dialect')].
		spec package: 'FileMan-Test' with: [spec requires: #('FileMan-Core' 'Dialect')].
		
		spec for: #squeak do: [
			spec package: 'FileMan-Overrides-Squeak' with: [spec requires: #('FileMan-Core' 'Dialect')].
			spec group: 'Dialect' with: #('FileMan-Overrides-Squeak').
			spec group: 'Adapter' with: #('FileMan-Adaptor-FileDirectory').
		].
		spec for: #pharo do: [
			spec group: 'Adapter' with: #('FileMan-Adaptor-FileSystem').
		].
		spec
			group: 'Core' with: #('FileMan-Core');
			group: 'Examples' with: #('FileMan-Example' );
			group: 'Tests' with: #('FileMan-Test' ).
		
		spec group: 'default' with: #('Core' 'Dialect' 'Adapter' 'Examples' 'Tests').
	]