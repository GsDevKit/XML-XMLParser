obsolete - versions
version258: spec 
        <version: '2.5.8' imports: #('2.5.3-baseline')>

        spec for: #common do: [
                spec blessing: #release.
			spec package: 'XML-Parser' with: 'XML-Parser-monty.329'.
			spec package: 'XML-Tests-Parser' with: 'XML-Tests-Parser-monty.140'.
                ].