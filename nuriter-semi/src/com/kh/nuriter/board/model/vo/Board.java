package com.kh.nuriter.board.model.vo;

import java.sql.Date;

public class Board implements java.io.Serializable{
   private String bNumber; //board_number
   private String bTitle;   //board_title
   private String bContent; //board_content
   private int userNumber; // user_number
   private Date bDate;   //board_date
   private String bSort;  //board_sort
   private String nuriNumber; //nuri_number

   public Board(){}

   public Board(String bNumber, String bTitle, String bContent, int userNumber, Date bDate, String bSort,
         String nuriNumber) {
      super();
      this.bNumber = bNumber;
      this.bTitle = bTitle;
      this.bContent = bContent;
      this.userNumber = userNumber;
      this.bDate = bDate;
      this.bSort = bSort;
      this.nuriNumber = nuriNumber;
   }

   public String getbNumber() {
      return bNumber;
   }

   public void setbNumber(String bNumber) {
      this.bNumber = bNumber;
   }

   public String getbTitle() {
      return bTitle;
   }

   public void setbTitle(String bTitle) {
      this.bTitle = bTitle;
   }

   public String getbContent() {
      return bContent;
   }

   public void setbContent(String bContent) {
      this.bContent = bContent;
   }

   public int getUserNumber() {
      return userNumber;
   }

   public void setUserNumber(int userNumber) {
      this.userNumber = userNumber;
   }

   public Date getbDate() {
      return bDate;
   }

   public void setbDate(Date bDate) {
      this.bDate = bDate;
   }

   public String getbSort() {
      return bSort;
   }

   public void setbSort(String bSort) {
      this.bSort = bSort;
   }

   public String getNuriNumber() {
      return nuriNumber;
   }

   public void setNuriNumber(String nuriNumber) {
      this.nuriNumber = nuriNumber;
   }

   @Override
   public String toString() {
      return "Board [bNumber=" + bNumber + ", bTitle=" + bTitle + ", bContent=" + bContent + ", userNumber="
            + userNumber + ", bDate=" + bDate + ", bSort=" + bSort + ", nuriNumber=" + nuriNumber + "]";
   }


}