obsolete - versions
version200: spec 
        <version: '2.0.0' imports: #('2.0.0-baseline')>

        spec for: #common do: [
                spec blessing: #release.
			spec package: 'XML-Parser' with: 'XML-Parser-monty.268'.
			spec package: 'XML-Tests-Parser' with: 'XML-Tests-Parser-monty.91'.
                ].