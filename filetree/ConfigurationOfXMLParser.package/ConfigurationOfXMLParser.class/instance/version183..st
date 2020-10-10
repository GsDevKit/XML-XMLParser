obsolete - versions
version183: spec 
        <version: '1.8.3' imports: #('1.8.3-baseline')>

        spec for: #common do: [
                spec blessing: #release.
			spec package: 'XML-Parser' with: 'XML-Parser-monty.250'.
			spec package: 'XML-Tests-Parser' with: 'XML-Tests-Parser-monty.77'.
                ].