obsolete - versions
version263: spec 
        <version: '2.6.3' imports: #('2.6.3-baseline')>

        spec for: #common do: [
                spec blessing: #release.
			spec package: 'XML-Parser' with: 'XML-Parser-monty.335'.
			spec package: 'XML-Tests-Parser' with: 'XML-Tests-Parser-monty.145'.
                ].