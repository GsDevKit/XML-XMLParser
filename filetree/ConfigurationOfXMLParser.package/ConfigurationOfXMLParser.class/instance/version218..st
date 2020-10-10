obsolete - versions
version218: spec 
        <version: '2.1.8' imports: #('2.1.6-baseline')>

        spec for: #common do: [
                spec blessing: #release.
			spec package: 'XML-Parser' with: 'XML-Parser-monty.285'.
			spec package: 'XML-Tests-Parser' with: 'XML-Tests-Parser-monty.106'.
                ].