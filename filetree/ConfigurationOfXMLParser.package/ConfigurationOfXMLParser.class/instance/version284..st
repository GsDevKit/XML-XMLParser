obsolete - versions
version284: spec 
        <version: '2.8.4' imports: #('2.8.3-baseline')>

        spec for: #common do: [
                spec blessing: #release.
			spec package: 'XML-Parser' with: 'XML-Parser-monty.362'.
			spec package: 'XML-Tests-Parser' with: 'XML-Tests-Parser-monty.170'.
                ].