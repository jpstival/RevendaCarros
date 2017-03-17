package br.com.posgraduacao.revendacarros.controllers;

import javax.transaction.Transactional;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import br.com.posgraduacao.revendacarros.daos.CarroDAO;
import br.com.posgraduacao.revendacarros.models.*;

@Controller
@RequestMapping("/carro")
@Transactional
public class CarroController {
	@Autowired
	private CarroDAO carroDAO;

	@RequestMapping("/form")
	public ModelAndView form(Carro carro) {
		ModelAndView modelAndView = new ModelAndView("carro/form-add");
		return modelAndView;

	}

	@RequestMapping(method = RequestMethod.POST)
	public ModelAndView save(@Valid Carro carro, BindingResult bindingResult) {
		if (bindingResult.hasErrors()) {
			return form(carro);
		}
		carroDAO.save(carro);
		return new ModelAndView("redirect:/carro");
	}

	@RequestMapping(method = RequestMethod.GET, value = "/{id}")
	public ModelAndView load(@PathVariable("id") Integer id) {
		ModelAndView modelAndView = new ModelAndView("carro/form-update");
		modelAndView.addObject("carro", carroDAO.findById(id));
		return modelAndView;
	}

	@RequestMapping(method = RequestMethod.GET)
	public ModelAndView list(@RequestParam(defaultValue = "0", required = false) int page) {
		ModelAndView modelAndView = new ModelAndView("carro/list");
		modelAndView.addObject("paginatedList", carroDAO.paginated(page, 10));
		return modelAndView;
	}

	// just because get is easier here. Be my guest if you want to change.
	@RequestMapping(method = RequestMethod.GET, value = "/remove/{id}")
	public String remove(@PathVariable("id") Integer id) {
		Carro carro = carroDAO.findById(id);
		carroDAO.remove(carro);
		return "redirect:/carro";
	}

	@RequestMapping(method = RequestMethod.POST, value = "/{id}")
	public ModelAndView update(@PathVariable("id") Integer id, @Valid Carro carro, BindingResult bindingResult) {
		carro.setId(id);
		if (bindingResult.hasErrors()) {
			return new ModelAndView("carro/form-update");
		}
		carroDAO.update(carro);
		return new ModelAndView("redirect:/carro");
	}
}
