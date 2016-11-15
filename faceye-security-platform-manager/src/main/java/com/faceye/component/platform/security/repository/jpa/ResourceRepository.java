package com.faceye.component.platform.security.repository.jpa;

import org.springframework.stereotype.Repository;

import com.faceye.component.platform.security.entity.Resource;
import com.faceye.feature.repository.jpa.BaseRepository;
/**
 * Resource 实体DAO
 * @author @haipenge 
 * haipenge@gmail.com
*  Create Date:2014年5月20日
 */
@Repository("platform-resourceRepository")
public interface ResourceRepository extends BaseRepository<Resource,Long> {
	
	/**
	 * 根据URL地址取得Resource 对像
	 * @todo
	 * @param url
	 * @return
	 * @author:@haipenge
	 * haipenge@gmail.com
	 * 2014年7月1日
	 */
	public Resource getResourceByUrl(String url);
	
}/**@generate-repository-source@**/
