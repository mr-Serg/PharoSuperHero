Class {
	#name : #B,
	#superclass : #A,
	#category : #'Mooc-Inheritance'
}

{ #category : #accessing }
B >> bar [ 
	^ super bar + self foo
]
