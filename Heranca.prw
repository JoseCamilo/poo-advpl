#include "Totvs.ch"

// Super Classe
Class Aluno From Pessoa
	data cSchool as string

	Method New() Constructor
	Method print()
EndClass

Method New(cName, cSchool) Class Aluno
  _Super:New(cName)
  ::cSchool := cSchool
Return Self

Method print() Class Aluno
Return _Super:getName() + ' cursa ' + ::cSchool

// Exemplo de uso
User Function ExecHeranca()
Local oAluno := nil

oAluno := Aluno():New('Diego', 'Enfermagem')
msgInfo(oAluno:print(), 'Herança')
Return




// Teste de Niveis
Class Bisavo
	data cName as string
	Method New() Constructor
EndClass

Method New(cName) Class Bisavo
  ::cName := cName
Return Self

Class Avo From Bisavo
	Method New() Constructor
EndClass

Method New(cName) Class Avo
  _Super:New(cName)
Return Self

Class Pai From Avo
	Method New() Constructor
EndClass

Method New(cName) Class Pai
  _Super:New(cName)
Return Self

Class Filha From Pai
	Method New() Constructor
EndClass

Method New(cName) Class Filha
  _Super:New(cName)
Return Self

Class Neta From Filha
	Method New() Constructor
EndClass

Method New(cName) Class Neta
  _Super:New(cName)
Return Self

Class Bisneta From Neta
	Method New() Constructor
EndClass

Method New(cName) Class Bisneta
  _Super:New(cName)
Return Self

Class Tataraneta From Bisneta
	Method New() Constructor
EndClass

Method New(cName) Class Tataraneta
  _Super:New(cName)
Return Self


// Exemplo de uso
User Function ExecNivHera()
Local oAluno := nil

oAluno := Tataraneta():New('Diego')
msgInfo(oAluno:cName, 'Herança')
Return
