obsolete - versions
version220: spec 
        <version: '2.2.0' imports: #('2.1.6-baseline')>

        spec for: #common do: [
                spec blessing: #release.
			spec package: 'XML-Parser' with: 'XML-Parser-monty.287'.
			spec package: 'XML-Tests-Parser' with: 'XML-Tests-Parser-monty.108'.
                ].