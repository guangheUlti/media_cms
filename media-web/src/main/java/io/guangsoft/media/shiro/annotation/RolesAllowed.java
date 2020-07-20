package io.guangsoft.media.shiro.annotation;

import java.lang.annotation.*;

@Documented
@Target({ ElementType.TYPE, ElementType.METHOD })
@Retention(RetentionPolicy.RUNTIME)
public @interface RolesAllowed {
	String[] value();
}