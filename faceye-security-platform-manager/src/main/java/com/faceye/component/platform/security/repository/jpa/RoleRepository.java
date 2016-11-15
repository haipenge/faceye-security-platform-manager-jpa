package com.faceye.component.platform.security.repository.jpa;

import org.springframework.stereotype.Repository;

import com.faceye.component.platform.security.entity.Role;
import com.faceye.feature.repository.jpa.BaseRepository;
/**
 * Role 实体DAO
 * @author @haipenge 
 * haipenge@gmail.com
*  Create Date:2014年5月20日
 */
@Repository("platform-roleRepository")
public interface RoleRepository extends BaseRepository<Role,Long> {
	
	
}/**@generate-repository-source@**/
