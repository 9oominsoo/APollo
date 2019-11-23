package com.apollo.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.apollo.dao.StatisticDao;

@Service
public class StatisticService {

	@Autowired
	private StatisticDao dao;
	
	
}
