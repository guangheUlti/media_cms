package io.guangsoft.media.service.impl;

import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import io.guangsoft.media.service.ICommonService;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Transactional
public class CommonServiceImpl<M extends BaseMapper<T>, T> extends ServiceImpl<M, T> implements ICommonService<T> {

    @Override
    public Page<T> listPage(QueryWrapper<T> wrapper) {
        Page<T> page = new Page<>(1, 10);
        return listPage(wrapper, page);
    }

    @Override
    public Page<T> listPage(QueryWrapper<T> wrapper, Page<T> page) {
        baseMapper.selectPage(page, wrapper);
        return page;
    }

    @Override
    public List<T> list() {
        QueryWrapper<T> queryWrapper = new QueryWrapper<T>();
        return list(queryWrapper);
    }

    @Override
    public List<T> list(QueryWrapper<T> wrapper) {
        return baseMapper.selectList(wrapper);
    }

}