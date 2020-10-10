obsolete - versions
version338: spec 
        <version: '3.3.8' imports: #('3.3.3-baseline')>

        spec for: #common do: [
                spec blessing: #release.
			spec package: 'XML-Parser' with: 'XML-Parser-monty.437'.
			spec package: 'XML-Tests-Parser' with: 'XML-Tests-Parser-monty.224'.
                ].