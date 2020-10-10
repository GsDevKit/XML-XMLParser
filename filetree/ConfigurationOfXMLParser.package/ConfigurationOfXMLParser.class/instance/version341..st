obsolete - versions
version341: spec 
        <version: '3.4.1' imports: #('3.3.9-baseline')>

        spec for: #common do: [
                spec blessing: #release.
			spec package: 'XML-Parser' with: 'XML-Parser-monty.440'.
			spec package: 'XML-Tests-Parser' with: 'XML-Tests-Parser-monty.224'.
                ].