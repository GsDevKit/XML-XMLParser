obsolete - versions
version276: spec 
        <version: '2.7.6' imports: #('2.7.6-baseline')>

        spec for: #common do: [
                spec blessing: #release.
			spec package: 'XML-Parser' with: 'XML-Parser-monty.354'.
			spec package: 'XML-Tests-Parser' with: 'XML-Tests-Parser-monty.163'.
                ].