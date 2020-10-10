obsolete - versions
version292: spec 
        <version: '2.9.2' imports: #('2.9.1-baseline')>

        spec for: #common do: [
                spec blessing: #release.
			spec package: 'XML-Parser' with: 'XML-Parser-monty.373'.
			spec package: 'XML-Tests-Parser' with: 'XML-Tests-Parser-monty.184'.
                ].