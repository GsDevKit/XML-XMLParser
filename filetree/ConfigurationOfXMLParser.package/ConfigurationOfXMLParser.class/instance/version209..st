obsolete - versions
version209: spec 
        <version: '2.0.9' imports: #('2.0.5-baseline')>

        spec for: #common do: [
                spec blessing: #release.
			spec package: 'XML-Parser' with: 'XML-Parser-monty.276'.
			spec package: 'XML-Tests-Parser' with: 'XML-Tests-Parser-monty.99'.
                ].