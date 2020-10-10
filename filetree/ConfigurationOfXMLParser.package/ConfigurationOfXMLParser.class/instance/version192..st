obsolete - versions
version192: spec 
        <version: '1.9.2' imports: #('1.9.1-baseline')>

        spec for: #common do: [
                spec blessing: #release.
			spec package: 'XML-Parser' with: 'XML-Parser-monty.259'.
			spec package: 'XML-Tests-Parser' with: 'XML-Tests-Parser-monty.85'.
                ].