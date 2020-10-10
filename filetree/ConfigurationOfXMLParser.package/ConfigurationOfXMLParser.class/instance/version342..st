obsolete - versions
version342: spec 
        <version: '3.4.2' imports: #('3.4.2-baseline')>

        spec for: #common do: [
                spec blessing: #release.
			spec package: 'XML-Parser' with: 'XML-Parser-monty.441'.
			spec package: 'XML-Tests-Parser' with: 'XML-Tests-Parser-monty.225'.
                ].