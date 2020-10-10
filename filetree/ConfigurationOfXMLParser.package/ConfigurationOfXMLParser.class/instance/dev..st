symbolic versions
dev: spec
	<version: #'dev'>

	spec for: #'common' do: [ 
		spec
			baseline: 'XMLParser' with: [ 
				spec 
					className: 'BaselineOfXMLParser';
					repository: 'github://pharo-contributions/XML-XMLParser:master/src' ]]