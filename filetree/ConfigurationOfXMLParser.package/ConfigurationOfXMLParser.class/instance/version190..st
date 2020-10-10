obsolete - versions
version190: spec 
        <version: '1.9.0' imports: #('1.8.8-baseline')>

        spec for: #common do: [
                spec blessing: #release.
			spec package: 'XML-Parser' with: 'XML-Parser-monty.258'.
			spec package: 'XML-Tests-Parser' with: 'XML-Tests-Parser-monty.83'.
                ].