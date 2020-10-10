obsolete - versions
version214: spec 
        <version: '2.1.4' imports: #('2.1.3-baseline')>

        spec for: #common do: [
                spec blessing: #release.
			spec package: 'XML-Parser' with: 'XML-Parser-monty.281'.
			spec package: 'XML-Tests-Parser' with: 'XML-Tests-Parser-monty.104'.
                ].