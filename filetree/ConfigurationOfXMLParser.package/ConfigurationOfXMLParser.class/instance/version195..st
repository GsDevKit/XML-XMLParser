obsolete - versions
version195: spec 
        <version: '1.9.5' imports: #('1.9.4-baseline')>

        spec for: #common do: [
                spec blessing: #release.
			spec package: 'XML-Parser' with: 'XML-Parser-monty.262'.
			spec package: 'XML-Tests-Parser' with: 'XML-Tests-Parser-monty.86'.
                ].