obsolete - versions
version308: spec 
        <version: '3.0.8' imports: #('3.0.6-baseline')>

        spec for: #common do: [
                spec blessing: #release.
			spec package: 'XML-Parser' with: 'XML-Parser-monty.397'.
			spec package: 'XML-Tests-Parser' with: 'XML-Tests-Parser-monty.200'.
                ].