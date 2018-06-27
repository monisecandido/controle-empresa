package br.com.ifpe.empresa.controller;


import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import br.com.ifpe.empresa.dao.EmpresaDao;
import br.com.ifpe.empresa.model.Empresa;

@Controller
public class EmpresaController {
	@RequestMapping("/empresa/save")
	public void save(Empresa empresa, Model model) {
		EmpresaDao dao = new EmpresaDao();
		dao.salvar(empresa);
		model.addAttribute("msg",  "empresa incluida com sucesso");
	}

	@RequestMapping("/empresa/add")
	public String adicionarEmpresa() {
		System.out.println("Chegamos no primeiro method empresa");
		return "empresa/incluirEmpresa";
	}

	@RequestMapping("/empresa/listar")
	public String listarComTagLib() {
		return "empresa/listarEmpresa";
	}
	
}
