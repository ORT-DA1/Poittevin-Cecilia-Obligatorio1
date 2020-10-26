﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace BusinessLogic
{
    class Exceptions
    {
    }

    public class ExcepcionInvalidNameLengthCategory : Exception
    {
    }

    public class ExcepcionInvalidNameDigitCategory : Exception
    {
    }

    public class ExcepcionInvalidKeyWordsLengthCategory : Exception
    {
    }

    public class ExcepcionInvalidRepeatedNameCategory : Exception
    {
    }

    public class ExcepcionInvalidRepeatedKeyWordsCategory : Exception
    {
    }

    public class ExcepcionInvalidYearExpense : Exception
    {
    }

    public class ExcepcionNegativeAmountExpense : Exception
    {
    }

    public class ExcepcionInvalidAmountExpense : Exception
    {
    }

    public class ExcepcionInvalidDescriptionLengthExpense : Exception
    {
    }

    public class ExcepcionExpenseWithEmptyCategory : Exception
    {
    }

    public class NegativeValueErrorAttribute : Exception
    {
    }

    public class NoFindBudgetCategoryByCategoryName : Exception
    {
    }

    public class NoFindCategoryByName : Exception
    {
    }

    public class NoFindExpenseByDescription : Exception
    {
    }
    public class NoFindEqualsExpense: Exception
    {
    }

    public class NoFindBudget : Exception
    {
    }

    public class NoAsignCategoryByDescriptionExpense : Exception
    {
    }

    public class InvalidKeyWord : Exception
    {
    }

}

