obsolete - versions
version241: spec 
        <version: '2.4.1' imports: #('2.4.1-baseline')>

        spec for: #common do: [
                spec blessing: #release.
			spec package: 'XML-Parser' with: 'XML-Parser-monty.309'.
			spec package: 'XML-Tests-Parser' with: 'XML-Tests-Parser-monty.124'.
                ].