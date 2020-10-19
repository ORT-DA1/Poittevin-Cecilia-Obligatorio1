﻿using System;
using System.Collections.Generic;
using System.Linq;
using BusinessLogic;
using Microsoft.VisualStudio.TestTools.UnitTesting;

namespace Test
{
    [TestClass]
    public class RepositoryTest
    {
        private static List<string> keyWords1 = new List<string>();
        private static Repository repo = new Repository();
        private static Category categoryEntertainment;
        private static Category categoryFood;
        private static Category categoryHouse;
        private static Budget JanuaryBudget;

        [ClassInitialize()]
        public static void TestFixtureSetup(TestContext context)
        {
            keyWords1 = new List<string>
            {
                "cine",
                "teatro",
                "casino"
            };
            categoryEntertainment = new Category()
            {
                Name = "entretenimiento",
                KeyWords = keyWords1
            };
            List<string> keyWords2 = new List<string>
            {
                "restaurante",
                "McDonalds",
                "cena"
            };
            categoryFood = new Category()
            {
                Name = "comida",
                KeyWords = keyWords2
            };
            List<string> keyWords3 = new List<string>
            {
                "CoffeMaker",
                "toilet paper",
            };
            categoryHouse = new Category()
            {
                Name = "House",
                KeyWords = keyWords3
            };
            repo.AddCategoryToCategories(categoryEntertainment);
            repo.AddCategoryToCategories(categoryFood);
            repo.AddCategoryToCategories(categoryHouse);

            List<Category> categories = new List<Category>() {
                categoryEntertainment,
                categoryFood,
            };
            JanuaryBudget = new Budget(1, categories)
            {
                Year = 2020,
                TotalAmount = 0
            };
            repo.AddBudget(JanuaryBudget);

            Expense januaryExpenseFood = new Expense()
            {  
                Amount = 200,
                CreationDate = new DateTime(2020, 1, 1),
                Description = "sushi night",
                Category = categoryFood
            };
            Expense januaryExpenseFood2 = new Expense()
            {
                Amount = 110.50,
                CreationDate = new DateTime(2020, 1, 1),
                Description = "sushi night",
                Category = categoryFood
            };
            Expense januaryExpenseEntertainment = new Expense()
            {
                Amount = 230.15,
                CreationDate = new DateTime(2020, 1, 1),
                Description = "buy video game",
                Category = categoryEntertainment
            };
            repo.AddExpenseToExpenses(januaryExpenseFood);
            repo.AddExpenseToExpenses(januaryExpenseFood2);
            repo.AddExpenseToExpenses(januaryExpenseEntertainment);
        }

        [TestMethod]
        public void FindCategoryEntertainment()
        {
            string description = "cuando fuimos al cine";
            Category expectedCategory = repo.FindCategoryByDescription(description);
            Assert.AreEqual(categoryEntertainment, expectedCategory);

        }

        [TestMethod]
        public void FindCategoryNullValueResultForEntertainment()
        {
            string description = "noche de videojuegos";
            Category expectedCategory = repo.FindCategoryByDescription(description);
            Assert.IsNull(expectedCategory);
        }

        [TestMethod]
        public void FindCategoryNullValueResultFood()
        {
            string description = "cuando fuimos a comer";
            Category expectedCategory = repo.FindCategoryByDescription(description);
            Assert.IsNull(expectedCategory);

        }

        [TestMethod]
        public void FindCategoryNullValueResultForFood()
        {
            string description = "cuando fuimos a comer a McDonalds";
            Category expectedCategory = repo.FindCategoryByDescription(description);
            Assert.AreEqual(categoryFood, expectedCategory);

        }

