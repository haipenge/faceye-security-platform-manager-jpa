package com.faceye.component.platform.security.service.impl;

import java.util.Collection;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

import org.apache.commons.collections.CollectionUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.security.access.ConfigAttribute;
import org.springframework.security.access.SecurityConfig;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.faceye.component.platform.security.entity.Resource;
import com.faceye.component.platform.security.entity.Role;
import com.faceye.component.platform.security.repository.jpa.ResourceRepository;
import com.faceye.component.platform.security.repository.jpa.RoleRepository;
import com.faceye.component.platform.security.service.RoleService;
import com.faceye.feature.service.impl.BaseServiceImpl;
 
/**
 * 角色服务类
 * @author @haipenge 
 * haipenge@gmail.com
*  Create Date:2014年6月27日
 */
@Service("platform-roleService")
@Transactional
public class RoleServiceImpl extends BaseServiceImpl<Role, Long, RoleRepository> implements RoleService {

	@Autowired
	@Qualifier("platform-resourceRepository")
	private ResourceRepository resourceRepository=null;
	@Autowired
	public RoleServiceImpl(RoleRepository dao) {
		super(dao);
	}
	
	@Override
	public void remove(Long id)  {
             Role role=this.get(id);
             this.remove(role);
	}

	@Override
	public void remove(Role entity)  {
		dao.delete(entity);
	}

	@Override
	public Collection<ConfigAttribute> getAllConfigAttributes() {
		Set<ConfigAttribute> allAttributes = new HashSet<ConfigAttribute>();
		List<Role> allRoles = this.dao.findAll();
		if (null != allRoles && CollectionUtils.isNotEmpty(allRoles)) {
			for (Role role : allRoles) {
				ConfigAttribute ca = new SecurityConfig(role.getRoleAuth());
				allAttributes.add(ca);
			}
		}
		return allAttributes;
	}

	@Override
	public void saveRoleAuthResources(Long roleId, Long[] resourceIds) {
	   Role role=this.dao.getOne(roleId);
	   Set<Resource> resources=role.getResources();
	   resources.clear();
	   if(resourceIds!=null &&resourceIds.length>0){
		   for(Long resourceId:resourceIds){
			   Resource resource=this.resourceRepository.getOne(resourceId);
			   resources.add(resource);
		   }
	   }
	   role.setResources(resources);
	   this.dao.save(role);
	}

	@Override
	public Role getRoleByName(String name) {
		return dao.getRoleByName(name);
	}
	
	
}/**@generate-service-source@**/
