Extension { #name : #Integer }

{ #category : #'*Mooc' }
Integer >> D10 [

	^ self D: 10
]

{ #category : #'*Mooc' }
Integer >> D12 [

	^ self D: 12
]

{ #category : #'*Mooc' }
Integer >> D20 [

	^ self D: 20
]

{ #category : #'*Mooc' }
Integer >> D4 [

	^ self D: 4
]

{ #category : #'*Mooc' }
Integer >> D6 [

	^ self D: 6
]

{ #category : #'*Mooc' }
Integer >> D: anInteger [

	| handle |
	handle := DieHandle new.
	self timesRepeat: [ handle addDie: (Die withFaces: anInteger ) ].
	^ handle 
]
