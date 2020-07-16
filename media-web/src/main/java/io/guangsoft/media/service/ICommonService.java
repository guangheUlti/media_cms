package io.guangsoft.media.service;

import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.baomidou.mybatisplus.extension.service.IService;

public interface ICommonService<T> extends IService<T> {

    public Page<T> listPage(QueryWrapper<T> wrapper);

    public Page<T> listPage(QueryWrapper<T> wrapper, Page<T> page);

}