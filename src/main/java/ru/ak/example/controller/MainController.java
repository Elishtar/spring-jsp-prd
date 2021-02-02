package ru.ak.example.controller;

import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;
import ru.ak.example.model.BusinessType;
import ru.ak.example.model.Transaction;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

@Controller
public class MainController {

    @Value("${welcome.message:test}")
    private String message = "Hello World";

    @RequestMapping("/")
    public ModelAndView welcome(Map<String, List<BusinessType>> model) {
        BusinessType businessType1 = new BusinessType("Sepa", 100, 97, 1, 2);
        BusinessType businessType2 = new BusinessType("Rte", 20, 20, 0, 0);
        BusinessType businessType3 = new BusinessType("Fake", 5, 4, 0, 0);

        List<BusinessType> businessTypes = new ArrayList<>();
        businessTypes.add(businessType1);
        businessTypes.add(businessType2);
        businessTypes.add(businessType3);

        model.put("table", businessTypes);
        return new ModelAndView("index", model);
    }

    @RequestMapping("/transactions")
    public ModelAndView transactions(Map<String, List<Transaction>> model) {
        Transaction transaction1 = new Transaction("1231253asjdag", "SUCCESS");
        Transaction transaction2 = new Transaction("87548674jdsjd", "SUCCESS");
        Transaction transaction3 = new Transaction("87548674jdsjd", "SUCCESS");
        Transaction transaction4 = new Transaction("87548674jdsjd", "SUCCESS");
        Transaction transaction5 = new Transaction("87548674jdsjd", "Error");

        List<Transaction> transactions = new ArrayList<>();
        transactions.add(transaction1);
        transactions.add(transaction2);
        transactions.add(transaction3);
        transactions.add(transaction4);
        transactions.add(transaction5);
//
        model.put("transactions", transactions);
        return new ModelAndView("transactions", model);
    }

    @RequestMapping("/transaction1")
    public ModelAndView transaction1(Map<String, Transaction> model) {
        Transaction transaction = new Transaction("1231253asjdag", "SUCCESS", "Some info");

        model.put("transaction", transaction);
        return new ModelAndView("transaction1", model);
    }

    @RequestMapping("/transaction2")
    public ModelAndView transaction2(Map<String, Transaction> model) {
        Transaction transaction = new Transaction("1231253asjdag", "ERROR", "Some info, for example stack trace or something else for bad transactions");

        model.put("transaction", transaction);
        return new ModelAndView("transaction2", model);
    }
}
