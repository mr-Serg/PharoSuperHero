Class {
	#name : #DieHandleTest,
	#superclass : #TestCase,
	#category : #'Mooc-Dice'
}

{ #category : #tests }
DieHandleTest >> testCreationAndAdding [

	| handle |
	handle := DieHandle new
		addDie: Die new;
		addDie: (Die withFaces: 10);
		yourself.
	self assert: handle diceNumber equals: 2
]

{ #category : #tests }
DieHandleTest >> testCreationWithSameFaces [

	| handle faces |
	faces := 12.
	handle := DieHandle new.
	self assert: handle diceNumber equals: 0.
	handle addDie: (Die withFaces: faces).
	self assert: handle diceNumber equals: 1.
	handle addDie: (Die withFaces: faces).
	self assert: handle diceNumber equals: 2.
	handle addDie: (Die withFaces: faces).
	self assert: handle diceNumber equals: 3.
	self assert: handle maxValue equals: faces * 3
]

{ #category : #tests }
DieHandleTest >> testExpressionRoll [

	| handle value |
	handle  := 2 D4 + 3 D6.
	value := (2 * 4) + (3 * 6).
	10 timesRepeat: [ self assert: (handle roll between: 5 and: value) ] 
	
]

{ #category : #tests }
DieHandleTest >> testMaxValue [

	| handle |
	handle := DieHandle new
		addDie: Die new;
		addDie: (Die withFaces: 10);
		yourself.
	self assert: handle maxValue  equals: 16
]

{ #category : #tests }
DieHandleTest >> testRoll [

	| handle |
	handle := DieHandle new
		addDie: Die new;
		addDie: (Die withFaces: 10);
		yourself.
	20 timesRepeat: [ self assert: (handle roll between: handle diceNumber  and: handle maxValue ) ]
]

{ #category : #tests }
DieHandleTest >> testSimpleHandle [

	self assert: 2 D4 diceNumber equals: 2
]

{ #category : #tests }
DieHandleTest >> testSumming [

	| handle |
	handle  := 2 D4 + 3 D6.
	self assert: handle diceNumber equals: 5.
	self assert: handle maxValue equals: (2 * 4) + (3 * 6)
	
]
