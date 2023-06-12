package com.qfedu.domain;

import lombok.Data;

import java.util.List;

@Data
public class Orders {
    private int oid;
    private double total;
    private String paytype;
    private List<Details> details;
}
