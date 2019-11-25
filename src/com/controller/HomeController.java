package com.controller;

import com.google.gson.Gson;
import com.google.gson.JsonObject;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.util.*;

//@WebServlet("/home")
public class HomeController extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int id = 1;
        String u = "";
        String f = "";
        String source = "";
        if (request.getParameter("id") != null) id = Integer.parseInt(request.getParameter("id"));
        if (request.getParameter("u") != null) u = request.getParameter("u").toUpperCase();
        if (request.getParameter("f") != null) f = request.getParameter("f").toUpperCase();
        if (request.getParameter("source") != null) source = request.getParameter("source").toUpperCase();
        response.setContentType("text/plain");
        response.setCharacterEncoding("UTF-8");
        if (!u.equals("") && !f.equals("")) {
            String result = "";
            if (id == 1) result = checkOne(source, u, f);
            else if (id == 2) result = checkTwo(u, f);
            else if (id == 3) result = checkThree(u, f);
            else if (id == 4) result = checkFour(u, f);
            else result = checkFive(u, f);
            response.getWriter().print(result);
        } else response.getWriter().print("0");
    }

    public String checkOne(String source, String u, String f) {
        u = u.replace(",", "");
        List<String> list = Arrays.asList(f.split(","));
        List<String> l1 = new ArrayList<>(), l2 = new ArrayList<>();
        List<Boolean> check = new ArrayList<>();
        for (int i = 0; i < list.size(); ++i) {
            String[] temp = list.get(i).split(":");
            l1.add(temp[0]);
            l2.add(temp[1]);
            check.add(false);
        }
        return abc(source, u, l1, l2, check);
    }

    public String abc(String source, String u, List<String> l1, List<String> l2, List<Boolean> check) {
        int count = 0;
        while (true) {
            if (source.equals(u)) return u;
            boolean l = false;
            for (int i = 0; i < l1.size(); ++i) {
                if (!check.get(i)) {
                    if (checkContains(source, l1.get(i))) {
                        l = true;
                        check.set(i, true);
                        for (int j = 0; j < l2.get(i).length(); ++j)
                            if (!source.contains(l2.get(i).charAt(j) + ""))
                                source += l2.get(i).charAt(j);
                        break;
                    }
                }
            }
            if (!l) return source;
            count++;
            if (count > 50) return source;
        }
    }

    public boolean checkContains(String a, String b) {
        for (int i = 0; i < b.length(); ++i) {
            if (!a.contains(b.charAt(i) + "")) return false;
        }
        return true;
    }

    public String deleteOneChar(String s, int i) {
        if (i >= 0 && i < s.length())
            return s.replace(s.charAt(i) + "", "");
        else return s;
    }

    public String checkTwo(String u, String f) {
        u = u.replace(",", "");
        String u1 = u;
        int i = 0;
        while (u.length() != 1) {
            if (i >= u.length()) return u;
            String u2 = deleteOneChar(u, i);
            if (checkContains(checkOne(u2, u, f), u1)) {
                u = deleteOneChar(u, i);
            } else {
                i++;
            }
        }
        return "";
    }

    public String checkThree(String u, String f) {
        u = u.replace(",", "");
        List<String> list = Arrays.asList(f.split(","));
        List<String> l1 = new ArrayList<>(), l2 = new ArrayList<>();
        List<Boolean> check = new ArrayList<>();
        for (int i = 0; i < list.size(); ++i) {
            String[] temp = list.get(i).split(":");
            for (int j=0;j<temp[1].length();++j) {
                l1.add(temp[0]);
                l2.add(temp[1].charAt(j)+"");
                check.add(false);
            }
        }
        for (int i=0;i<l1.size();++i){
            if (l1.get(i).length()>1){
                for (int j=0;j<l1.get(i).length();++j){
                    List<Boolean> check1=new ArrayList<>();
                    for (int k=0;k<l1.size();++k) check1.add(false);
                    if (checkContains(abc(deleteOneChar(l1.get(i),j),u,l1,l2,check1),l2.get(i))){
                        l1.set(i,deleteOneChar(l1.get(i),j));
                    }
                }
            }
        }
        Set<String> result=new HashSet<>();
        for (int i=0;i<l1.size();++i) result.add(l1.get(i)+":"+l2.get(i));
        return checkFive(u,String.join(",",result));
    }

    public String checkFour(String u, String f) {
        return "";
    }

    public String checkFive(String u, String f) {
        u = u.replace(",", "");
        List<String> list = Arrays.asList(f.split(","));
        List<String> l1 = new ArrayList<>(), l2 = new ArrayList<>();
        List<Boolean> check = new ArrayList<>();
        for (int i = 0; i < list.size(); ++i) {
            String[] temp = list.get(i).split(":");
            l1.add(temp[0]);
            l2.add(temp[1]);
            check.add(false);
        }
        List<String> l3=new ArrayList<>(l1),l4=new ArrayList<>(l2);
        for (int i=0;i<l1.size();++i){
           // List<String> l5=new ArrayList<>(),l6=new ArrayList<>();
            String a=l1.remove(i);
            String b=l2.remove(i);
            if (!compareF(u,l1,l2,l3,l4)) {
                l2.add(i,b);
                l1.add(i,a);
            }
        }
        String result="";
        for (int i=0;i<l1.size();++i) result +=l1.get(i)+":"+l2.get(i)+" ";
        return result;
    }

    public boolean compareF(String u, List<String> l1, List<String> l2, List<String> l3, List<String> l4) {
        List<Boolean> check = new ArrayList<>();
        for (int i=0;i<20;++i) check.add(false);
        for (int i = 0; i < l1.size(); ++i) {
            for (int j = 0; j < l3.size(); ++j) check.set(j,false);
            if (!checkContains(abc(l1.get(i), u, l3, l4, check), l2.get(i))) return false;
        }
        for (int i=0;i<l3.size();++i){
            for (int j=0;j<l2.size();++j) check.add(j,false);
            String a=abc(l3.get(i),u,l1,l2,check);
            if (!checkContains(a,l4.get(i))) return false;
        }
        return true;
    }
}
