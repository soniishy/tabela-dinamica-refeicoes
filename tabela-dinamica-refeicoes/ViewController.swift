//
//  ViewController.swift
//  tabela-dinamica-refeicoes
//
//  Created by Soni Hachtel Ishy on 3/14/21.
//  Copyright © 2021 Alura. All rights reserved.
//

import UIKit

class ViewController: UITableViewController {
    
    let refeicoes = ["Churros", "Macarrão", "Pizza"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print("tableviewcontroller foi carregado")
    }
    
    // Método número de linhas
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return refeicoes.count
    }
    
    // Método conteúdo que cada celula vai ter
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let celula = UITableViewCell(style: .default, reuseIdentifier: nil)
        
        let refeicao = refeicoes[indexPath.row]
        celula.textLabel?.text = refeicao
        
        return celula
    }
}

