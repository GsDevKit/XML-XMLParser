*XML-Parser-GemstoneCompatibility31x
copyReplaceIn: originalCollection from: startIndex to: stopIndex with: aSequenceableCollection
	"Returns a copy of the receiver in which all elements in the
	 receiver between indexes startIndex and stopIndex inclusive have
	 been replaced by those contained in aSequenceableCollection.

	 Rules, abbreviated from the ANSI specification:
		- start < 1 or start > receiver's size + 1 (error)
		- stop < start - 1 or stop > receiver's size (error)
		- stop = start - 1 and start <= receiver's size (insert between stop and start)
		- stop = start - 1 and start = receiver's size + 1 (append at the end of the new collection)
		- otherwise, replace from start through stop with the elements from replacementElements.
	"

	| selfSize seqCollSize result |
	aSequenceableCollection class isIndexable
		ifFalse: [^aSequenceableCollection _errorNotIndexable].

	selfSize := originalCollection size.
	seqCollSize := aSequenceableCollection size.
	result := originalCollection species new.
	(startIndex < 1
		or: [startIndex > (selfSize + 1)
		or: [stopIndex < (startIndex - 1)
		or: [stopIndex > selfSize]]])
			ifTrue: [^startIndex _error: #rtErrBadCopyFromTo args: {stopIndex}].

		"The stopIndex < startIndex case is an insertion/append operation."
	stopIndex = (startIndex - 1)
		ifTrue: 
			[result
				replaceFrom: 1
					to: stopIndex
					with: originalCollection
					startingAt: 1;
				replaceFrom: stopIndex + 1
					to: stopIndex + seqCollSize
					with: aSequenceableCollection
					startingAt: 1;
				replaceFrom: stopIndex + seqCollSize + 1
					to: selfSize + seqCollSize
					with: originalCollection
					startingAt: stopIndex + 1]
		ifFalse: 
			"The stopIndex >= startIndex case is the 'normal' operation."
			[result
				replaceFrom: 1
					to: startIndex - 1
					with: originalCollection
					startingAt: 1;
				replaceFrom: startIndex
					to: startIndex + seqCollSize - 1
					with: aSequenceableCollection
					startingAt: 1;
				replaceFrom: result size + 1
					to: seqCollSize + selfSize - (stopIndex - startIndex + 1)
					with: originalCollection
					startingAt: stopIndex + 1].

	^result
