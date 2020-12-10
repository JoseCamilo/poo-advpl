# POO AdvPL V12

## Conteúdo

- [Paradigma de Programação](#paradigma)
- [Pilares da POO](#pilares)
  - [Abstração](#abstracao)
  - [Herança](#heranca)
  - [Encapsulamento](#encapsulamento)
  - [Polimorfismo](#polimorfismo)
- [No AdvPL](#noadvpl)
  - [Encapsulamento](#encapsulamento-noadvpl)
  - [Herança](#heranca-noadvpl)
- [Conclusão](#conclusao)
- [Material de Apresentação](#apresentacao)


<a id="paradigma"></a>
## Paradigma de Programação

Na programação estruturada, um programa é tipicamente escrito em uma única rotina (ou função) podendo, é claro, ser quebrado em sub-rotinas. Mas o fluxo do programa continua o mesmo. Além disso, o acesso às variáveis não possuem muitas restrições.

A programação orientada a objetos surgiu como uma alternativa a essas características da programação estruturada. Também teve o intuito de aproximar o uso das estruturas de um programa ao uso das coisas do mundo real, os “objetos”.

---

<a id="pilares"></a>
## Pilares da POO
Programação Orientada a Objetos é um modelo de análise, projeto e programação de software baseado na composição e interação entre diversas unidades chamadas de 'objetos'.

<a id="abstracao"></a>
### Abstração
É utilizada para a definição de entidades do mundo real, considerando as suas características e ações.

<a id="heranca"></a>
### Herança
Assim como um filho pode herdar alguma característica do pai, na Orientação a Objetos é permitido que uma classe herde atributos e métodos da outra.

<a id="encapsulamento"></a>
### Encapsulamento
É a técnica utilizada para esconder uma ideia, ou seja, não expor detalhes internos para o usuário, tornando partes do sistema mais independentes.

<a id="polimorfismo"></a>
### Polimorfismo
É a possibilidade de em uma hierarquia de classes implementar métodos com a mesma assinatura e, assim, responderem a mesma mensagem, cada uma de uma forma diferente.

---

<a id="noadvpl"></a>
## No AdvPL
Assim como em toda linguagem de programação, o AdvPL também tem suas particularidades em POO.

<a id="encapsulamento-noadvpl"></a>
### Encapsulamento

- Na v11, todo o escopo da classe era publico para utilização pela instância do objeto.
- Na V12 foi adicionado a palavra reservada `Private`, possibilitando a proteção de atributos e métodos para isso na instância.

<a id="heranca-noadvpl"></a>
### Herança

- É feita através da palavra reservada `From`.
- Não é possível fazer uma herança múltipla.
- Os atributos e métodos da classe pai são acessados por `self:` ou `::`.
- Os métodos da classe pai são acessados com a palavra reservada `_Super`, exatamente, é CaseSensitive. Se o método não for sobrescrito, pode ser usado `self:` ou `::` com a devida atenção, em construtor nem pensar. 
- Na v11 era possível somente 2 níveis, pois a instância entrava em loop gerando o erro “stack depth overflow”. Na v12 testei 7 níveis e tudo ok hehe.
- Não há escopo restrito para os atributos e métodos, todos os atributos são visíveis e os métodos são virtuais que podem ser usados ou sobrescritos na classe filha.

---

<a id="conclusao"></a>
## Conclusão

A abstração e a definição de responsabilidades, simplifica o código e deixa a manutenção mais assertiva.
Com polimorfismo, temos uma padronização de assinaturas mas com resultados específicos.
No encapsulamento, temos a proteção de dados e o tratamento correto na disponibilização da informação.
Usando a herança e associação, temos a reutilização plena e segura de código.
	
---

<a id="apresentacao"></a>
## Material de Apresentação
Entenda o repositório usando o [material de apresentação](https://docs.google.com/presentation/d/1imXjzH8zinC_o-euUbrD2NajYJCNJiAPuHNaapt6Klo/edit?usp=sharing)