package ru.ak.example.model;

/**
 * Created by Andrey Klyuev on 02.02.2021.
 */
public class Transaction {

  private String id;
  private String status;
  private String info;

  public Transaction(String id, String status) {
    this.id = id;
    this.status = status;
  }

  public Transaction(String id, String status, String info) {
    this.id = id;
    this.status = status;
    this.info = info;
  }

  public String getId() {
    return id;
  }

  public void setId(String id) {
    this.id = id;
  }

  public String getStatus() {
    return status;
  }

  public void setStatus(String status) {
    this.status = status;
  }

  public String getInfo() {
    return info;
  }

  public void setInfo(String info) {
    this.info = info;
  }
}
