package com.controller;

public class data {
    int id;
    String u;
    String f;
    String source;

    public data(int id, String u, String f, String source) {
        this.id = id;
        this.u = u;
        this.f = f;
        this.source = source;
    }

    public data() {
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getU() {
        return u;
    }

    public void setU(String u) {
        this.u = u;
    }

    public String getF() {
        return f;
    }

    public void setF(String f) {
        this.f = f;
    }

    public String getSource() {
        return source;
    }

    public void setSource(String source) {
        this.source = source;
    }
}
