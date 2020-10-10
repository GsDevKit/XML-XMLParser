obsolete - versions
version274: spec 
        <version: '2.7.4' imports: #('2.7.4-baseline')>

        spec for: #common do: [
                spec blessing: #release.
			spec package: 'XML-Parser' with: 'XML-Parser-monty.352'.
			spec package: 'XML-Tests-Parser' with: 'XML-Tests-Parser-monty.161'.
                ].