#include "Totvs.ch"

// Super Classe
Class Animal
	data cName
	Method New() Constructor
	Method move()
EndClass
		
Method New(cName) Class Animal
  ::cName := cName
Return Self

Method move() Class Animal
Return ::cName + ' andou'

// Sub Classe
Class Peixe From Animal
	Method New() Constructor
	Method move()
EndClass
		
Method New(cName) Class Peixe
  _Super:New(cName)
Return Self

Method move() Class Peixe
Return ::cName + ' nadou'

// Sub Classe
Class Macaco From Animal
	Method New() Constructor
	Method move()
EndClass
		
Method New(cName) Class Macaco
  _Super:New(cName)
Return Self

Method move() Class Macaco
Return ::cName + ' pulou de galho em galho'


// Exemplo de uso
User Function ExecPolimorfismo()
Local oAnimal := nil // Tipo Animal

oAnimal := Animal():New('Bob')
MsgInfo(oAnimal:move(), 'Polimorfismo 1')

oAnimal := Peixe():New('Nemo')
MsgInfo(oAnimal:move(), 'Polimorfismo 2')

oAnimal := Macaco():New('Kaco')
MsgInfo(oAnimal:move(), 'Polimorfismo 3')

Return
