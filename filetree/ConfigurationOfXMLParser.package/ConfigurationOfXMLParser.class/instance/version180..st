obsolete - versions
version180: spec 
        <version: '1.8.0' imports: #('1.0.0-baseline')>

        spec for: #common do: [
                spec blessing: #release.
			spec project: 'XMLWriter' with: '2.4.4'.
			spec package: 'XML-Parser' with: 'XML-Parser-monty.246'.
			spec package: 'XML-Tests-Parser' with: 'XML-Tests-Parser-monty.74'.
                ].