﻿namespace InterfazLogic
{
    partial class ExpenseReport
    {
        /// <summary> 
        /// Required designer variable.
        /// </summary>
        private System.ComponentModel.IContainer components = null;

        /// <summary> 
        /// Clean up any resources being used.
        /// </summary>
        /// <param name="disposing">true if managed resources should be disposed; otherwise, false.</param>
        protected override void Dispose(bool disposing)
        {
            if (disposing && (components != null))
            {
                components.Dispose();
            }
            base.Dispose(disposing);
        }

        #region Component Designer generated code

        /// <summary> 
        /// Required method for Designer support - do not modify 
        /// the contents of this method with the code editor.
        /// </summary>
        private void InitializeComponent()
        {
            this.label1 = new System.Windows.Forms.Label();
            this.lstMonths = new System.Windows.Forms.ListBox();
            this.Month = new System.Windows.Forms.Label();
            this.btnConsult = new System.Windows.Forms.Button();
            this.listView1 = new System.Windows.Forms.ListView();
            this.cCreationDate = ((System.Windows.Forms.ColumnHeader)(new System.Windows.Forms.ColumnHeader()));
            this.cDescription = ((System.Windows.Forms.ColumnHeader)(new System.Windows.Forms.ColumnHeader()));
            this.cCategory = ((System.Windows.Forms.ColumnHeader)(new System.Windows.Forms.ColumnHeader()));
            this.cAmount = ((System.Windows.Forms.ColumnHeader)(new System.Windows.Forms.ColumnHeader()));
            this.lblMonths = new System.Windows.Forms.Label();
            this.lblMonth = new System.Windows.Forms.Label();
            this.btnAccept = new System.Windows.Forms.Button();
            this.SuspendLayout();
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.BorderStyle = System.Windows.Forms.BorderStyle.FixedSingle;
            this.label1.Font = new System.Drawing.Font("Microsoft Sans Serif", 14.1F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label1.Location = new System.Drawing.Point(482, 33);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(367, 57);
            this.label1.TabIndex = 0;
            this.label1.Text = "Expense report";
            // 
            // lstMonths
            // 
            this.lstMonths.FormattingEnabled = true;
            this.lstMonths.ItemHeight = 31;
            this.lstMonths.Location = new System.Drawing.Point(192, 131);
            this.lstMonths.Name = "lstMonths";
            this.lstMonths.Size = new System.Drawing.Size(457, 66);
            this.lstMonths.TabIndex = 1;
            // 
            // Month
            // 
            this.Month.AutoSize = true;
            this.Month.Location = new System.Drawing.Point(47, 147);
            this.Month.Name = "Month";
            this.Month.Size = new System.Drawing.Size(108, 32);
            this.Month.TabIndex = 2;
            this.Month.Text = "Months";
            // 
            // btnConsult
            // 
            this.btnConsult.BackColor = System.Drawing.Color.Tan;
            this.btnConsult.Location = new System.Drawing.Point(672, 136);
            this.btnConsult.Name = "btnConsult";
            this.btnConsult.Size = new System.Drawing.Size(286, 52);
            this.btnConsult.TabIndex = 3;
            this.btnConsult.Text = "Consult";
            this.btnConsult.UseVisualStyleBackColor = false;
            this.btnConsult.Click += new System.EventHandler(this.btnConsult_Click);
            // 
            // listView1
            // 
            this.listView1.BackColor = System.Drawing.Color.AntiqueWhite;
            this.listView1.Columns.AddRange(new System.Windows.Forms.ColumnHeader[] {
            this.cCreationDate,
            this.cDescription,
            this.cCategory,
            this.cAmount});
            this.listView1.HideSelection = false;
            this.listView1.Location = new System.Drawing.Point(39, 252);
            this.listView1.Name = "listView1";
            this.listView1.Size = new System.Drawing.Size(942, 362);
            this.listView1.TabIndex = 4;
            this.listView1.UseCompatibleStateImageBehavior = false;
            this.listView1.View = System.Windows.Forms.View.Details;
            // 
            // cCreationDate
            // 
            this.cCreationDate.Text = "Date";
            this.cCreationDate.Width = 90;
            // 
            // cDescription
            // 
            this.cDescription.Text = "Description";
            this.cDescription.Width = 90;
            // 
            // cCategory
            // 
            this.cCategory.Text = "Category";
            this.cCategory.Width = 90;
            // 
            // cAmount
            // 
            this.cAmount.Text = "Amount";
            this.cAmount.Width = 90;
            // 
            // lblMonths
            // 
            this.lblMonths.AutoSize = true;
            this.lblMonths.Location = new System.Drawing.Point(186, 217);
            this.lblMonths.Name = "lblMonths";
            this.lblMonths.Size = new System.Drawing.Size(0, 32);
            this.lblMonths.TabIndex = 5;
            // 
            // lblMonth
            // 
            this.lblMonth.AutoSize = true;
            this.lblMonth.Location = new System.Drawing.Point(192, 208);
            this.lblMonth.Name = "lblMonth";
            this.lblMonth.Size = new System.Drawing.Size(23, 32);
            this.lblMonth.TabIndex = 6;
            this.lblMonth.Text = ".";
            // 
            // btnAccept
            // 
            this.btnAccept.BackColor = System.Drawing.Color.Tan;
            this.btnAccept.Location = new System.Drawing.Point(375, 647);
            this.btnAccept.Name = "btnAccept";
            this.btnAccept.Size = new System.Drawing.Size(286, 52);
            this.btnAccept.TabIndex = 7;
            this.btnAccept.Text = "Accept";
            this.btnAccept.UseVisualStyleBackColor = false;
            this.btnAccept.Click += new System.EventHandler(this.btnAccept_Click);
            // 
            // ExpenseReport
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(16F, 31F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.BackColor = System.Drawing.Color.OldLace;
            this.Controls.Add(this.btnAccept);
            this.Controls.Add(this.lblMonth);
            this.Controls.Add(this.lblMonths);
            this.Controls.Add(this.listView1);
            this.Controls.Add(this.btnConsult);
            this.Controls.Add(this.Month);
            this.Controls.Add(this.lstMonths);
            this.Controls.Add(this.label1);
            this.Name = "ExpenseReport";
            this.Size = new System.Drawing.Size(1144, 767);
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.Label label1;
        private System.Windows.Forms.ListBox lstMonths;
        private System.Windows.Forms.Label Month;
        private System.Windows.Forms.Button btnConsult;
        private System.Windows.Forms.ListView listView1;
        private System.Windows.Forms.ColumnHeader cCreationDate;
        private System.Windows.Forms.ColumnHeader cDescription;
        private System.Windows.Forms.ColumnHeader cCategory;
        private System.Windows.Forms.ColumnHeader cAmount;
        private System.Windows.Forms.Label lblMonths;
        private System.Windows.Forms.Label lblMonth;
        private System.Windows.Forms.Button btnAccept;
    }
}