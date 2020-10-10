obsolete - versions
version285: spec 
        <version: '2.8.5' imports: #('2.8.3-baseline')>

        spec for: #common do: [
                spec blessing: #release.
			spec package: 'XML-Parser' with: 'XML-Parser-monty.363'.
			spec package: 'XML-Tests-Parser' with: 'XML-Tests-Parser-monty.171'.
                ].