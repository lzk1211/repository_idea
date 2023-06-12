package com.qfedu.domain;

import lombok.Data;

@Data
public class Products {
    private int pid;
    private String pname;
    private String img;
    private double nprice;
    private double oprice;
    private String pdesc;
    private Types types;
}
