package io.guangsoft.media.entity;

import java.io.Serializable;

public abstract class AbstractEntity<ID> implements Serializable {

	public abstract ID getId();

	public abstract void setId(ID id);
}
