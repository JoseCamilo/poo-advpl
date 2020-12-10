#include "Totvs.ch"

// ----------------------------------------
// Super Classe
// ----------------------------------------
Class Animal
	private data cName
	private data oOwner as Pessoa

	Method New() Constructor
	Method move()
	Method getName()
	Method setOwner()
	Method getNameOwner()
EndClass
		
Method New(cName) Class Animal
  ::cName := cName
	::setOwner(Pessoa():New('Desconhecido'))
Return Self

Method move() Class Animal
Return ' andou'

Method getName() Class Animal
Return ::cName

Method setOwner(oOwner) Class Animal
	::oOwner := oOwner
Return

Method getNameOwner() Class Animal
Return ::oOwner:getName()

// ----------------------------------------
// Sub Classe
// ----------------------------------------
Class Peixe From Animal
	Method New() Constructor
	Method move()
EndClass
		
Method New(cName) Class Peixe
  _Super:New(cName)
Return Self

Method move() Class Peixe
Return ' nadou'

// ----------------------------------------
// Sub Classe
// ----------------------------------------
Class Macaco From Animal
	Method New() Constructor
	Method move()
EndClass
		
Method New(cName) Class Macaco
  _Super:New(cName)
Return Self

Method move() Class Macaco
Return ' pulou de galho em galho'

// ----------------------------------------
// Exemplo de uso
// ----------------------------------------
User Function ExecPolimorfismo()
Local oAnimal := nil // Tipo Animal

oAnimal := Animal():New('Bob')
oAnimal:setOwner(Pessoa():New('Fernando'))
MsgInfo(oAnimal:getName() + oAnimal:move() + ' até ' + oAnimal:getNameOwner(), 'O animal')

oAnimal := Peixe():New('Nemo')
MsgInfo(oAnimal:getName() + oAnimal:move() + ' até ' + oAnimal:getNameOwner(), 'O peixe')

oAnimal := Macaco():New('Kaco')
MsgInfo(oAnimal:getName() + ' sempre' + oAnimal:move() + ' até ' + oAnimal:getNameOwner(), 'O macaco')

Return
