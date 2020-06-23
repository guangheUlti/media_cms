package io.guangsoft.media.service.impl;

import io.guangsoft.media.web.config.autoconfigure.ShiroConfigProperties;
import io.guangsoft.media.entity.User;
import io.guangsoft.web.config.autoconfigure.ShiroConfigProperties;
import org.apache.shiro.crypto.RandomNumberGenerator;
import org.apache.shiro.crypto.SecureRandomNumberGenerator;
import org.apache.shiro.crypto.hash.SimpleHash;
import org.apache.shiro.util.ByteSource;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import io.guangsoft.web.modules.sys.entity.User;

@Service("passwordService")
public class PasswordService {
	private RandomNumberGenerator randomNumberGenerator = new SecureRandomNumberGenerator();

	@Autowired
	private ShiroConfigProperties shiroConfigProperties;

	public void encryptPassword(User user) {

		user.setSalt(randomNumberGenerator.nextBytes().toHex());
		String newPassword = new SimpleHash(shiroConfigProperties.getCredentialsHashAlgorithmName(), user.getPassword(),
				ByteSource.Util.bytes(user.getCredentialsSalt()), shiroConfigProperties.getCredentialsHashIterations()).toHex();
		user.setPassword(newPassword);
	}
}
