#include "Totvs.ch"

// Super Classe
Class Pet
	data cNickname as string
	data oOwner as Pessoa

	Method New() Constructor
EndClass
		
Method New(cNickname, oOwner) Class Pet
  ::cNickname := cNickname
  ::oOwner := oOwner
Return Self

// Exemplo de uso
User Function ExecAssociacao()
Local oPet := nil

oPet := Pet():New('Bob', Pessoa():New('Luiz'))
msgInfo(oPet:oOwner:getName() + ' tem um pet chamado ' + oPet:cNickname, 'Associacao')
Return
