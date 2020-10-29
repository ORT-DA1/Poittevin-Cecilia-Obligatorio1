﻿using System.Linq;

namespace BusinessLogic
{
    public class Category
    {
        private string name;

        private KeyWord keyWords;

        public string Name {get=>name; set=>SetName(value); }

        public KeyWord KeyWords { get=>keyWords; set=>SetKeyWords(value); } 

        private void SetName(string vName)
        {
             if (vName.Length > 15 || vName.Length < 3)  
                throw new ExcepcionInvalidNameLengthCategory();
            if (vName.All(char.IsDigit))
                throw new ExcepcionInvalidNameDigitCategory();
            name = vName;
        }

        private void SetKeyWords(KeyWord vKeyWords)
        {
            keyWords = vKeyWords;
        }

        public override bool Equals(object obj)
        {
            if (obj is Category category)
            {
                bool isEqualName = Name == category.Name;
                bool isEqualKeyWords = keyWords.Equals(category.keyWords);
                return isEqualName && isEqualKeyWords;
            }
            return false;
        }

        public override string ToString()
        {
            return Name;
        }

        public bool ExistThisKey(string pKeyWord)
        {
            return KeyWords.ContainKey(pKeyWord);
        }

        public bool CategoryContainKeyword(KeyWord pKeyWords)
        {
            return KeyWords.ExistKeyWords(pKeyWords); 
        }

        public bool ExistKeyWordInDscription(string description)
        {
           return KeyWords.DescriptionContainAPartOfText(description);
        }

        public bool IsSameCategoryName(string categoryName)
        {
            return Name.ToLower() == categoryName.ToLower();
        }

        public bool IsKeyWordInDescription(string[] descriptionArray)
        {
            bool exist = false;
            foreach (string description in descriptionArray)
            {
                exist = ExistKeyWordInDscription(description);
                if (exist == true)
                    return true;
            }
            return exist;
        }

      
    }
}