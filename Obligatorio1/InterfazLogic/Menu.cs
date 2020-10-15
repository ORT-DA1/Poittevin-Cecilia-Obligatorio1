﻿using BusinessLogic;
using System;
using System.Drawing;
using System.Windows.Forms;

namespace InterfazLogic
{
    public partial class Menu : Form
    {
        public Repository repository { get; set; }
        public Menu()
        {
            InitializeComponent();
            repository = new Repository();
            this.MaximumSize = new Size(650, 400);
            this.MinimumSize = new Size(650, 400);
        }

        private void btnRegisterCategory_Click(object sender, EventArgs e)
        {
            mainPanel.Controls.Clear();
           UserControl registerCategory = new RegisterCategory(repository);
            mainPanel.Controls.Add(registerCategory);
        }

        private void btnRegisterExpense_Click(object sender, EventArgs e)
        {
           mainPanel.Controls.Clear();
           UserControl registerExpense = new RegisterExpense(repository);
            mainPanel.Controls.Add(registerExpense);
        }

        private void btnExpenseReport_Click(object sender, EventArgs e)
        {
            mainPanel.Controls.Clear();
            UserControl expenseReport = new ExpenseReport(repository);
            mainPanel.Controls.Add(expenseReport);
        }


        private void btnRegisterBudget_Click(object sender, EventArgs e)
        {
            mainPanel.Controls.Clear();
            UserControl addBudgetForm = new AddBudgetForm(repository);
            mainPanel.Controls.Add(addBudgetForm);
        }

       
    }

}

