obsolete - versions
version329: spec 
        <version: '3.2.9' imports: #('3.2.9-baseline')>

        spec for: #common do: [
                spec blessing: #release.
			spec package: 'XML-Parser' with: 'XML-Parser-monty.425'.
			spec package: 'XML-Tests-Parser' with: 'XML-Tests-Parser-monty.216'.
                ].