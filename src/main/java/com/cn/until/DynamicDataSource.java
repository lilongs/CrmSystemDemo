package com.cn.until;

import org.springframework.jdbc.datasource.lookup.AbstractRoutingDataSource;

public class DynamicDataSource extends AbstractRoutingDataSource {

	@Override
	protected Object determineCurrentLookupKey() {
		// TODO �Զ����ɵķ������
		return DbContextHolder.getDbType();
	}

}
