obsolete - versions
version307: spec 
        <version: '3.0.7' imports: #('3.0.6-baseline')>

        spec for: #common do: [
                spec blessing: #release.
			spec package: 'XML-Parser' with: 'XML-Parser-monty.395'.
			spec package: 'XML-Tests-Parser' with: 'XML-Tests-Parser-monty.199'.
                ].