obsolete - versions
version219: spec 
        <version: '2.1.9' imports: #('2.1.6-baseline')>

        spec for: #common do: [
                spec blessing: #release.
			spec package: 'XML-Parser' with: 'XML-Parser-monty.286'.
			spec package: 'XML-Tests-Parser' with: 'XML-Tests-Parser-monty.107'.
                ].