Class {
	#name : #DieTest,
	#superclass : #TestCase,
	#category : #'Mooc-Dice'
}

{ #category : #tests }
DieTest >> testCreationWithFaces [

	| d |
	d := Die withFaces: 20.
	self assert: d faces equals: 20
]

{ #category : #tests }
DieTest >> testInitialize [ 
	| d |
	d := Die new.
	self assert: d faces equals: 6
]

{ #category : #tests }
DieTest >> testRoll [
	| d |
	d := Die new.
	100 timesRepeat: [ self assert: (d roll between: 1 and: d faces) ].
	d := Die withFaces: 20.
	100 timesRepeat: [ self assert: (d roll between: 1 and: d faces) ].	
]
