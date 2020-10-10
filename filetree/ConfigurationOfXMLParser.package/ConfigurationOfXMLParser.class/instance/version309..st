obsolete - versions
version309: spec 
        <version: '3.0.9' imports: #('3.0.6-baseline')>

        spec for: #common do: [
                spec blessing: #release.
			spec package: 'XML-Parser' with: 'XML-Parser-monty.398'.
			spec package: 'XML-Tests-Parser' with: 'XML-Tests-Parser-monty.200'.
                ].