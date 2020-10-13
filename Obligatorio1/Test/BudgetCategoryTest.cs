﻿using System;
using System.Collections.Generic;
using BusinessLogic;
using Microsoft.VisualStudio.TestTools.UnitTesting;

namespace Test
{
    [TestClass]
    public class BudgetCategoryTest
    {
        [TestMethod]
        public void TestCreateBudgetCategory()
        {
            Category category = new Category("testCategory");
            double amount = 100;
            BudgetCategory budgetCategory =  new BudgetCategory(category, amount);
            Assert.AreEqual(budgetCategory.Category, category);
        }

        [TestMethod]
        [ExpectedException(typeof(ArgumentNullException))]
        public void TestCreateBudgetCategoryNullCategory()
        {
            double amount = 100;
            new BudgetCategory(null, amount);
        }

        [TestMethod]
        public void TestCreateBudgetCategoryAmountWithDecimals()
        {
            Category category = new Category("testCategory");
            double amount = 100.23;
            BudgetCategory budgetCategory = new BudgetCategory(category, amount);
            Assert.AreEqual(amount, budgetCategory.Amount);
        }

        [TestMethod]
        [ExpectedException(typeof(NegativeValueErrorAttribute))]
        public void TestCreateBudgetCategoryAmountWithNegativeValue()
        {
            Category category = new Category("testCategory");
            double amount = -1;
            new BudgetCategory(category, amount);
        }

        [TestMethod]
        public void TestEqualsTrueCase()
        {
            Category category1 = new Category("testCategory");
            BudgetCategory budgetCategory1 = new BudgetCategory(category1, 0);

            Category category2 = new Category("testCategory");
            BudgetCategory budgetCategory2 = new BudgetCategory(category2, 0);

            Assert.AreEqual(budgetCategory1, budgetCategory2);

        }
        [TestMethod]
        public void TestEqualsFalseCaseDiffAmount()
        {
            Category category1 = new Category("testCategory");
            BudgetCategory budgetCategory1 = new BudgetCategory(category1, 0);

            Category category2 = new Category("testCategory");
            BudgetCategory budgetCategory2 = new BudgetCategory(category2, 100);

            Assert.AreNotEqual(budgetCategory1, budgetCategory2);

        }

        [TestMethod]
        public void TestEqualsFalseCaseDiffCategory()
        {
            Category category1 = new Category("testCategory");
            BudgetCategory budgetCategory1 = new BudgetCategory(category1, 0);

            Category category2 = new Category("WrongCategory");
            BudgetCategory budgetCategory2 = new BudgetCategory(category2, 0);

            Assert.AreNotEqual(budgetCategory1, budgetCategory2);

        }

        [TestMethod]
        public void TestEqualsFalseCaseDiffCategoryKeyWords()
        {
            Category category1 = new Category("testCategory", new List<string>(){ "Key1", "Key2" });
            BudgetCategory budgetCategory1 = new BudgetCategory(category1, 0);

            Category category2 = new Category("WrongCategory",  new List<string>(){ "Key1", "Key3" });
            BudgetCategory budgetCategory2 = new BudgetCategory(category2, 0);

            Assert.AreNotEqual(budgetCategory1, budgetCategory2);

        }
    }
}