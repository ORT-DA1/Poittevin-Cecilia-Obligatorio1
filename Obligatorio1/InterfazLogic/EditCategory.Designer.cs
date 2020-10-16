﻿namespace InterfazLogic
{
    partial class EditCategory
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
            this.label2 = new System.Windows.Forms.Label();
            this.lblCategories = new System.Windows.Forms.Label();
            this.label1 = new System.Windows.Forms.Label();
            this.lblKeyWords = new System.Windows.Forms.Label();
            this.btnEditCategory = new System.Windows.Forms.Button();
            this.lblEditCategories = new System.Windows.Forms.Label();
            this.txtName = new System.Windows.Forms.TextBox();
            this.lstCatgories = new System.Windows.Forms.ListBox();
            this.lstKwywords = new System.Windows.Forms.ListBox();
            this.txtKeyWord = new System.Windows.Forms.TextBox();
            this.btnEdit = new System.Windows.Forms.Button();
            this.btnDelete = new System.Windows.Forms.Button();
            this.btnSave = new System.Windows.Forms.Button();
            this.btnAddKeyWord = new System.Windows.Forms.Button();
            this.tbEdit = new System.Windows.Forms.TextBox();
            this.btnAccept = new System.Windows.Forms.Button();
            this.lblName = new System.Windows.Forms.Label();
            this.lblKeyWord = new System.Windows.Forms.Label();
            this.lblKyWords = new System.Windows.Forms.Label();
            this.SuspendLayout();
            // 
            // label2
            // 
            this.label2.AutoSize = true;
            this.label2.BackColor = System.Drawing.Color.PaleGoldenrod;
            this.label2.Font = new System.Drawing.Font("AR CENA", 24F, System.Drawing.FontStyle.Bold);
            this.label2.ForeColor = System.Drawing.Color.DarkGoldenrod;
            this.label2.Location = new System.Drawing.Point(20, 0);
            this.label2.Name = "label2";
            this.label2.Size = new System.Drawing.Size(1059, 92);
            this.label2.TabIndex = 10;
            this.label2.Text = "              Edit category               ";
            // 
            // lblCategories
            // 
            this.lblCategories.AutoSize = true;
            this.lblCategories.Location = new System.Drawing.Point(55, 161);
            this.lblCategories.Name = "lblCategories";
            this.lblCategories.Size = new System.Drawing.Size(153, 32);
            this.lblCategories.TabIndex = 11;
            this.lblCategories.Text = "Categories";
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.Location = new System.Drawing.Point(55, 314);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(90, 32);
            this.label1.TabIndex = 13;
            this.label1.Text = "Name";
            // 
            // lblKeyWords
            // 
            this.lblKeyWords.AutoSize = true;
            this.lblKeyWords.Location = new System.Drawing.Point(55, 425);
            this.lblKeyWords.Name = "lblKeyWords";
            this.lblKeyWords.Size = new System.Drawing.Size(145, 32);
            this.lblKeyWords.TabIndex = 14;
            this.lblKeyWords.Text = "KeyWords";
            // 
            // btnEditCategory
            // 
            this.btnEditCategory.BackColor = System.Drawing.Color.DarkKhaki;
            this.btnEditCategory.Location = new System.Drawing.Point(870, 161);
            this.btnEditCategory.Name = "btnEditCategory";
            this.btnEditCategory.Size = new System.Drawing.Size(220, 62);
            this.btnEditCategory.TabIndex = 16;
            this.btnEditCategory.Text = "Edit Category";
            this.btnEditCategory.UseVisualStyleBackColor = false;
            this.btnEditCategory.Click += new System.EventHandler(this.btnEditCategory_Click);
            // 
            // lblEditCategories
            // 
            this.lblEditCategories.AutoSize = true;
            this.lblEditCategories.Location = new System.Drawing.Point(229, 230);
            this.lblEditCategories.Name = "lblEditCategories";
            this.lblEditCategories.Size = new System.Drawing.Size(23, 32);
            this.lblEditCategories.TabIndex = 17;
            this.lblEditCategories.Text = ".";
            // 
            // txtName
            // 
            this.txtName.Location = new System.Drawing.Point(235, 314);
            this.txtName.Name = "txtName";
            this.txtName.Size = new System.Drawing.Size(591, 38);
            this.txtName.TabIndex = 18;
            // 
            // lstCatgories
            // 
            this.lstCatgories.FormattingEnabled = true;
            this.lstCatgories.ItemHeight = 31;
            this.lstCatgories.Location = new System.Drawing.Point(235, 161);
            this.lstCatgories.Name = "lstCatgories";
            this.lstCatgories.Size = new System.Drawing.Size(594, 66);
            this.lstCatgories.TabIndex = 19;
            // 
            // lstKwywords
            // 
            this.lstKwywords.FormattingEnabled = true;
            this.lstKwywords.ItemHeight = 31;
            this.lstKwywords.Location = new System.Drawing.Point(238, 504);
            this.lstKwywords.Name = "lstKwywords";
            this.lstKwywords.Size = new System.Drawing.Size(594, 35);
            this.lstKwywords.TabIndex = 20;
            // 
            // txtKeyWord
            // 
            this.txtKeyWord.Location = new System.Drawing.Point(238, 425);
            this.txtKeyWord.Name = "txtKeyWord";
            this.txtKeyWord.Size = new System.Drawing.Size(591, 38);
            this.txtKeyWord.TabIndex = 22;
            // 
            // btnEdit
            // 
            this.btnEdit.BackColor = System.Drawing.Color.DarkKhaki;
            this.btnEdit.Location = new System.Drawing.Point(235, 592);
            this.btnEdit.Name = "btnEdit";
            this.btnEdit.Size = new System.Drawing.Size(236, 63);
            this.btnEdit.TabIndex = 23;
            this.btnEdit.Text = "Edit key word";
            this.btnEdit.UseVisualStyleBackColor = false;
            this.btnEdit.Click += new System.EventHandler(this.btnEdit_Click);
            // 
            // btnDelete
            // 
            this.btnDelete.BackColor = System.Drawing.Color.DarkKhaki;
            this.btnDelete.Location = new System.Drawing.Point(597, 592);
            this.btnDelete.Name = "btnDelete";
            this.btnDelete.Size = new System.Drawing.Size(229, 63);
            this.btnDelete.TabIndex = 24;
            this.btnDelete.Text = "Delete key word";
            this.btnDelete.UseVisualStyleBackColor = false;
            this.btnDelete.Click += new System.EventHandler(this.btnDelete_Click);
            // 
            // btnSave
            // 
            this.btnSave.BackColor = System.Drawing.Color.DarkKhaki;
            this.btnSave.Location = new System.Drawing.Point(872, 533);
            this.btnSave.Name = "btnSave";
            this.btnSave.Size = new System.Drawing.Size(218, 63);
            this.btnSave.TabIndex = 25;
            this.btnSave.Text = "Save change";
            this.btnSave.UseVisualStyleBackColor = false;
            this.btnSave.Click += new System.EventHandler(this.btnSave_Click);
            // 
            // btnAddKeyWord
            // 
            this.btnAddKeyWord.BackColor = System.Drawing.Color.DarkKhaki;
            this.btnAddKeyWord.Location = new System.Drawing.Point(870, 446);
            this.btnAddKeyWord.Name = "btnAddKeyWord";
            this.btnAddKeyWord.Size = new System.Drawing.Size(218, 63);
            this.btnAddKeyWord.TabIndex = 26;
            this.btnAddKeyWord.Text = "Add key word";
            this.btnAddKeyWord.UseVisualStyleBackColor = false;
            this.btnAddKeyWord.Click += new System.EventHandler(this.btnAddKeyWord_Click);
            // 
            // tbEdit
            // 
            this.tbEdit.Location = new System.Drawing.Point(238, 501);
            this.tbEdit.Name = "tbEdit";
            this.tbEdit.Size = new System.Drawing.Size(594, 38);
            this.tbEdit.TabIndex = 27;
            // 
            // btnAccept
            // 
            this.btnAccept.BackColor = System.Drawing.Color.Tan;
            this.btnAccept.Location = new System.Drawing.Point(448, 699);
            this.btnAccept.Name = "btnAccept";
            this.btnAccept.Size = new System.Drawing.Size(227, 63);
            this.btnAccept.TabIndex = 28;
            this.btnAccept.Text = "Accept";
            this.btnAccept.UseVisualStyleBackColor = false;
            this.btnAccept.Click += new System.EventHandler(this.btnAccept_Click);
            // 
            // lblName
            // 
            this.lblName.AutoSize = true;
            this.lblName.Location = new System.Drawing.Point(232, 366);
            this.lblName.Name = "lblName";
            this.lblName.Size = new System.Drawing.Size(23, 32);
            this.lblName.TabIndex = 29;
            this.lblName.Text = ".";
            // 
            // lblKeyWord
            // 
            this.lblKeyWord.AutoSize = true;
            this.lblKeyWord.Location = new System.Drawing.Point(232, 466);
            this.lblKeyWord.Name = "lblKeyWord";
            this.lblKeyWord.Size = new System.Drawing.Size(23, 32);
            this.lblKeyWord.TabIndex = 30;
            this.lblKeyWord.Text = ".";
            // 
            // lblKyWords
            // 
            this.lblKyWords.AutoSize = true;
            this.lblKyWords.Location = new System.Drawing.Point(232, 549);
            this.lblKyWords.Name = "lblKyWords";
            this.lblKyWords.Size = new System.Drawing.Size(23, 32);
            this.lblKyWords.TabIndex = 31;
            this.lblKyWords.Text = ".";
            // 
            // EditCategory
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(16F, 31F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.BackColor = System.Drawing.Color.OldLace;
            this.Controls.Add(this.lblKyWords);
            this.Controls.Add(this.lblKeyWord);
            this.Controls.Add(this.lblName);
            this.Controls.Add(this.btnAccept);
            this.Controls.Add(this.tbEdit);
            this.Controls.Add(this.btnAddKeyWord);
            this.Controls.Add(this.btnSave);
            this.Controls.Add(this.btnDelete);
            this.Controls.Add(this.btnEdit);
            this.Controls.Add(this.txtKeyWord);
            this.Controls.Add(this.lstKwywords);
            this.Controls.Add(this.lstCatgories);
            this.Controls.Add(this.txtName);
            this.Controls.Add(this.lblEditCategories);
            this.Controls.Add(this.btnEditCategory);
            this.Controls.Add(this.lblKeyWords);
            this.Controls.Add(this.label1);
            this.Controls.Add(this.lblCategories);
            this.Controls.Add(this.label2);
            this.Name = "EditCategory";
            this.Size = new System.Drawing.Size(1125, 833);
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.Label label2;
        private System.Windows.Forms.Label lblCategories;
        private System.Windows.Forms.Label label1;
        private System.Windows.Forms.Label lblKeyWords;
        private System.Windows.Forms.Button btnEditCategory;
        private System.Windows.Forms.Label lblEditCategories;
        private System.Windows.Forms.TextBox txtName;
        private System.Windows.Forms.ListBox lstCatgories;
        private System.Windows.Forms.ListBox lstKwywords;
        private System.Windows.Forms.TextBox txtKeyWord;
        private System.Windows.Forms.Button btnEdit;
        private System.Windows.Forms.Button btnDelete;
        private System.Windows.Forms.Button btnSave;
        private System.Windows.Forms.Button btnAddKeyWord;
        private System.Windows.Forms.TextBox tbEdit;
        private System.Windows.Forms.Button btnAccept;
        private System.Windows.Forms.Label lblName;
        private System.Windows.Forms.Label lblKeyWord;
        private System.Windows.Forms.Label lblKyWords;
    }
}