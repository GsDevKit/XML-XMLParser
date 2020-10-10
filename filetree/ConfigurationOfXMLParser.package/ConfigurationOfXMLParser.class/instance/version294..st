obsolete - versions
version294: spec 
        <version: '2.9.4' imports: #('2.9.4-baseline')>

        spec for: #common do: [
                spec blessing: #release.
			spec package: 'XML-Parser' with: 'XML-Parser-monty.376'.
			spec package: 'XML-Tests-Parser' with: 'XML-Tests-Parser-monty.186'.
                ].