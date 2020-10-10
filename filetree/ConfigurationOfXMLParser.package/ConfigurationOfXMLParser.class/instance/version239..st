obsolete - versions
version239: spec 
        <version: '2.3.9' imports: #('2.3.9-baseline')>

        spec for: #common do: [
                spec blessing: #release.
			spec package: 'XML-Parser' with: 'XML-Parser-monty.307'.
			spec package: 'XML-Tests-Parser' with: 'XML-Tests-Parser-monty.122'.
                ].