obsolete - versions
version311: spec 
        <version: '3.1.1' imports: #('3.1.1-baseline')>

        spec for: #common do: [
                spec blessing: #release.
			spec package: 'XML-Parser' with: 'XML-Parser-monty.400'.
			spec package: 'XML-Tests-Parser' with: 'XML-Tests-Parser-monty.202'.
                ].