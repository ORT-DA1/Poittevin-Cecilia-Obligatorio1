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
    public partial class EditExpense : UserControl
    {
        private LogicController logicController;
        private int indexToEdit;
        private string descriptionExpense;
        private bool edit;
        private bool selectExpense;
        private Expense expenseToEdit;
        public EditExpense(Repository vRepository)
        {
            InitializeComponent();
            logicController = new LogicController(vRepository);
            this.MaximumSize = new Size(800, 850);
            this.MinimumSize = new Size(800, 850);
            lstCategories.Visible = false;
            indexToEdit = -1;
            descriptionExpense="";
            edit = false;
            selectExpense = false;
            CompleteExpense();

        }
        private void CompleteExpense()
        {
            if (logicController.GetExpenses().Count > 0)
            {
                foreach (Expense expense in logicController.GetExpenses()) {
                    lstExpenses.Items.Add(expense);
                }
            }
            else
            {
                MessageBox.Show("There are no expenses registered in the system");
                Visible = false;
            }
        }

        private void btnEdit_Click(object sender, EventArgs e)
        {
            try
            {
                if (lstExpenses.SelectedIndex >= 0)
                {
                    expenseToEdit = logicController.FindExpense((Expense)lstExpenses.SelectedItem);
                    tbDescription.Text = expenseToEdit.Description;
                    nAmount.Value = (decimal)(expenseToEdit.Amount);
                    dateTime.Value = expenseToEdit.CreationDate;
                    lblCategory.Text = expenseToEdit.Category.ToString();
                    indexToEdit = lstExpenses.SelectedIndex;
                    selectExpense = true;
                    btnDelete.Enabled = false;
                }
                else if (logicController.GetExpenses().Count == 0)
                {
                    lblExpenses.Text = "There are no more expenses to edit";
                    lblExpenses.ForeColor = Color.Red;
                    lblAmount.Text = "";
                    lblCategories.Text = "";
                    lbDescription.Text = "";
                    lblDate.Text = "";
                }
                else
                {
                    lblExpenses.Text = "Select expense to edit";
                    lblExpenses.ForeColor = Color.Red;
                    lblAmount.Text = "";
                    lblCategories.Text = "";
                    lbDescription.Text = "";
                    lblDate.Text = "";



                }
            }
            catch (NoFindEqualsExpense)
            {

            }
        }

        private void btnDelete_Click(object sender, EventArgs e)
        {
            if (lstExpenses.SelectedIndex >= 0)
            {
                tbDescription.Clear();
                nAmount.Value = 1;
                lstCategories.Items.Clear();
                logicController.DeleteExpense((Expense)lstExpenses.SelectedItem);
                int index = lstExpenses.SelectedIndex;
                lstExpenses.Items.RemoveAt(index);
                lblExpenses.Text = "";
            }
            else if (logicController.GetExpenses().Count == 0)
            {
                lblExpenses.Text = "There are no more expenses to delete";
                lblExpenses.ForeColor = Color.Red;
                lblAmount.Text = "";
                lblCategories.Text = "";
                lbDescription.Text = "";
                lblDate.Text = "";
            }
            else
            {
                lblExpenses.Text = "Select expense to delete";
                lblExpenses.ForeColor = Color.Red;
                lblAmount.Text = "";
                lblCategories.Text = "";
                lbDescription.Text = "";
                lblDate.Text = "";
            }
        }

        private void btnAccept_Click(object sender, EventArgs e)
        {
            try
            {
                btnDelete.Enabled = true;
                TryRegisterNewExpense();
            }
            catch (ExcepcionInvalidDescriptionLengthExpense)
            {
                lbDescription.Text = "The name must be between 3 and 20 characters long.";
                lbDescription.ForeColor = Color.Red;
                lblAmount.Text = "";
                lblCategories.Text = "";
                lblExpenses.Text = "";
                lblDate.Text = "";
            }
            catch (ExcepcionNegativeAmountExpense)
            {
                lblAmount.Text = "The amount must be positive";
                lblAmount.ForeColor = Color.Red;
                lblExpenses.Text = "";
                lblCategories.Text = "";
                lbDescription.Text = "";
                lblDate.Text = "";
            }
            catch (ExcepcionInvalidAmountExpense)
            {
                lblAmount.Text = "The amount cannot have more than two decimal places";
                nAmount.Value = 1;
                lblAmount.ForeColor = Color.Red;
                lblExpenses.Text = "";
                lblCategories.Text = "";
                lbDescription.Text = "";
                lblDate.Text = "";
            }
            catch (ExcepcionInvalidYearExpense)
            {
                lblDate.Text = "The year must be between 2018 and 2030.";
                lblDate.ForeColor = Color.Red;
                lblExpenses.Text = "";
                lblCategories.Text = "";
                lbDescription.Text = "";
                lblAmount.Text = "";
            }
            catch (ExcepcionExpenseWithEmptyCategory)
            {
                lblCategories.Text = "The category should not be empty ";
                lblCategories.ForeColor = Color.Red;
                lblExpenses.Text = "";
                lblAmount.Text = "";
                lbDescription.Text = "";
                lblDate.Text = "";
            }
          
        }

        private void TryRegisterNewExpense()
        {
            Category category = new Category();
            if (lstCategories.SelectedIndex < 0 && edit)
            {
                lblCategories.Text = "You must select a category";
                lblCategories.ForeColor = Color.Red;
                lblExpenses.Text = "";
                lblAmount.Text = "";
                lbDescription.Text = "";
                lblDate.Text = "";
            }
            else if (lstCategories.SelectedIndex >= 0 && edit)
            {
                string nameCategory = lstCategories.SelectedItem.ToString();
                category = logicController.FindCategoryByName(nameCategory);
                string description = tbDescription.Text;
                double amount = decimal.ToDouble(nAmount.Value);
                DateTime creationDate = dateTime.Value;
                logicController.SetExpense(amount, creationDate, description, category);
                MessageBox.Show("The expense was edited successfully", "", MessageBoxButtons.OK, MessageBoxIcon.Information);
                this.Visible = false;
                if (indexToEdit >= 0)
                {
                    lstExpenses.Items.RemoveAt(indexToEdit);
                    logicController.DeleteExpense(expenseToEdit);
                }
            }
            else
            {
                if (expenseToEdit != null)
                {
                    category = expenseToEdit.Category;
                    string description = tbDescription.Text;
                    double amount = decimal.ToDouble(nAmount.Value);
                    DateTime creationDate = dateTime.Value;
                    logicController.SetExpense(amount, creationDate, description, category);
                    MessageBox.Show("The expense was edited successfully", "", MessageBoxButtons.OK, MessageBoxIcon.Information);
                    this.Visible = false;
                    if (indexToEdit >= 0)
                    {
                        lstExpenses.Items.RemoveAt(indexToEdit);
                        logicController.DeleteExpense(expenseToEdit);
                    }
                }
                else
                {
                    Visible = false;
                }
            }
        }

        private void btnEditCategory_Click(object sender, EventArgs e)
        {

            if (selectExpense)
            {
                lstCategories.Visible = true;
                foreach (Category category in logicController.GetCategories())
                {
                    lstCategories.Items.Add(category);
                }
                edit = true;
            }
            else
            {
                lblCategories.Text = "Select a expense to edit";
                lblCategories.ForeColor = Color.Red;
            }
        }

        private void btnCancel_Click(object sender, EventArgs e)
        {
            Visible = false;
        }
    }
}
