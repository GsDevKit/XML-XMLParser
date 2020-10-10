obsolete - versions
version318: spec 
        <version: '3.1.8' imports: #('3.1.2-baseline')>

        spec for: #common do: [
                spec blessing: #release.
			spec package: 'XML-Parser' with: 'XML-Parser-monty.410'.
			spec package: 'XML-Tests-Parser' with: 'XML-Tests-Parser-monty.207'.
                ].