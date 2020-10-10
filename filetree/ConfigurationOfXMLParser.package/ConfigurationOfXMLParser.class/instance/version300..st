obsolete - versions
version300: spec 
        <version: '3.0.0' imports: #('2.9.7-baseline')>

        spec for: #common do: [
                spec blessing: #release.
			spec package: 'XML-Parser' with: 'XML-Parser-monty.383'.
			spec package: 'XML-Tests-Parser' with: 'XML-Tests-Parser-monty.192'.
                ].