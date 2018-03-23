package com.faceye.test.component.platform.security.repository;

import org.junit.After;
import org.junit.Before;
import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.junit.Assert;

import com.faceye.component.platform.security.entity.Resource;
import com.faceye.component.platform.security.repository.jpa.ResourceRepository;
import com.faceye.test.feature.repository.BaseRepositoryTestCase;
/**
 * Resource DAO 测试
 * @author @haipenge 
 * haipenge@gmail.com
*  Create Date:2014年5月26日
 */
public class ResourceRepositoryTestCase extends BaseRepositoryTestCase {
	@Autowired
	private ResourceRepository resourceRepository = null;

	@Before
	public void before() throws Exception {
		this.resourceRepository.deleteAll();
	}

	@After
	public void after() throws Exception {

	}

	@Test
	public void testSave() throws Exception {
		Resource entity = new Resource();
		this.resourceRepository.save(entity);
		Iterable<Resource> entities = this.resourceRepository.findAll();
		Assert.assertTrue(entities.iterator().hasNext());
	}

	@Test
	public void testDelete() throws Exception {
		Resource entity = new Resource();
		this.resourceRepository.save(entity);
        this.resourceRepository.deleteById(entity.getId());
        Iterable<Resource> entities = this.resourceRepository.findAll();
		Assert.assertTrue(!entities.iterator().hasNext());
	}

	@Test
	public void testFindOne() throws Exception {
		Resource entity = new Resource();
		this.resourceRepository.save(entity);
		Resource resource=this.resourceRepository.getOne(entity.getId());
		Assert.assertTrue(resource!=null);
	}

	
}