        [TestMethod]
        public void FindExpenseByDescription()
        {
            string description = "cine";
            Expense expense = new Expense { Description = description, Amount = 23, Category = categoryFood, CreationDate = new DateTime(2020,01,01)};
            repo.AddExpense(expense);
            Expense expectedExpense = repo.FindExpense(description);
            Assert.AreEqual(expense, expectedExpense);


        [TestMethod]
        public void FindExpenseNullByDescription()
        {
            string description = "cena";
            Expense expectedExpense = repo.FindExpense(description);
            Assert.IsNull(expectedExpense);

        }



        [TestMethod]
        public void MonthsOrderedInWhichAreExpenses()
        {

            List<string> months = new List<string>()
            {
            "Enero",
            "Mayo",
            };
            DateTime month1 = new DateTime(2020, 1, 24);
            DateTime month5 = new DateTime(2020, 5, 24);
            Expense expense1 = new Expense { Amount = 23, CreationDate = month1, Description = "cine" };
            Expense expense2 = new Expense { Amount = 23, CreationDate = month5, Description = "cine" };
            List<Expense> expenses = new List<Expense>()
            {
                expense1,
                expense2,
            };
            Repository repo = new Repository();
            repo.Expenses = expenses;
            List<string> monthsOrder = repo.OrderedMonthsInWhichThereAreExpenses();
            Assert.AreEqual(months[0], monthsOrder[0]);
            Assert.AreEqual(months[1], monthsOrder[1]);

        }


        [TestMethod]
        public void ExpenseAmountByMonthInWhichAreExpenses()
        {
            string month = "Agosto";

            DateTime month1 = new DateTime(2020, 8, 24);
            DateTime month2 = new DateTime(2020, 8, 24);
            DateTime month3 = new DateTime(2020, 1, 24);
            Expense expense1 = new Expense { Amount = 23, CreationDate = month1, Description = "cine" };
            Expense expense2 = new Expense { Amount = 23, CreationDate = month2, Description = "cine" };
            Expense expense3 = new Expense { Amount = 23, CreationDate = month3, Description = "casino" };
            List<Expense> expenses = new List<Expense>() {
            expense1,
            expense2,
            expense3,
            };
            Repository repository = new Repository();
            repository.Expenses = expenses;
            double totalAmount = repository.AmountOfExpensesInAMonth(month);
            Assert.AreEqual(46, totalAmount);

        }

        [TestMethod]
        public void ExpenseAmountByMonthInWhichAreNoExpenses()
        {
            string month = "Agosto";
            DateTime month1 = new DateTime(2020, 2, 24);
            DateTime month2 = new DateTime(2020, 3, 24);
            DateTime month3 = new DateTime(2020, 1, 24);
            Expense expense1 = new Expense { Amount = 23, CreationDate = month1, Description = "cine" };
            Expense expense2 = new Expense { Amount = 23, CreationDate = month2, Description = "cine" };
            Expense expense3 = new Expense { Amount = 21, CreationDate = month3, Description = "casino" };
            List<Expense> expenses = new List<Expense>()
            {
                expense1,
                expense2,
                expense3,
            };
            Repository repository = new Repository();
            repository.Expenses = expenses;
            double totalAmount = repository.AmountOfExpensesInAMonth(month);
            Assert.AreEqual(0, totalAmount);

        }

        [TestMethod]
        public void ExpenseAmountByMonthInWhichIsAnExpense()
        {
            string month = "Agosto";
            DateTime month1 = new DateTime(2020, 8, 24);
            DateTime month2 = new DateTime(2020, 2, 24);
            DateTime month3 = new DateTime(2020, 1, 24);
            Expense expense1 = new Expense { Amount = 23.5, CreationDate = month1, Description = "cine" };
            Expense expense2 = new Expense { Amount = 23, CreationDate = month2, Description = "cine" };
            Expense expense3 = new Expense { Amount = 21, CreationDate = month3, Description = "casino" };
            List<Expense> expenses = new List<Expense>() {
            expense1,
            expense2,
            expense3,
            };
            Repository repository = new Repository();
            repository.Expenses = expenses;
            double totalAmount = repository.AmountOfExpensesInAMonth(month);
            Assert.AreEqual(23.5, totalAmount);

        }

        [TestMethod]
        public void ExpensesByMonth()
        {
            string month = "Enero";
            Expense expense1 = new Expense { Amount = 23, CreationDate = new DateTime(2020, 01, 01), Description = "Cuando fui al cine" };
            Expense expense2 = new Expense { Amount = 19, CreationDate = new DateTime(2020, 11, 01), Description = "Cuando fui al cine" };
            List<Expense> expenses = new List<Expense>(){
                expense1,
                expense2,
            };
            Repository repository = new Repository();
            repository.Expenses = expenses;
            Assert.AreEqual(expense1, repository.GetExpense(month).ToArray()[0]);

        }

        [TestMethod]
        public void ExpensesByMonthEmpty()
        {
            string month = "Mayo";
            Expense expense1 = new Expense { Amount = 23, CreationDate = new DateTime(2020, 01, 01), Description = "Cuando fui al cine" };
            Expense expense2 = new Expense { Amount = 19, CreationDate = new DateTime(2020, 11, 01), Description = "Cuando fui al cine" };
            List<Expense> expenses = new List<Expense>(){
                expense1,
                expense2,
            };
            Repository repository = new Repository();
            repository.Expenses = expenses;
            Assert.AreEqual(0, repository.GetExpense(month).Count);
        }

        [TestMethod]
        [ExpectedException(typeof(ExcepcionInvalidRepeatedNameCategory), "")]
        public void AddCategoryInvalidAddingTwice()
        {
            Repository emptyRepository = new Repository();
            string categoryName = "Hogar";
            Category category = new Category { Name = categoryName };
            emptyRepository.AddCategory(category);
            emptyRepository.AddCategory(category);

        }

        [TestMethod]
        [ExpectedException(typeof(ExcepcionInvalidRepeatedNameCategory), "")]
        public void AddCategoryAlreadyUsedName()
        {
            string categoryName = "Entretenimiento";
            Category category2 = new Category { Name = categoryName };
            repo.AddCategory(category2);

        }

        [TestMethod]
        public void AddCategoryValidData()
        {
            String categoryName = "Entretenimiento";
            List<string> keyWords = new List<string>()
            {
                "cine",
                "sala de juegos",
            };
            Category category = new Category { Name = categoryName, KeyWords = keyWords };
            Repository repository = new Repository();
            repository.AddCategory(category);
            String categoryName2 = "Comida";
            List<string> keyWords2 = new List<string>()
            {
                "restaurant",
            };
            Category category2 = new Category { Name = categoryName2, KeyWords = keyWords2 };
            repository.AddCategory(category2);
            Assert.AreEqual(category, repository.Categories.ToArray()[0]);
            Assert.AreEqual(category2, repository.Categories.ToArray()[1]);
        }

        [TestMethod]
        [ExpectedException(typeof(ExcepcionInvalidRepeatedKeyWordsCategory), "")]
        public void AddCategoryInvalidKeyWords()
        {
            Repository repository = new Repository();
            String categoryName = "NameExample";
            List<string> keyWords = new List<string>
            {
                "cine",
                "teatro"
            };
            Category category = new Category { Name = categoryName, KeyWords = keyWords };
            repository.AddCategory(category);
            String categoryName2 = "NameExample2";
            List<string> keyWords2 = new List<string>
            {
                "cine",
                "teatro"
            };
            Category category2 = new Category { Name = categoryName2, KeyWords = keyWords2 };
            repository.AddCategory(category2);
            Assert.AreEqual(category, repository.Categories.ToArray()[0]);
        }

        [TestMethod]
        public void AddCategoryValidKeyWords()
        {
            Repository repository = new Repository();

            String categoryName = "Entretenimiento";
            List<string> keyWords = new List<string>()
            {
                "cine",
                "sala de juego",
            };
            Category category = new Category { Name = categoryName, KeyWords = keyWords };
            repository.AddCategory(category);
            String categoryName2 = "Comida";
            List<string> keyWords2 = new List<string>();
            keyWords2.Add("restaurant");
            Category category2 = new Category { Name = categoryName2, KeyWords = keyWords2 };
            repository.AddCategory(category2);
            Assert.AreEqual(category, repository.Categories.ToArray()[0]);
            Assert.AreEqual(category2, repository.Categories.ToArray()[1]);
        }

        [TestMethod]
        [ExpectedException(typeof(ExcepcionExpenseWithEmptyCategory), "")]
        public void AddExpenseNullCategory()
        {
            DateTime month = new DateTime(2020, 1, 24);
            Repository repository = new Repository();
            Expense expense = new Expense { Amount = 23.5, CreationDate = month, Description = "cine" };
            repository.AddExpense(expense);
        }

        [TestMethod]
        public void AddExpenseValidData()
        {
            String categoryName = "Entretenimiento";
            List<string> keyWords = new List<string>()
            {
                "cine",
                "teatro",
            };
            Category category = new Category { Name = categoryName, KeyWords = keyWords };
            List<Category> categories = new List<Category>();
            categories.Add(category);
            DateTime month = new DateTime(2020, 1, 24);
            Expense expense = new Expense { Amount = 23.5, CreationDate = month, Description = "cine" };
            expense.Category = category;
            Repository repository = new Repository();
            repository.AddExpense(expense);
            Assert.AreEqual(expense, repository.Expenses.ToArray()[0]);
        }

        [TestMethod]
        public void AddRepeatedKeyWordToCategory()
        {
            bool alreadyExistKW = repo.AlreadyExistThisKeyWordInAnoterCategory("cine");
            Assert.IsTrue(alreadyExistKW);
        }


        [TestMethod]
        public void AddValidKeyWordToCategory()
        {
            bool alreadyExistKW = repo.AlreadyExistThisKeyWordInAnoterCategory("casino");
            Assert.IsTrue(alreadyExistKW);
        }

        [TestMethod]
        public void FindCategoryByName()
        {
            List<Category> categoryList = new List<Category>();
            List<string> keyWords1 = new List<string>()
            {
               "cine",
               "teatro",
               "casino",
            };
            Category category1 = new Category { Name = "entretenimiento", KeyWords = keyWords1 };
            List<string> keyWords2 = new List<string>()
            {
                "restaurante",
                "McDonalds",
                "cena",

            };
            Category category2 = new Category { Name = "comida", KeyWords = keyWords2 };
            categoryList.Add(category1);
            categoryList.Add(category2);
            Repository respoitory = new Repository(categoryList);
            Category category3 = respoitory.FindCategoryByName("entretenimiento");
            Assert.AreEqual(category1, category3);
        }

        [TestMethod]
        public void FindCategoryByNameNull()
        {
            List<Category> categoryList = new List<Category>();
            List<string> keyWords1 = new List<string>()
            {
               "cine",
               "teatro",
               "casino",
            };
            Category category1 = new Category { Name = "diversion", KeyWords = keyWords1 };
            List<string> keyWords2 = new List<string>()
             {
                "restaurante",
                "McDonalds",
                "cena",
            };
            Category category2 = new Category { Name = "comida", KeyWords = keyWords2 };
            categoryList.Add(category1);
            categoryList.Add(category2);
            Repository repo = new Repository(categoryList);
            Category category3 = repo.FindCategoryByName("entretenimiento");
            Assert.IsNull(category3);
        }

        [TestMethod]
        public void AddValidBudgetToRepository()
        {
            Budget validBudget = new Budget(DateTime.Now.Month) { 
                TotalAmount = 4000, 
                Year = DateTime.Now.Year 
            };
            Repository EmptyRepository = new Repository();
            EmptyRepository.AddBudget(validBudget);

            Budget currentBudget = EmptyRepository.Budgets.First();
            Assert.AreEqual(validBudget, currentBudget);
        }

        [TestMethod]
        [ExpectedException(typeof(ArgumentNullException))]
        public void AddInvalidNullBudgetToRepository()
        {
            Budget invalidBudget = null;
            repo.AddBudget(invalidBudget);
        }

        [TestMethod]
        public void AddValidBudgetCategoryToRepository()
        {
            BudgetCategory validBudgetCategory = new BudgetCategory { 
                Category = categoryFood, 
                Amount = 1000 
            };
            Repository EmptyRepository = new Repository();
            EmptyRepository.AddBudgetCategory(validBudgetCategory);

            BudgetCategory currentBudgetCategory = EmptyRepository.BudgetCategories.First();
            Assert.AreEqual(validBudgetCategory, currentBudgetCategory);
        }

        [TestMethod]
        [ExpectedException(typeof(ArgumentNullException))]
        public void AddInvalidNullBudgetCategoryToRepository()
        {
            BudgetCategory invalidBudgetCategory = null;
            repo.AddBudgetCategory(invalidBudgetCategory);
        }

        [TestMethod]
        public void GetAllMonthsString()
        {
            string[] expectedMonthStrings = new string[]
            {
                "Enero",
                "Febrero",
                "Marzo",
                "Abril",
                "Mayo",
                "Junio",
                "Julio",
                "Agosto",
                "Setiembre",
                "Octubre",
                "Noviembre",
                "Diciembre"
            };
            string[] allMonths = repo.GetAllMonthsString();
            CollectionAssert.AreEqual(expectedMonthStrings, allMonths);
        }

        [TestMethod]
        public void GetAllCategoryNamesValidFormat()
        {
            string[] ExpectedCategoryNames = new string[]
            {
                categoryEntertainment.Name,
                categoryFood.Name,
                categoryHouse.Name
            };
            string[] RealCategoryNames = repo.GetAllCategoryStrings();
            CollectionAssert.AreEqual(ExpectedCategoryNames, RealCategoryNames);
        }

        [TestMethod]
        public void BudgetGetOrCreateFindCase()
        {
            string expectedString = "mes: 1 anio: 2020 total: 0";
            string month = "Enero";
            int year = 2020;
            Budget budget = repo.BudgetGetOrCreate(month, year);
            Assert.AreEqual(expectedString, budget.ToString());
        }

        [TestMethod]
        public void BudgetGetOrCreateCreateCase()
        {
            string month = "Diciembre";
            int year = 2020;
            Budget expectedBudget = new Budget(12, repo.Categories) { 
                Year = 2020, 
                TotalAmount = 0 
            };

            Budget budget = repo.BudgetGetOrCreate(month, year);
            Assert.AreEqual(expectedBudget, budget);
        }

        [TestMethod]
        public void BudgetGetOrCreateAddAndFind()
        {
            Repository emptyRepository = new Repository();
            int month = 12;
            int year = 2020;
            Budget budget = new Budget(month) { Year = year, TotalAmount = 0 };
            emptyRepository.AddBudget(budget);

            Budget actualBudget = emptyRepository.BudgetGetOrCreate("Diciembre", year);
            Assert.AreEqual(budget, actualBudget);
        }

        [TestMethod]
        public void BudgetGetOrCreateCheckCategories()
        {
            BudgetCategory budgetCategory = new BudgetCategory { 
                Category = categoryEntertainment,
                Amount = 0 
            };
            BudgetCategory budgetCategory2 = new BudgetCategory { 
                Category = categoryFood, 
                Amount = 0 
            };
            List<BudgetCategory> budgetCategories = new List<BudgetCategory>() {
            budgetCategory,
            budgetCategory2
            };

            Budget actualBudget = repo.BudgetGetOrCreate("Enero", 2020);

            List<BudgetCategory> actualBudgetCategories = actualBudget.BudgetCategories;
            CollectionAssert.AreEqual(budgetCategories, actualBudgetCategories);
        }

        [TestMethod]

        public void GetTotalSpentByMonthAndCategoryValidCase()
        {
            double expectedTotalSpentJanuary = 310.50;
            double actualTotalSpentJanuary = repo.GetTotalSpentByMonthAndCategory("Enero", categoryFood);

            Assert.AreEqual(expectedTotalSpentJanuary, actualTotalSpentJanuary);
        }

        [TestMethod]
        public void GetTotalSpentByMonthAndCategoryMonthWithoutExpenses()
        {
            double expectedTotalSpentJanuary = 0;
            double actualTotalSpentJanuary = repo.GetTotalSpentByMonthAndCategory("Marzo", categoryFood);

            Assert.AreEqual(expectedTotalSpentJanuary, actualTotalSpentJanuary);
        }

        [TestMethod]
        public void GetTotalSpentByMonthAndCategoryMonthWithoutExpensesInCategory()
        {
            double expectedTotalSpentJanuary = 0;
            double actualTotalSpentJanuary = repo.GetTotalSpentByMonthAndCategory("Enero", categoryHouse);

            Assert.AreEqual(expectedTotalSpentJanuary, actualTotalSpentJanuary);
        }

        [TestMethod]
        public void FindBudgetFoundCase()
        {
            Budget actualBudget = repo.FindBudget(1, 2020);
            Assert.AreEqual(JanuaryBudget, actualBudget);
        }


        [TestMethod]
        public void FindBudgetNotFoundCase()
        {
            Budget actualBudget = repo.FindBudget(2, 2020);
            Assert.IsNull(actualBudget);
        }

        [TestMethod]
        public void CreateAddExpense()
        {
            Expense expectedExpense = new Expense { Amount = 23, CreationDate = new DateTime(2020, 01, 01), Description = "cena", Category = categoryFood };
            Repository repository = new Repository();
            repository.SetExpense(23, new DateTime(2020, 01, 01), "cena", categoryFood);
            Assert.AreEqual(expectedExpense, repository.Expenses.ToArray()[0]);
        }

        [TestMethod]
        public void CreateAddCategoty()
        {
            List<string> keyWords2 = new List<string>
            {
                "restaurante",
                "McDonalds",
                "cena"
            };
            Repository repository = new Repository();
            repository.SetCategory("comida", keyWords2);
            Assert.AreEqual(categoryFood, repository.Categories.ToArray()[0]);
        }

        [TestMethod]
        public void FindRemoveExpennse()
        {
            Expense expense = new Expense { Amount = 23, CreationDate = new DateTime(2020, 01, 01), Description = "cena", Category = categoryFood };
            Repository repository = new Repository();
            repository.AddExpense(expense);
            repository.DeleteExpense("cena");
            Assert.AreEqual(0,repository.Expenses.Count);
        }
    }
}