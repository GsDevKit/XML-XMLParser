obsolete - versions
version322: spec 
        <version: '3.2.2' imports: #('3.2.1-baseline')>

        spec for: #common do: [
                spec blessing: #release.
			spec package: 'XML-Parser' with: 'XML-Parser-monty.414'.
			spec package: 'XML-Tests-Parser' with: 'XML-Tests-Parser-monty.210'.
                ].