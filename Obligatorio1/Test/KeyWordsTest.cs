﻿using System;
using System.Collections.Generic;
using BusinessLogic;
using Microsoft.VisualStudio.TestTools.UnitTesting;

namespace Test
{
    [TestClass]
    public class KeyWordsTest
    {
        [TestMethod]
        [ExpectedException(typeof(ExcepcionInvalidKeyWordsLengthCategory))]
        public void SetKeyWordInvalidLength()
        {
            List<string> keyWords = new List<string>()
            {
            "movie theater",
            "theater",
            "departure",
            "bookstore",
            "jugeteria",
            "shopping",
            "skating",
            "casino",
            "game room",
            "Park",
            "shopping",
            };
            KeyWord keyWord = new KeyWord(keyWords);
            keyWord.SetKeyWord(keyWord);
        }

        [TestMethod]
        public void SetKeyWordValidCase()
        {
            List<string> keyWords = new List<string>()
            {
            "movie theater",
            "theater",
            "departure",
            "bookstore",
            "jugeteria",
            "shopping",
            "skating",
            "casino",
            "game room",
            };
            KeyWord expectedKeyWord = new KeyWord(keyWords);
            KeyWord keyWord = new KeyWord(keyWords);
            keyWord.SetKeyWord(keyWord);
            Assert.AreEqual(expectedKeyWord, keyWord);
        }

        [TestMethod]
        public void EqualsKeyWordCaseTrue()
        {
            List<string> keyWords = new List<string>()
            {
            "movie theater",
            "theater",
            "departure",
            "bookstore",
            "jugeteria",
            "shopping",
            "skating",
            "casino",
            "game room",
            };
            KeyWord expectedKeyWord = new KeyWord(keyWords);
            KeyWord keyWord = new KeyWord(keyWords);
            Assert.IsTrue(expectedKeyWord.Equals(keyWord));
        }


        [TestMethod]
        public void EqualsKeyWordCaseFalse()
        {
            List<string> keyWords = new List<string>()
            {
            "movie theater",
            "theater",
            "departure",
            "bookstore",
            "jugeteria",
            "shopping",
            "skating",
            "casino",
            "game room",
            };
            List<string> keyWords2 = new List<string>()
            {
            "movie theater",
            "theater",
            "departure",
            };
            KeyWord expectedKeyWord = new KeyWord(keyWords);
            KeyWord keyWord = new KeyWord(keyWords2);
            Assert.IsFalse(expectedKeyWord.Equals(keyWord));
        }

        [TestMethod]
        public void EqualsKeyWordCaseNoKeyWord()
        {
            List<string> keyWords = new List<string>()
            {
            "movie theater",
            "theater",
            "departure",
            "bookstore",
            "jugeteria",
            "shopping",
            "skating",
            "casino",
            "game room",
            };
            List<string> keyWords2 = new List<string>()
            {
            "movie theater",
            "theater",
            "departure",
            };
            KeyWord expectedKeyWord = new KeyWord(keyWords);
            KeyWord keyWord = new KeyWord(keyWords2);
            Assert.IsFalse(expectedKeyWord.Equals(keyWords));
        }

        [TestMethod]
        public void ContieneCaseTrue()
        {
            List<string> keyWords = new List<string>()
            {
            "movie theater",
            "theater",
            "departure",
            "bookstore",
            "jugeteria",
            "shopping",
            "skating",
            "casino",
            "game room",
            };
            string description = "movie theater";
            KeyWord keyWord = new KeyWord(keyWords);
            Assert.IsTrue(keyWord.KeywordContainsAPartOfDescription(description));
        }

        [TestMethod]
        public void ContieneCaseFalse()
        {
            List<string> keyWords = new List<string>()
            {
            "movie theater",
            "theater",
            "departure",
            "bookstore",
            "jugeteria",
            "shopping",
            "skating",
            "casino",
            "game room",
            };
            string description = "food";
            KeyWord keyWord = new KeyWord(keyWords);
            Assert.IsFalse(keyWord.KeywordContainsAPartOfDescription(description));
        }


        [TestMethod]
        public void ExistKeyWordAnotherCategoryCaseFalse()
        {
            List<string> keyWords = new List<string>()
            {
             "movie theater",
            "theater",
            "departure",
            "bookstore",
            "jugeteria",
            "shopping",
            "skating",
            "casino",
            "game room",
            };
            List<string> keyWords2 = new List<string>()
            {
            "cena",
            };
            KeyWord keyWord = new KeyWord(keyWords);
            KeyWord keyWord2 = new KeyWord(keyWords2);
            Category category = new Category { Name = "entertainment", KeyWords = keyWord };
            bool exist = true;
            Assert.IsTrue(keyWord.ExistKeyWordInAnotherCategory(keyWord2,ref exist,category));
        }

        [TestMethod]
        public void ExistKeyWordAnotherCategoryCaseTrue()
        {
            List<string> keyWords = new List<string>()
            {
             "movie theater",
            "theater",
            "departure",
            "bookstore",
            "jugeteria",
            "shopping",
            "skating",
            "casino",
            "game room",
            };
            List<string> keyWords2 = new List<string>()
            {
            "casino",
            "cine",
            "cena"
            };
            KeyWord keyWord = new KeyWord(keyWords);
            KeyWord keyWord2 = new KeyWord(keyWords2);
            Category category = new Category { Name = "entertainment", KeyWords = keyWord };
            bool exist =true;
            Assert.IsFalse(keyWord.ExistKeyWordInAnotherCategory(keyWord2, ref exist, category));
        }


        [TestMethod]
        public void ExistKeyCaseTrue()
        {
            List<string> keyWords = new List<string>()
            {
             "movie theater",
            "theater",
            "departure",
            "bookstore",
            "jugeteria",
            "shopping",
            "skating",
            "casino",
            "game room",
            };
            KeyWord keyWord = new KeyWord(keyWords);
            Category category = new Category { Name = "entertainment", KeyWords = keyWord };
            bool exist = false;
            Assert.IsTrue(keyWord.ExistThisKey("movie theater", ref exist, category));
        }


        [TestMethod]
        public void ExistKeyCaseFalse()
        {
            List<string> keyWords = new List<string>()
            {
             "movie theater",
            "theater",
            "departure",
            "bookstore",
            "jugeteria",
            "shopping",
            "skating",
            "casino",
            "game room",
            };
            KeyWord keyWord = new KeyWord(keyWords);
            Category category = new Category { Name = "entertainment", KeyWords = keyWord };
            bool exist = false;
            Assert.IsFalse(keyWord.ExistThisKey("food", ref exist, category));
        }

        [TestMethod]
        public void AsignKeyWordToList()
        {
            List<string> keyWords = new List<string>()
            {
            "movie theater",
            "theater",
            "departure",
            "bookstore",
            "jugeteria",
            "shopping",
            "skating",
            "casino",
            "game room",
            };
            KeyWord keyWord = new KeyWord(keyWords);
            List<string> keyWords2 = new List<string>();
            keyWords2 = keyWord.AsignKeyWordToList(keyWord);
            Assert.AreEqual(keyWords, keyWords2);
        }




    }
}