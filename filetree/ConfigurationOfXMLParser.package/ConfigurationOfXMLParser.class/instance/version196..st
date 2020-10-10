obsolete - versions
version196: spec 
        <version: '1.9.6' imports: #('1.9.6-baseline')>

        spec for: #common do: [
                spec blessing: #release.
			spec package: 'XML-Parser' with: 'XML-Parser-monty.263'.
			spec package: 'XML-Tests-Parser' with: 'XML-Tests-Parser-monty.86'.
                ].