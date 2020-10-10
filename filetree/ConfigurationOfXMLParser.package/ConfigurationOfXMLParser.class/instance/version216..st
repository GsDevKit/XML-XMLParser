obsolete - versions
version216: spec 
        <version: '2.1.6' imports: #('2.1.6-baseline')>

        spec for: #common do: [
                spec blessing: #release.
			spec package: 'XML-Parser' with: 'XML-Parser-monty.283'.
			spec package: 'XML-Tests-Parser' with: 'XML-Tests-Parser-monty.105'.
                ].