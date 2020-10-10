obsolete - versions
version344: spec 
        <version: '3.4.4' imports: #('3.4.2-baseline')>

        spec for: #common do: [
                spec blessing: #release.
			spec package: 'XML-Parser' with: 'XML-Parser-monty.443'.
			spec package: 'XML-Tests-Parser' with: 'XML-Tests-Parser-monty.226'.
                ].