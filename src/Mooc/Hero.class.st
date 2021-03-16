Class {
	#name : #Hero,
	#superclass : #Object,
	#instVars : [
		'name',
		'level',
		'powers'
	],
	#category : #'Mooc-SuperHeroes'
}

{ #category : #testing }
Hero class >> isVoyageRoot [
   ^ true
]

{ #category : #accessing }
Hero >> addPower: aPower [
	self powers add: aPower
]

{ #category : #accessing }
Hero >> level [
	^ level
]

{ #category : #accessing }
Hero >> level: anObject [
	level := anObject
]

{ #category : #accessing }
Hero >> name [
	^ name
]

{ #category : #accessing }
Hero >> name: aString [
	name := aString
]

{ #category : #accessing }
Hero >> powers [
	^ powers ifNil: [ powers := Set new ]
]

{ #category : #printing }
Hero >> printOn: aStream [
	
	aStream
		nextPut: $(;
		nextPutAll: self name;
		nextPut: Character space.
	self level printOn: aStream.
	aStream nextPut: $)
]
