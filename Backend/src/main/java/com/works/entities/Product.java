package com.works.entities;


import lombok.Data;

import javax.persistence.*;
import javax.validation.constraints.*;
import java.util.ArrayList;
import java.util.List;

@Entity
@Data
public class Product {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long pid;

    @Size(min = 2, max = 150)
    @NotEmpty
    @NotNull
    private String title;

    @Size(min = 5, max = 500)
    @NotEmpty
    @NotNull
    private String detail;

    @Max(990000)
    @Min(2)
    @NotNull
    private Integer price;

    @Size(min = 2, max = 300)
    @NotEmpty
    @NotNull
    private String thumbnail;

    @ElementCollection(targetClass = String.class, fetch = FetchType.EAGER)
    @CollectionTable(name = "images", joinColumns = @JoinColumn(name = "pid"))
    @Column(name = "images", nullable = false)
    private List<String> images = new ArrayList<>();

    @ManyToMany
    List<Category> categories;

}
