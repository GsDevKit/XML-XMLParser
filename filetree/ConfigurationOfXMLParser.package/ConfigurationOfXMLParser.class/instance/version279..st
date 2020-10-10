obsolete - versions
version279: spec 
        <version: '2.7.9' imports: #('2.7.7-baseline')>

        spec for: #common do: [
                spec blessing: #release.
			spec package: 'XML-Parser' with: 'XML-Parser-monty.357'.
			spec package: 'XML-Tests-Parser' with: 'XML-Tests-Parser-monty.165'.
                ].