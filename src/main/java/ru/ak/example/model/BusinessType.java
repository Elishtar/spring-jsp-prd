package ru.ak.example.model;

/**
 * Created by Andrey Klyuev on 02.02.2021.
 */
public class BusinessType {

  private String name;

  private int inbound;
  private int outbound;
  private int errors;
  private int businessReject;

  public BusinessType(String name, int inbound, int outbound, int errors, int businessReject) {
    this.name = name;
    this.inbound = inbound;
    this.outbound = outbound;
    this.errors = errors;
    this.businessReject = businessReject;
  }

  public int getInbound() {
    return inbound;
  }

  public void setInbound(int inbound) {
    this.inbound = inbound;
  }

  public int getOutbound() {
    return outbound;
  }

  public void setOutbound(int outbound) {
    this.outbound = outbound;
  }

  public int getErrors() {
    return errors;
  }

  public void setErrors(int errors) {
    this.errors = errors;
  }

  public int getBusinessReject() {
    return businessReject;
  }

  public void setBusinessReject(int businessReject) {
    this.businessReject = businessReject;
  }

  public String getName() {
    return name;
  }

  public void setName(String name) {
    this.name = name;
  }
}
