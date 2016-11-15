package com.faceye.component.platform.security.service;

import com.faceye.component.platform.security.entity.Resource;
import com.faceye.feature.service.BaseService;

public interface ResourceService extends BaseService<Resource,Long>{

	public Resource getResourceByUrl(String url);
	
}/**@generate-service-source@**/
