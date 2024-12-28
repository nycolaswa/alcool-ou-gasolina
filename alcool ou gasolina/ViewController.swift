//
//  ViewController.swift
//  alcool ou gasolina
//
//  Created by Nycolas William de Andrade on 27/12/24.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var resultadoLegenda: UILabel!
  
    @IBOutlet weak var precoAlcoolCampo: UITextField!
    
    @IBOutlet weak var precoGasolinaCampo: UITextField!
    
    @IBAction func calcularCombustivel(_ sender: Any) {
        
        if let precoAlcool = precoAlcoolCampo.text {
            if let precoGasolina = precoGasolinaCampo.text {
                
              let validaCampos = self.validarCampos(precoAlcool: precoAlcool, precoGasolina: precoGasolina)
                
                if validaCampos {
                    self.calcularMelhorPreco(precoAlcool: precoAlcool, precoGasolina: precoGasolina)
                    
                }else {
                    resultadoLegenda.text = "Digite os preços para calcular!"
                }
                
                
            }
        }
    }
    
    func validarCampos(precoAlcool: String, precoGasolina: String) -> Bool {
        
        var camposValidados = true
        if precoAlcool.isEmpty{
            camposValidados = false
        }else if precoGasolina.isEmpty {
            camposValidados = false
        }
        
        return camposValidados
        
    }
    
    func calcularMelhorPreco(precoAlcool: String, precoGasolina: String){
        
        if let valorAlcool = Double(precoAlcool){
            if let valorGasolina = Double(precoGasolina){
                
                let resultadoPreco = valorAlcool / valorGasolina
                if resultadoPreco >= 0.7 {
                    self.resultadoLegenda.text = "Melhor ultilizar Gasolina!"
                }else {
                    self.resultadoLegenda.text = "Melhor ultilizar Álcool!"
                }
                
            }
        }
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

