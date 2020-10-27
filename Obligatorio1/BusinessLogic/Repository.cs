using System;
using System.Collections.Generic;
using System.Globalization;
using System.Linq;
using System.Text;
using System.Threading;
using System.Threading.Tasks;

namespace BusinessLogic
{
   
    public class Repository
    {
        private List<Category> Categories;

        private List<Expense> Expenses;

        private List<Budget> Budgets;

        private List<BudgetCategory> BudgetCategories;

        public Repository()
        {
            Categories = new List<Category>();
            Expenses = new List<Expense>();
            Budgets = new List<Budget>();
            BudgetCategories = new List<BudgetCategory>();
        }

        internal void DeleteCategory(Category category)
        {
            Categories.Remove(category);
        }

        public Repository(List<Category> vCategories)
        {
            Expenses = new List<Expense>();
            Budgets = new List<Budget>();
            BudgetCategories = new List<BudgetCategory>();
            Categories = vCategories;
        }

        private bool AlreadyExistTheCategoryName(string categoryName)
        {
            bool exist = true ;
            foreach (Category category in Categories)
            {
                if (categoryName.ToLower() == category.Name.ToLower())
                   exist= false;
            }
            return exist;
        }


        private bool AlreadyExistTheKeyWordsInAnoterCategory(KeyWord pkeyWords)
        {            
            foreach (Category category in Categories)
            {
                if (category.ExistKeyWordInAnotherCategory(pkeyWords))
                    return true;
            }
            return false;
        }        

        public void AddCategory(Category category)
        {
            if (!AlreadyExistTheCategoryName(category.Name))
                throw new ExcepcionInvalidRepeatedNameCategory();
            if (AlreadyExistTheKeyWordsInAnoterCategory(category.KeyWords))
                throw new ExcepcionInvalidRepeatedKeyWordsCategory();
            Categories.Add(category);
        }

        public void AddBudget(Budget vBudget)
        {
            if (vBudget is null)
            {
                throw new ArgumentNullException();
            }
            Budgets.Add(vBudget);
        }

        public void AddExpense(Expense expense)
        {
            if (expense.Category == null)
                throw new ExcepcionExpenseWithEmptyCategory();           
            Expenses.Add(expense);
        }       

        public void SetExpense(double amount, DateTime creationDate, string description, Category category)
        {
            Expense expense = new Expense { Amount = amount, CreationDate = creationDate, Description = description, Category = category };
            AddExpense(expense);
        }

        public Category SetCategory(string vName,List<string> vKeyWords )
        {
            KeyWord pKeyWord = new KeyWord(vKeyWords);
            Category category = new Category { Name = vName, KeyWords = pKeyWord };
            AddCategory(category);
            return category;
        }

        public List<Category> GetCategories()
        {
            return Categories;
        }

        public List<Expense> GetExpenses()
        {
            return Expenses;
        }

        public List<Budget> GetBudgets()
        {
            return Budgets;
        }

        internal void DeleteExpense(Expense expense)
        {
            Expenses.Remove(expense);
        }
    }
}