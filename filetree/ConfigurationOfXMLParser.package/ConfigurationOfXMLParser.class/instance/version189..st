obsolete - versions
version189: spec 
        <version: '1.8.9' imports: #('1.8.8-baseline')>

        spec for: #common do: [
                spec blessing: #release.
			spec package: 'XML-Parser' with: 'XML-Parser-monty.257'.
			spec package: 'XML-Tests-Parser' with: 'XML-Tests-Parser-monty.83'.
                ].