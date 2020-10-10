obsolete - versions
version245: spec 
        <version: '2.4.5' imports: #('2.4.4-baseline')>

        spec for: #common do: [
                spec blessing: #release.
			spec package: 'XML-Parser' with: 'XML-Parser-monty.315'.
			spec package: 'XML-Tests-Parser' with: 'XML-Tests-Parser-monty.128'.
                ].