package com.task_haibazo.entity;

import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.JoinColumn;
import jakarta.persistence.ManyToOne;
import jakarta.persistence.Table;
import lombok.Data;

@Data
@Entity
@Table(name = "products_styles")
public class ProductStyle {
	
	@Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id; 
	
	@ManyToOne
    @JoinColumn(name = "product_id", nullable = false)
    private Product product;
	
	 @ManyToOne
	 @JoinColumn(name = "style_id", nullable = false)
	 private Style style;
}
