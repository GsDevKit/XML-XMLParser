obsolete - versions
version248: spec 
        <version: '2.4.8' imports: #('2.4.8-baseline')>

        spec for: #common do: [
                spec blessing: #release.
			spec package: 'XML-Parser' with: 'XML-Parser-monty.318'.
			spec package: 'XML-Tests-Parser' with: 'XML-Tests-Parser-monty.131'.
                ].