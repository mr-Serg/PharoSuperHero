Class {
	#name : #DieHandle,
	#superclass : #Object,
	#instVars : [
		'dice'
	],
	#category : #'Mooc-Dice'
}

{ #category : #arithmetic }
DieHandle >> + aDieHandle [

	| handle |
	handle := self class new.
	handle dice addAll: self dice; addAll: aDieHandle dice.
	^ handle 
]

{ #category : #adding }
DieHandle >> addDie: aDie [ 
	dice add: aDie 
]

{ #category : #accessing }
DieHandle >> dice [
	^ dice
]

{ #category : #testing }
DieHandle >> diceNumber [
	^ dice size.
]

{ #category : #initialization }
DieHandle >> initialize [

	super initialize.
	dice := OrderedCollection new
]

{ #category : #action }
DieHandle >> maxValue [ 

	^ dice inject: 0 into: [ :sum :each | sum + each faces ]
]

{ #category : #action }
DieHandle >> roll [ 

	^ dice inject: 0 into: [ :sum :each | sum + each roll ]
]
