#include "Totvs.ch"

// Super Classe
Class Pessoa
	private data cName as string

	Method New() Constructor
	Method getName()
EndClass

Method New(cName) Class Pessoa
  ::cName := cName
Return Self

Method getName() Class Pessoa
Return ::cName

// Exemplo de uso
User Function ExecEncapsulamento()
Local oPessoa := nil

oPessoa := Pessoa():New('Jose')
msgInfo('O nome é ' + oPessoa:getName(), 'Encapsulamento')
Return
