﻿using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Drawing;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using BusinessLogic;

namespace InterfazLogic
{
    public partial class RegisterExpense : UserControl
    {
        private LogicController logicController;
        public RegisterExpense(Repository vRepository)
        {
            InitializeComponent();
            logicController = new LogicController(vRepository);
            this.MaximumSize = new Size(890, 890);
            this.MinimumSize = new Size(890, 890);
            tbDescription.Clear();
            lstCategories.Items.Clear();
            AreCategories();
        }

        private void AreCategories()
        {
            if(logicController.GetCategories().Count == 0)
            {
                MessageBox.Show("There are no categories registered in the system");
                Visible = false;
            }
        }
        private void CompleteCategories(string description)
        {
            Category category = logicController.AsignCategoryByDescriptionExpense(description);
            try
            {                
                lstCategories.Items.Add(category);
            }
            catch (NoAsignCategoryByDescriptionExpense)
            {
                if (logicController.GetCategories().Count > 0)
                {
                    foreach (Category vCategory in logicController.GetCategories())
                    {
                        lstCategories.Items.Add(vCategory.Name);
                    }
                }
            }
        }

        private void btnSearch_Click(object sender, EventArgs e)
        {
            lstCategories.Items.Clear();
            string description = tbDescription.Text;
            CompleteCategories(description);
        }


        private void btnRegistrExpense_Click(object sender, EventArgs e)
        {
            try
            {                
                if (lstCategories.SelectedIndex >= 0)
                {                    
                    string description = tbDescription.Text;
                    double amount = decimal.ToDouble(nAmount.Value);
                    DateTime creationDate = dateTime.Value;                   
                    string nameCategory = lstCategories.SelectedItem.ToString();
                    Category category = logicController.FindCategoryByName(nameCategory);
                    logicController.SetExpense(amount, creationDate, description, category);                
                    MessageBox.Show("The expense was recorded successfully","",MessageBoxButtons.OK,MessageBoxIcon.Information);
                    this.Visible = false;
                }
                else
                {
                    lblCategories.Text = "You must select a category";
                    lblCategories.ForeColor = Color.Red;
                    lbDescription.Text = "";
                }
            }
            catch (ExcepcionInvalidDescriptionLengthExpense)
            {
                lbDescription.Text = "The name must be between 3 and 20 characters long.";      
                lbDescription.ForeColor = Color.Red;
                lblCategories.Text = "";
                lblAmount.Text = "";
                lblDate.Text = "";
            }
            catch (ExcepcionNegativeAmountExpense)
            {
                lblAmount.Text = "The amount must be positive";
                lblAmount.ForeColor = Color.Red;
                lblDate.Text = "";
                lblCategories.Text = "";
                lbDescription.Text = "";
            }
            catch (ExcepcionInvalidAmountExpense)
            {
                lblAmount.Text = "The amount cannot have more than two decimal places";
                nAmount.Value = 1;
                lblAmount.ForeColor = Color.Red;
                lblDate.Text = "";
                lblCategories.Text = "";
                lbDescription.Text = "";
            }
            catch (ExcepcionInvalidYearExpense)
            {
                lblDate.Text = "The year must be between 2018 and 2030.";
                lblDate.ForeColor = Color.Red;
                lblCategories.Text = "";
                lblAmount.Text = "";
                lbDescription.Text = "";
            }
            catch (ExcepcionExpenseWithEmptyCategory)
            {
                lblCategories.Text = "The category should not be empty ";
                lblCategories.ForeColor = Color.Red;
                lblDate.Text = "";
                lbDescription.Text = "";
                lblAmount.Text = "";
            }         
        }

       
    }
}
