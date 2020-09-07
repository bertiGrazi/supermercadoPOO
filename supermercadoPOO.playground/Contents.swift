import UIKit

class Produto{
    var nome: String
    var validade: String
    var fabricante: String
    var preco: Double
    var codigo: Int
    
    init(nome: String, validade: String, fabricante: String, preco:Double, codigo:Int){
        self.nome = nome
        self.validade = validade
        self.fabricante = fabricante
        self.preco = preco
        self.codigo = codigo
}
    func estaNaValidade() -> Bool{
        if validade > "2019"{
            return true
        } else {
            return false
        }
    }
    func temProduto() -> Bool{
        if codigo > 1000 && codigo <= 2000{
            return true
        } else if codigo > 2000 && codigo <= 3000 {
            return true
        } else if codigo > 3000 && codigo <= 4000{
            return true
        } else {
            return false
        }
        
    }
    func marcaEmPromocao() -> Bool{
        if fabricante == "Grupo Coca-Cola"{
            return true
        } else {
           return false
        }
        
    }
    func corredor() -> Bool{
       
        
        if codigo > 1000 && codigo <= 2000{
            return true
            
        } else if codigo > 2000 && codigo <= 3000 {
          return true
        } else if codigo > 3000 && codigo <= 4000{
            return true
        } else {
            return false
        }
    }
    func comprouUmLevaDois() -> Bool{
        if fabricante == "Johnson & Jonson"{
            return true
        } else {
            return false
        }
    }
}

class Cliente: Produto{
    var cpf: Int
    var nomeDoCliente: String
    var genero: String
    var dataNascimento: String
    var endereco: String
    
    init(nome: String, validade: String, fabricante: String, preco: Double, codigo: Int, cpf: Int, nomeDoCliente: String, genero: String, dataNascimento: String, endereco: String) {
        
        self.cpf = cpf
        self.nomeDoCliente = nomeDoCliente
        self.genero = genero
        self.dataNascimento = dataNascimento
        self.endereco = endereco
        
        super.init(nome: nome, validade: validade, fabricante: fabricante, preco: preco, codigo: codigo)
    }
    
    func temCadastro() -> Bool{
        if cpf == self.cpf {
            return true
        } else {
            return false
        }
    }
    func temCartao() -> Bool{
        if cpf == self.cpf{
            return true
        } else {
            return false
        }
    }
    func entregaFree(){
        if preco > 250{
            print("Frete gratis")
        } else {
            print("Frete: R$7,00")
        }
    }
    func primeiraCompra() -> Bool{
        if nomeDoCliente == self.nomeDoCliente {
           return false
        } else {
            return true
        }
    }
    func enderecoMudou() -> Bool{
        if endereco == self.endereco{
            return false
        } else {
            return true
        }
    }
}


class Pagamento: Produto{
    
    var formaDePagamento: String
    var valorTotal: Double
    var cupom: Bool
    var quantidadeDeProdutos: Int
    var bandeira: String
    
    
    
    init(nome: String, validade: String, fabricante: String, preco: Double, codigo: Int, formaDePagamento: String, valorTotal: Double, cupom: Bool, quantidadeDeProdutos: Int, bandeira: String) {
        
        self.formaDePagamento = formaDePagamento
        self.valorTotal = valorTotal
        self.cupom = cupom
        self.quantidadeDeProdutos = quantidadeDeProdutos
        self.bandeira = bandeira
        
        
        super.init(nome: nome, validade: validade, fabricante: fabricante, preco: preco, codigo: codigo)
    }
    
    func pagamentoAVista(){
        if formaDePagamento == "Débito"{
            print("Desconto de 10% no valor total")
        } else {
            print("Parcelamento em até 6 vezes nas compras acima de R$700,00")
        }
    }
    func desconto(){
        if valorTotal > 250 && valorTotal <= 500 {
            print("Desconto de 5%")
        } else if valorTotal > 500 && valorTotal < 1000{
            print("Desconto de 15%")
        } else {
            print("Esse valor não há desconto")
        }
    }
    func parcelas(){
        if formaDePagamento == "Crédito" && valorTotal > 500 && valorTotal < 700{
            print("Você ganhou um desconto de 15% sobre o valor total")
        } else if formaDePagamento == "Crédito" &&  valorTotal > 700{
            print("Você ganhou um desconto de 15% sobre o valor total e poderá pagar em até 6 vezes no cartão de crédito")
        } else {
            print("Parcelamento em até 3x no cartão de crédito nas compras acima de R$150,00")
        }
    }
    func meusPedidos(){
        if quantidadeDeProdutos > 50 {
            print("Vocè ganhou cupom MAIS50FREE\n")
            print("MAIS50FREE: frete gratis")
        } else {
            print("cupom bloqueado")
        }
    }
    func qualBandeira(){
        if bandeira == "MasterCard"{
            print("MasterCard")
        } else if bandeira == "Visa"{
            print("Visa")
            print("No cartão VISA parcelamos em 6 vezes nas compras acima de R$200,00")
        } else if bandeira == "Elo"{
            print("Elo")
        } else if bandeira == "VR" || bandeira == "Ticket Alimentação"{
            print("Pagamento a vista independente do valor")
       
            }
  
    }
}

/*let produto01 = Produto(nome:"Arroz", validade: "2021",fabricante: "Tio Joã0", preco: 9.50, codigo: 1050)

    print(produto01.nome)
    print(produto01.validade)
    print(produto01.fabricante)
    print(produto01.preco)
    print(produto01.codigo)

    produto01.estaNaValidade()

let cliente01 = Cliente(nome: "Arroz", validade: "2021", fabricante: "Tio João", preco: 9.50, codigo: 1050, cpf: 22222222222, nomeDoCliente: "Jeronimo Luis", genero: "Masculino", dataNascimento: "31/03/1966", endereco: "Rua dos Pinheiros, 499")

    print(cliente01.cpf)
    print(cliente01.nomeDoCliente)
    print(cliente01.genero)
    print(cliente01.dataNascimento)
    print(cliente01.endereco)

    cliente01.temCartao()*/
    
    
let pagamento = Pagamento(nome: "Arroz", validade: "2019", fabricante: "Tio João", preco: 9.50, codigo: 1050, formaDePagamento: "Crédito", valorTotal: 9.50, cupom: false, quantidadeDeProdutos: 1, bandeira: "Visa")

    print(pagamento.formaDePagamento)
    print(pagamento.valorTotal)
    print(pagamento.cupom)
    print(pagamento.quantidadeDeProdutos)
    print(pagamento.bandeira)

    print(pagamento.qualBandeira())
    print(pagamento.meusPedidos())
    print(pagamento.pagamentoAVista())
    print(pagamento.desconto())
    print(pagamento.parcelas())
        
