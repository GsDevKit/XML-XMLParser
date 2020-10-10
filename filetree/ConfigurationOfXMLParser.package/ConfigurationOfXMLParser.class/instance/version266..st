obsolete - versions
version266: spec 
        <version: '2.6.6' imports: #('2.6.6-baseline')>

        spec for: #common do: [
                spec blessing: #release.
			spec package: 'XML-Parser' with: 'XML-Parser-monty.340'.
			spec package: 'XML-Tests-Parser' with: 'XML-Tests-Parser-monty.150'.
                ].