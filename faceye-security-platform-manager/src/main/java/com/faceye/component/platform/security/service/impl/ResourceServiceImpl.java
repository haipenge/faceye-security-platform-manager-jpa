package com.faceye.component.platform.security.service.impl;

import java.util.Collection;
import java.util.List;

import org.apache.commons.collections.CollectionUtils;
import org.apache.commons.lang3.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.security.access.ConfigAttribute;
import org.springframework.security.web.FilterInvocation;
import org.springframework.security.web.access.intercept.FilterInvocationSecurityMetadataSource;
import org.springframework.stereotype.Service;
import org.springframework.util.AntPathMatcher;
import org.springframework.util.PathMatcher;

import com.faceye.component.platform.security.entity.Resource;
import com.faceye.component.platform.security.repository.jpa.ResourceRepository;
import com.faceye.component.platform.security.service.ResourceService;
import com.faceye.component.platform.security.service.RoleService;
import com.faceye.feature.service.impl.BaseServiceImpl;
import com.faceye.feature.util.ServiceException;

@Service("platform-resourceService")
public class ResourceServiceImpl extends BaseServiceImpl<Resource, Long, ResourceRepository> implements ResourceService,FilterInvocationSecurityMetadataSource {
	private PathMatcher pathMatcher=new AntPathMatcher();
	@Autowired
	@Qualifier("platform-roleService")
	private RoleService roleService=null;
	
	@Autowired
	public ResourceServiceImpl(ResourceRepository dao) {
		super(dao);
	}
	
	@Override
	public void remove(Long id) throws ServiceException {
		Resource resource=this.get(id);
		this.remove(resource);
	}

	@Override
	public void remove(Resource entity) throws ServiceException {
		dao.delete(entity);
	}

	@Override
	public Collection<ConfigAttribute> getAttributes(Object object) throws IllegalArgumentException {
		String url = ((FilterInvocation) object).getRequestUrl();
		logger.debug(">>FaceYe -->Security-->,filter url is:"+url);
        List<Resource> resources=this.dao.findAll();
        if(CollectionUtils.isNotEmpty(resources)){
        	for(Resource r : resources){
        	   String _url=r.getUrl();
        	   if(StringUtils.isNotEmpty(_url)&&!_url.endsWith("\\*")){
        		   _url+="**";
        	   }
        	   if(pathMatcher.match(_url, url)){
        		   return r.getAttributes();
        	   }
        	}
        }
		return null;
	}

	@Override
	public Collection<ConfigAttribute> getAllConfigAttributes() {
		Collection<ConfigAttribute> allAttributes = null;
		allAttributes = this.roleService.getAllConfigAttributes();
		return allAttributes;
	}

	@Override
	public boolean supports(Class<?> clazz) {
		return true;
	}

	@Override
	public Resource getResourceByUrl(String url) {
		return this.dao.getResourceByUrl(url);
	}
	
	
}/**@generate-service-source@**/
