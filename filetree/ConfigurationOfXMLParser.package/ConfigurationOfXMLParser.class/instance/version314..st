obsolete - versions
version314: spec 
        <version: '3.1.4' imports: #('3.1.2-baseline')>

        spec for: #common do: [
                spec blessing: #release.
			spec package: 'XML-Parser' with: 'XML-Parser-monty.406'.
			spec package: 'XML-Tests-Parser' with: 'XML-Tests-Parser-monty.204'.
                ].