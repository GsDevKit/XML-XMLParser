obsolete - versions
version215: spec 
        <version: '2.1.5' imports: #('2.1.3-baseline')>

        spec for: #common do: [
                spec blessing: #release.
			spec package: 'XML-Parser' with: 'XML-Parser-monty.282'.
			spec package: 'XML-Tests-Parser' with: 'XML-Tests-Parser-monty.105'.
                ].