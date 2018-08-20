package com.kh.nuriter.newNuriter.model.vo;

import java.sql.Date;

public class NewNuriter implements java.io.Serializable{
   private String nuriNum; //누리터 번호
    private String ownerNum; //누리장 번호(회원번호)
    private String nuriName; //누리터 이름
    private Date startDate; //시작 날짜
    private Date endDate; //종료 날짜
    private String startTime; //시작 및 종료 시간
    private String place; //장소
    private String price; //가격
    private Date applicationDate; //누리터 개설일
    
    public NewNuriter() {}

   public NewNuriter(String nuriNum, String ownerNum, String nuriName, Date startDate, Date endDate, String startTime,
         String place, String price, Date applicationDate) {
      super();
      this.nuriNum = nuriNum;
      this.ownerNum = ownerNum;
      this.nuriName = nuriName;
      this.startDate = startDate;
      this.endDate = endDate;
      this.startTime = startTime;
      this.place = place;
      this.price = price;  
      this.applicationDate = applicationDate;
   }

   public String getNuriNum() {
      return nuriNum;
   }

   public void setNuriNum(String nuriNum) {
      this.nuriNum = nuriNum;
   }

   public String getOwnerNum() {
      return ownerNum;
   }

   public void setOwnerNum(String ownerNum) {
      this.ownerNum = ownerNum;
   }

   public String getNuriName() {
      return nuriName;
   }

   public void setNuriName(String nuriName) {
      this.nuriName = nuriName;
   }

   public Date getStartDate() {
      return startDate;
   }

   public void setStartDate(Date startDate) {
      this.startDate = startDate;
   }

   public Date getEndDate() {
      return endDate;
   }

   public void setEndDate(Date endDate) {
      this.endDate = endDate;
   }

   public String getStartTime() {
      return startTime;
   }

   public void setStartTime(String startTime) {
      this.startTime = startTime;
   }

   public String getPlace() {
      return place;
   }

   public void setPlace(String place) {
      this.place = place;
   }

   public String getPrice() {
      return price;
   }

   public void setPrice(String price) {
      this.price = price;
   }

   public Date getApplicationDate() {
      return applicationDate;
   }

   public void setApplicationDate(Date applicationDate) {
      this.applicationDate = applicationDate;
   }

   @Override
   public String toString() {
      return "newNuriter [nuriNum=" + nuriNum + ", ownerNum=" + ownerNum + ", nuriName=" + nuriName + ", startDate="
            + startDate + ", endDate=" + endDate + ", startTime=" + startTime + ", place=" + place + ", price="
            + price + ", applicationDate=" + applicationDate + "]";
   }
    
}