﻿namespace InterfazLogic
{
    partial class RegisterCategory
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
            this.btnRegisterCategory = new System.Windows.Forms.Button();
            this.label2 = new System.Windows.Forms.Label();
            this.label3 = new System.Windows.Forms.Label();
            this.tbName = new System.Windows.Forms.TextBox();
            this.tbKeyWord = new System.Windows.Forms.TextBox();
            this.lstCategories = new System.Windows.Forms.ListBox();
            this.btnAddKeyWord = new System.Windows.Forms.Button();
            this.btnEdit = new System.Windows.Forms.Button();
            this.lblName = new System.Windows.Forms.Label();
            this.lblKeyWords = new System.Windows.Forms.Label();
            this.btnSave = new System.Windows.Forms.Button();
            this.tbEdit = new System.Windows.Forms.TextBox();
            this.SuspendLayout();
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.BorderStyle = System.Windows.Forms.BorderStyle.FixedSingle;
            this.label1.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label1.Location = new System.Drawing.Point(435, 55);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(352, 48);
            this.label1.TabIndex = 0;
            this.label1.Text = "Register category";
            // 
            // btnRegisterCategory
            // 
            this.btnRegisterCategory.BackColor = System.Drawing.Color.Tan;
            this.btnRegisterCategory.Location = new System.Drawing.Point(1003, 647);
            this.btnRegisterCategory.Name = "btnRegisterCategory";
            this.btnRegisterCategory.Size = new System.Drawing.Size(218, 63);
            this.btnRegisterCategory.TabIndex = 1;
            this.btnRegisterCategory.Text = "Register";
            this.btnRegisterCategory.UseVisualStyleBackColor = false;
            this.btnRegisterCategory.Click += new System.EventHandler(this.btnRegisterCategory_Click);
            // 
            // label2
            // 
            this.label2.AutoSize = true;
            this.label2.Location = new System.Drawing.Point(43, 170);
            this.label2.Name = "label2";
            this.label2.Size = new System.Drawing.Size(90, 32);
            this.label2.TabIndex = 2;
            this.label2.Text = "Name";
            // 
            // label3
            // 
            this.label3.AutoSize = true;
            this.label3.Location = new System.Drawing.Point(43, 296);
            this.label3.Name = "label3";
            this.label3.Size = new System.Drawing.Size(146, 32);
            this.label3.TabIndex = 3;
            this.label3.Text = "Key words";
            // 
            // tbName
            // 
            this.tbName.Location = new System.Drawing.Point(345, 164);
            this.tbName.Name = "tbName";
            this.tbName.Size = new System.Drawing.Size(582, 38);
            this.tbName.TabIndex = 4;
            // 
            // tbKeyWord
            // 
            this.tbKeyWord.Location = new System.Drawing.Point(345, 296);
            this.tbKeyWord.Name = "tbKeyWord";
            this.tbKeyWord.Size = new System.Drawing.Size(582, 38);
            this.tbKeyWord.TabIndex = 5;
            // 
            // lstCategories
            // 
            this.lstCategories.FormattingEnabled = true;
            this.lstCategories.ItemHeight = 31;
            this.lstCategories.Location = new System.Drawing.Point(345, 401);
            this.lstCategories.Name = "lstCategories";
            this.lstCategories.Size = new System.Drawing.Size(582, 35);
            this.lstCategories.TabIndex = 6;
            // 
            // btnAddKeyWord
            // 
            this.btnAddKeyWord.BackColor = System.Drawing.Color.Tan;
            this.btnAddKeyWord.Location = new System.Drawing.Point(1003, 283);
            this.btnAddKeyWord.Name = "btnAddKeyWord";
            this.btnAddKeyWord.Size = new System.Drawing.Size(218, 63);
            this.btnAddKeyWord.TabIndex = 7;
            this.btnAddKeyWord.Text = "Add";
            this.btnAddKeyWord.UseVisualStyleBackColor = false;
            this.btnAddKeyWord.Click += new System.EventHandler(this.btnAddKeyWord_Click);
            // 
            // btnEdit
            // 
            this.btnEdit.BackColor = System.Drawing.Color.Tan;
            this.btnEdit.Location = new System.Drawing.Point(376, 483);
            this.btnEdit.Name = "btnEdit";
            this.btnEdit.Size = new System.Drawing.Size(218, 63);
            this.btnEdit.TabIndex = 8;
            this.btnEdit.Text = "Edit";
            this.btnEdit.UseVisualStyleBackColor = false;
            this.btnEdit.Click += new System.EventHandler(this.btnEdit_Click);
            // 
            // lblName
            // 
            this.lblName.AutoSize = true;
            this.lblName.Location = new System.Drawing.Point(339, 216);
            this.lblName.Name = "lblName";
            this.lblName.Size = new System.Drawing.Size(23, 32);
            this.lblName.TabIndex = 9;
            this.lblName.Text = ".";
            // 
            // lblKeyWords
            // 
            this.lblKeyWords.AutoSize = true;
            this.lblKeyWords.Location = new System.Drawing.Point(339, 347);
            this.lblKeyWords.Name = "lblKeyWords";
            this.lblKeyWords.Size = new System.Drawing.Size(23, 32);
            this.lblKeyWords.TabIndex = 10;
            this.lblKeyWords.Text = ".";
            // 
            // btnSave
            // 
            this.btnSave.BackColor = System.Drawing.Color.Tan;
            this.btnSave.Location = new System.Drawing.Point(646, 483);
            this.btnSave.Name = "btnSave";
            this.btnSave.Size = new System.Drawing.Size(218, 63);
            this.btnSave.TabIndex = 11;
            this.btnSave.Text = "Save";
            this.btnSave.UseVisualStyleBackColor = false;
            this.btnSave.Click += new System.EventHandler(this.btnSave_Click);
            // 
            // tbEdit
            // 
            this.tbEdit.Location = new System.Drawing.Point(325, 398);
            this.tbEdit.Name = "tbEdit";
            this.tbEdit.Size = new System.Drawing.Size(602, 38);
            this.tbEdit.TabIndex = 12;
            // 
            // RegisterCategory
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(16F, 31F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.BackColor = System.Drawing.Color.OldLace;
            this.Controls.Add(this.tbEdit);
            this.Controls.Add(this.btnSave);
            this.Controls.Add(this.lblKeyWords);
            this.Controls.Add(this.lblName);
            this.Controls.Add(this.btnEdit);
            this.Controls.Add(this.btnAddKeyWord);
            this.Controls.Add(this.lstCategories);
            this.Controls.Add(this.tbKeyWord);
            this.Controls.Add(this.tbName);
            this.Controls.Add(this.label3);
            this.Controls.Add(this.label2);
            this.Controls.Add(this.btnRegisterCategory);
            this.Controls.Add(this.label1);
            this.Name = "RegisterCategory";
            this.Size = new System.Drawing.Size(1253, 739);
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.Label label1;
        private System.Windows.Forms.Button btnRegisterCategory;
        private System.Windows.Forms.Label label2;
        private System.Windows.Forms.Label label3;
        private System.Windows.Forms.TextBox tbName;
        private System.Windows.Forms.TextBox tbKeyWord;
        private System.Windows.Forms.ListBox lstCategories;
        private System.Windows.Forms.Button btnAddKeyWord;
        private System.Windows.Forms.Button btnEdit;
        private System.Windows.Forms.Label lblName;
        private System.Windows.Forms.Label lblKeyWords;
        private System.Windows.Forms.Button btnSave;
        private System.Windows.Forms.TextBox tbEdit;
    }
}
