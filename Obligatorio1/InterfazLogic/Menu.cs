﻿using BusinessLogic;
using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
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
        }

        private void btnRegisterCategory_Click(object sender, EventArgs e)
        {
            mainPanel.Controls.Clear();
           // UserControl registerCategory = new RegisterCategory(repository);
            //mainPanel.Controls.Add(registerCategory);
        }
    }
}
