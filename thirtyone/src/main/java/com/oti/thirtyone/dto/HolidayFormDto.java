package com.oti.thirtyone.dto;

import lombok.Data;

@Data
public class HolidayFormDto {
//	private int hdrId; //휴가 요청 아이디
//	private String hdrSubmittedDate; //휴가 상신일
	private String hdrStartDate; //휴가 시작일
	private String hdrEndDate; //휴가 종료일
	private String hdrContent; //휴가 사유
	private String hdrStatus; //휴가 결재 상태
	private double hdrUsedDay; //휴가 사용일
	private String hdrCompletedDate; //휴가 결재 처리 날짜
	private int hdCategory; //휴가 유형
//	private String hdrEmpId; // 기안자(휴가 신청자)
	private String hdrApprover; // 결재자
	
//	private String hdName; // 휴가 유형 String화
	
	private int holidayType; //종일,반차,반반차
	private int holidayPeriod; //오전 오후
	private int holidayTime; // 반반차 시간
	
	public void setUsedDay(double hdrUsedDay) {
		if (hdrUsedDay !=1 && hdrUsedDay !=0.5 && hdrUsedDay !=0.25) {
			this.hdrUsedDay = 1;
		} else {
			this.hdrUsedDay = hdrUsedDay;
		}
	}
}
