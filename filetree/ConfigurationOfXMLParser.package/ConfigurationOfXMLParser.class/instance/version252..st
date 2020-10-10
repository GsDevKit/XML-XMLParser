obsolete - versions
version252: spec 
        <version: '2.5.2' imports: #('2.5.1-baseline')>

        spec for: #common do: [
                spec blessing: #release.
			spec package: 'XML-Parser' with: 'XML-Parser-monty.323'.
			spec package: 'XML-Tests-Parser' with: 'XML-Tests-Parser-monty.134'.
                ].