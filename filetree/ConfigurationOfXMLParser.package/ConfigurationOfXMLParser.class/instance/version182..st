obsolete - versions
version182: spec 
        <version: '1.8.2' imports: #('1.0.0-baseline')>

        spec for: #common do: [
                spec blessing: #release.
			spec project: 'XMLWriter' with: '2.4.5'.
			spec package: 'XML-Parser' with: 'XML-Parser-monty.248'.
			spec package: 'XML-Tests-Parser' with: 'XML-Tests-Parser-monty.76'.
                ].