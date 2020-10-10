obsolete - versions
version194: spec 
        <version: '1.9.4' imports: #('1.9.4-baseline')>

        spec for: #common do: [
                spec blessing: #release.
			spec package: 'XML-Parser' with: 'XML-Parser-monty.261'.
			spec package: 'XML-Tests-Parser' with: 'XML-Tests-Parser-monty.86'.
                ].