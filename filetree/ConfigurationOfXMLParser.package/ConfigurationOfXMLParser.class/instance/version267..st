obsolete - versions
version267: spec 
        <version: '2.6.7' imports: #('2.6.6-baseline')>

        spec for: #common do: [
                spec blessing: #release.
			spec package: 'XML-Parser' with: 'XML-Parser-monty.341'.
			spec package: 'XML-Tests-Parser' with: 'XML-Tests-Parser-monty.151'.
                ].