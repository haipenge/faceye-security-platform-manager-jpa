package com.faceye.component.platform.security.service;

/**
 * faceye security 安全模块数据初始化
 * @author @haipenge 
 * haipenge@gmail.com
*  Create Date:2015年3月15日
 */
public interface SecurityInitService {

	/**
	 * 是否已初始化
	 * @todo
	 * @return
	 * @author:@haipenge
	 * haipenge@gmail.com
	 * 2015年3月15日
	 */
	public boolean isInited();
	
	/**
	 * 初始化
	 * @todo
	 * @return
	 * @author:@haipenge
	 * haipenge@gmail.com
	 * 2015年3月15日
	 */
	public void init();
	
	
	/**
	 * 清理数据
	 * @todo
	 * @author:@haipenge
	 * haipenge@gmail.com
	 * 2015年3月15日
	 */
	public void clear();
	
	
	/**
	 * 重新初始化
	 * @todo
	 * @author:@haipenge
	 * haipenge@gmail.com
	 * 2015年3月15日
	 */
	public void reInit();
	
}
