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

import br.com.posgraduacao.revendacarros.daos.VendaDao;
import br.com.posgraduacao.revendacarros.models.Carro;
import br.com.posgraduacao.revendacarros.models.Venda;

@Controller
@RequestMapping("/venda")
@Transactional
public class VendaController
{

   @Autowired
   private VendaDao vendaDao;

   @RequestMapping("/form")
   public ModelAndView form(Venda venda)
   {
      ModelAndView modelAndView = new ModelAndView("venda/form-add");
      return modelAndView;

   }

   @RequestMapping(method = RequestMethod.POST)
   public ModelAndView save(@PathVariable("carro") Integer carroId, @Valid Venda venda, BindingResult bindingResult)
   {
	   Carro carro = new Carro();
	   carro.setId(carroId);
	   venda.getCarros().add(carro);
	  if (bindingResult.hasErrors())
      {
         return form(venda);
      }
      vendaDao.save(venda);
      return new ModelAndView("redirect:/venda");
   }

   @RequestMapping(method = RequestMethod.GET, value = "/{id}")
   public ModelAndView load(@PathVariable("id") Integer id)
   {
      ModelAndView modelAndView = new ModelAndView("pessoa/form-update");
      modelAndView.addObject("pessoa", vendaDao.findById(id));
      return modelAndView;
   }

   @RequestMapping(method = RequestMethod.GET)
   public ModelAndView list(@RequestParam(defaultValue = "0", required = false) int page)
   {
      ModelAndView modelAndView = new ModelAndView("venda/list");
      modelAndView.addObject("paginatedList", vendaDao.paginated(page, 10));
      return modelAndView;
   }

   //just because get is easier here. Be my guest if you want to change.
   @RequestMapping(method = RequestMethod.GET, value = "/remove/{id}")
   public String remove(@PathVariable("id") Integer id)
   {
      Venda venda = vendaDao.findById(id);
      vendaDao.remove(venda);
      return "redirect:/venda";
   }

   @RequestMapping(method = RequestMethod.POST, value = "/{id}")
   public ModelAndView update(@PathVariable("id") Integer id, @Valid Venda venda, BindingResult bindingResult)
   {
      venda.setId(id);
      if (bindingResult.hasErrors())
      {
         return new ModelAndView("venda/form-update");
      }
      vendaDao.update(venda);
      return new ModelAndView("redirect:/venda");
   }
   
}
