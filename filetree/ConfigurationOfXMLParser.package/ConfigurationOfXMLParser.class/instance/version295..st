obsolete - versions
version295: spec 
        <version: '2.9.5' imports: #('2.9.5-baseline')>

        spec for: #common do: [
                spec blessing: #release.
			spec package: 'XML-Parser' with: 'XML-Parser-monty.377'.
			spec package: 'XML-Tests-Parser' with: 'XML-Tests-Parser-monty.187'.
                ].