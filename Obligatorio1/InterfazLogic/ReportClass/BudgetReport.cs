﻿using System;
using System.Collections.Generic;
using System.Drawing;
using System.Windows.Forms;
using BusinessLogic;
using BusinessLogic.Domain;
using BusinessLogic.Repository;

namespace InterfazLogic
{
    public partial class BudgetReport : UserControl
    {
        private bool initializingForm = true;
        private BudgetController budgetController;
        private int oldMonthIndex = DateTime.Now.Month - 1;
        private int oldYearValue = DateTime.Now.Year;
        private bool changeMonth = false;

        public BudgetReport(IManageRepository vRepository)
        {
            budgetController = new BudgetController(vRepository);
            InitializeComponent();
            MaximumSize = new Size(800, 800);
            MinimumSize = new Size(800, 800);
            numYear.Value = oldYearValue;
            initializingForm = false;           
            GetMonths();
            
        }

        private void GetMonths()
        {
            if (budgetController.GetBudgets().Count == 0)
            {
                MessageBox.Show("There are no budgets registered in the system");
                Visible = false;
            }
            else
            {                
                cboxMonth.Items.Clear();
                List<string> monthsWithBudget = budgetController.OrderedMonthsWithBudget();
                foreach (string month in monthsWithBudget)
                {                   
                    cboxMonth.Items.Add(month);
                    cboxMonth.SelectedIndex = 0;
                }                
            }           
        }

        private bool CompleteReport(double totalPlanedAmount, double totalRealAmount, double totalDiffAmount, Budget budget)
        {
            lstVReport.Items.Clear();
           BusinessLogic.Domain.BudgetReport budgetReport = budgetController.GetBudgetReport(cboxMonth.Text,  budget);
            foreach (BudgetReportLine budgetReportLine in budgetReport.budgetsReportLines)
            {
                ListViewItem item = new ListViewItem(budgetReportLine.Category.Name);
                item.UseItemStyleForSubItems = false;
                if (totalPlanedAmount < 0)
                    item.SubItems.Add("(" + (Math.Abs(budgetReportLine.PlanedAmount)).ToString() + ")").ForeColor = Color.Red;
                else
                    item.SubItems.Add(budgetReportLine.PlanedAmount.ToString());
                if (totalRealAmount < 0)
                    item.SubItems.Add("(" + (Math.Abs(budgetReportLine.RealAmount)).ToString() + ")").ForeColor = Color.Red;
                else
                    item.SubItems.Add(budgetReportLine.RealAmount.ToString());
                if (totalDiffAmount < 0)
                    item.SubItems.Add("(" + (Math.Abs(budgetReportLine.DiffAmount)).ToString() + ")").ForeColor = Color.Red;
                else
                    item.SubItems.Add(budgetReportLine.DiffAmount.ToString());
                lstVReport.Items.Add(item);
               
            }

            totalPlanedAmount = budgetReport.TotalAmount;
            totalRealAmount = budgetReport.RealAmount;
            totalDiffAmount = budgetReport.DiffAmount;
            ListViewItem total = new ListViewItem("TOTAL");
            total.UseItemStyleForSubItems = false;
            if (totalPlanedAmount < 0)
                total.SubItems.Add("(" + (Math.Abs(totalPlanedAmount)).ToString() + ")").ForeColor = Color.Red;
            else
                total.SubItems.Add(totalPlanedAmount.ToString());
            if (totalRealAmount < 0)
                total.SubItems.Add("(" + (Math.Abs(totalRealAmount)).ToString() + ")").ForeColor = Color.Red;
            else
                total.SubItems.Add(totalRealAmount.ToString());
            if (totalDiffAmount < 0)
                total.SubItems.Add("(" + (Math.Abs(totalDiffAmount)).ToString() + ")").ForeColor = Color.Red;
            else
                total.SubItems.Add(totalDiffAmount.ToString());
            lstVReport.Items.Add(total);
            return true;
        }

        private bool LoadBudgetReport()
        {
            try
            {
                double totalPlanedAmount = 0;
                double totalRealAmount = 0;
                double totalDiffAmount = 0;
                if (!initializingForm)
                {                   
                    try
                    {
                        int year=(int)numYear.Value;                       
                        Budget budget = budgetController.FindBudget(cboxMonth.SelectedItem.ToString(), year);
                        oldYearValue = year;
                        return CompleteReport(totalPlanedAmount, totalRealAmount, totalDiffAmount, budget);                       
                        
                    }
                    catch (NoFindBudget)
                    {
                        MessageBox.Show("There is not budget created for the selected date");
                        numYear.Value = oldYearValue;
                        return false;
                    }
                    catch (System.NullReferenceException)
                    {
                        lblMonth.Text = "Select a month";
                        lblMonth.ForeColor = Color.Red;
                        return false;
                    }

                }
                else
                    return false;
            }
            catch (ArgumentNullException)
            {
                lblMonth.Text = "Selecct a correct month";
                lblMonth.ForeColor = Color.Red;
                return false;
            }
        }

        private void btnSearch_Click(object sender, EventArgs e)
        {
            if (LoadBudgetReport())
            {
                btnSearch.Enabled = false;
            }
        }

        public void cboxMonth_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (LoadBudgetReport())
            {
                btnSearch.Enabled = true;
                oldMonthIndex = cboxMonth.SelectedIndex;
                changeMonth = true;
            }
        }

        private void numYear_ValueChanged(object sender, EventArgs e)
        {
            if (!LoadBudgetReport())
            {
                numYear.Value = oldYearValue;
            }
            else
            {
                oldYearValue = (int)numYear.Value;
                btnSearch.Enabled = true;
                oldMonthIndex = cboxMonth.SelectedIndex;
                changeMonth = true;
            }
        }
        
        private void btnAccept_Click(object sender, EventArgs e)
        {
            Visible = false;
        }
    }
}
