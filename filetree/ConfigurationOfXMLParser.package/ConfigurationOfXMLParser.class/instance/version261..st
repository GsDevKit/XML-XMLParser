obsolete - versions
version261: spec 
        <version: '2.6.1' imports: #('2.6.0-baseline')>

        spec for: #common do: [
                spec blessing: #release.
			spec package: 'XML-Parser' with: 'XML-Parser-monty.331'.
			spec package: 'XML-Tests-Parser' with: 'XML-Tests-Parser-monty.143'.
                ].