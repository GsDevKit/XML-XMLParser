obsolete - versions
version301: spec 
        <version: '3.0.1' imports: #('2.9.7-baseline')>

        spec for: #common do: [
                spec blessing: #release.
			spec package: 'XML-Parser' with: 'XML-Parser-monty.387'.
			spec package: 'XML-Tests-Parser' with: 'XML-Tests-Parser-monty.193'.
                ].