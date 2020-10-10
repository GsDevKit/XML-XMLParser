obsolete - versions
version193: spec 
        <version: '1.9.3' imports: #('1.9.3-baseline')>

        spec for: #common do: [
                spec blessing: #release.
			spec package: 'XML-Parser' with: 'XML-Parser-monty.260'.
			spec package: 'XML-Tests-Parser' with: 'XML-Tests-Parser-monty.86'.
                ].