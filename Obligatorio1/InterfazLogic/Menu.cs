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
            repository.AddCategory(new Category("test"));
        }

        private void btnRegisterCategory_Click(object sender, EventArgs e)
        {
        }

        private void btnExpenseReport_Click(object sender, EventArgs e)
        {

        }

        private void btnRegisterBudget_Click(object sender, EventArgs e)
        {
            var addBudgetForm = new AddBudgetForm(repository)
            {
                Location = new Point(300, 120)
            };
            addBudgetForm.Show();
        }

        private void mainPanel_Paint(object sender, PaintEventArgs e)
        {

        }

        private void Menu_Load(object sender, EventArgs e)
        {

        }
    }
}
