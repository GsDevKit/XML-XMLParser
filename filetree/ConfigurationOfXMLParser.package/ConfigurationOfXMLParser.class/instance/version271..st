obsolete - versions
version271: spec 
        <version: '2.7.1' imports: #('2.7.0-baseline')>

        spec for: #common do: [
                spec blessing: #release.
			spec package: 'XML-Parser' with: 'XML-Parser-monty.347'.
			spec package: 'XML-Tests-Parser' with: 'XML-Tests-Parser-monty.157'.
                ].