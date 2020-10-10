obsolete - versions
version278: spec 
        <version: '2.7.8' imports: #('2.7.7-baseline')>

        spec for: #common do: [
                spec blessing: #release.
			spec package: 'XML-Parser' with: 'XML-Parser-monty.356'.
			spec package: 'XML-Tests-Parser' with: 'XML-Tests-Parser-monty.165'.
                ].