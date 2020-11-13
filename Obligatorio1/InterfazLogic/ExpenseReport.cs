﻿using System;
using System.Collections.Generic;
using System.Drawing;
using System.Windows.Forms;
using BusinessLogic;
using System.IO;
using BusinessLogic.Repository;

namespace InterfazLogic
{
    public partial class ExpenseReport : UserControl
    {
        private ExpenseController expenseController;

        public List<Expense> expenseReportByMonth;
        public string name;
        public string route;
        public ExpenseReport(IManageRepository vRepository)
        {
            InitializeComponent();
            expenseController = new ExpenseController(vRepository);
            monthsWithExpenses();
            MaximumSize = new Size(500, 650);
            MinimumSize = new Size(500, 650);
            btnExportar.Enabled = false;
            lstMonths.SelectedIndex = 0;
        }

        private void monthsWithExpenses(){
            lblMonths.Text = "";
            List <string> months= expenseController.OrderedMonthsWithExpenses();
            if (months.Count < 1)
            {
                MessageBox.Show("There are no expenses registered in the system");
                Visible = false;
            }
            else
            {
                foreach (string month in months)
                {
                    lstMonths.Items.Add(month);
                }
                Visible = true;
            }
        }

        private void btnConsult_Click(object sender, EventArgs e)
        {
            double totalAmount = 0;
            if (lstMonths.SelectedIndex >= 0)
            {
                lblMonths.Text = "";
                string month = lstMonths.SelectedItem.ToString();
                if (month.Length == 0)
                {
                    lblMonths.Text = "You must select a month to consult";
                    lblMonth.ForeColor = Color.Red;
                }
                expenseReportByMonth = expenseController.GetExpenseByMonth(month);
                listView1.Items.Clear();
                ListViewItem item = new ListViewItem();
                foreach(Expense vExpense in expenseReportByMonth)
                {
                    string date = vExpense.CreationDate.ToString("dd/MM/yyyy");
                    string description = vExpense.Description;
                    string name = vExpense.Category.Name;
                    string currency = vExpense.Currency.Symbol;
                    string amount = vExpense.Amount.ToString();
                        totalAmount += vExpense.ConvertToPesos();
                        item = listView1.Items.Add(date);
                        item.SubItems.Add(description);
                        item.SubItems.Add(name);
                        item.SubItems.Add(currency);
                        item.SubItems.Add(amount);                   

                }                
                lblTotalAmount.Text = "Total amount of the month " + month + " was " + totalAmount.ToString();
            }
            else
            {
                lblMonths.Text = "Select a month to consult";
                lblMonth.ForeColor = Color.Red;
            }
            btnExportar.Enabled = true;
        }

      

        private void btnAccept_Click(object sender, EventArgs e)
        {
           Visible = false;
        }

        private void btnExportar_Click(object sender2, EventArgs e)
        {
            SaveFileDialog saveFile = new SaveFileDialog();
            string fileName;
            saveFile.Title = "Export Report";
            saveFile.Filter = "Txt File (.txt)| *.txt|Csv File (.csv)| *.csv";
            saveFile.ShowDialog();
            fileName = saveFile.FileName.ToString();
            expenseController.ExportExpenseReport(expenseReportByMonth, fileName, saveFile.FilterIndex);                    
        }

      
    }
}
