obsolete - versions
version206: spec 
        <version: '2.0.6' imports: #('2.0.5-baseline')>

        spec for: #common do: [
                spec blessing: #release.
			spec package: 'XML-Parser' with: 'XML-Parser-monty.274'.
			spec package: 'XML-Tests-Parser' with: 'XML-Tests-Parser-monty.96'.
                ].