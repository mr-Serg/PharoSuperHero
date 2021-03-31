Class {
	#name : #Power,
	#superclass : #Object,
	#instVars : [
		'name'
	],
	#category : #'Mooc-SuperHeroes'
}

{ #category : #testing }
Power class >> isVoyageRoot [
	^ true
]

{ #category : #accessing }
Power >> name [
	^ name
]

{ #category : #accessing }
Power >> name: aString [
	name := aString
]

{ #category : #printing }
Power >> printOn: aStream [ 
	
	aStream nextPutAll: 'Power-';
		nextPutAll: self name.
]
