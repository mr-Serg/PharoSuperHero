Class {
	#name : #A,
	#superclass : #Object,
	#category : #'Mooc-Inheritance'
}

{ #category : #accessing }
A >> bar [ 
	^ self foo
]

{ #category : #accessing }
A >> foo [ 
	^ 10
]
