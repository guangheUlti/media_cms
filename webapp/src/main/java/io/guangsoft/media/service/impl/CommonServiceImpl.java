package io.guangsoft.media.service.impl;

import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import com.baomidou.mybatisplus.core.metadata.IPage;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import io.guangsoft.common.query.data.Page;
import io.guangsoft.common.query.data.PageImpl;
import io.guangsoft.common.query.data.Pageable;
import io.guangsoft.common.query.data.Queryable;
import io.guangsoft.media.data.DuplicateValid;
import io.guangsoft.media.service.ICommonService;
import io.guangsoft.media.data.QueryToWrapper;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.util.StringUtils;

import java.util.List;

@Transactional
public class CommonServiceImpl<M extends BaseMapper<T>, T> extends ServiceImpl<M, T> implements ICommonService<T> {

    @Override
    public Page<T> list(Queryable queryable) {
        QueryWrapper<T> QueryWrapper = new QueryWrapper<T>();
        return list(queryable, QueryWrapper);
    }

    @Override
    public Page<T> list(Queryable queryable, QueryWrapper<T> wrapper) {
        QueryToWrapper<T> queryToWrapper = new QueryToWrapper<T>();
        queryToWrapper.parseCondition(wrapper, queryable);
        // 排序问题
        queryToWrapper.parseSort(wrapper, queryable);
        Pageable pageable = queryable.getPageable();
        IPage<T> page = new com.baomidou.mybatisplus.extension.plugins.pagination.Page<>(pageable.getPageNumber(), pageable.getPageSize());
        IPage<T> content = super.page(page, wrapper);
        return new PageImpl<T>(content.getRecords(), queryable.getPageable(), content.getTotal());
    }

    @Override
    public List<T> listWithNoPage(Queryable queryable) {
        QueryWrapper<T> QueryWrapper = new QueryWrapper<T>();
        return listWithNoPage(queryable, QueryWrapper);
    }

    @Override
    public List<T> listWithNoPage(Queryable queryable, QueryWrapper<T> wrapper) {
        QueryToWrapper<T> queryToWrapper = new QueryToWrapper<T>();

        queryToWrapper.parseCondition(wrapper, queryable);
        // 排序问题
        queryToWrapper.parseSort(wrapper, queryable);
        List<T> content = list(wrapper);
        return content;
    }

    @Override
    public Boolean doValid(DuplicateValid duplicateValid, QueryWrapper<T> wrapper) {
        Boolean valid = Boolean.FALSE;
        String queryType = duplicateValid.getQueryType();
        if (StringUtils.isEmpty(queryType)) {
            queryType = "table";
        }
        if (queryType.equals("table")) {
            valid = validTable(duplicateValid, wrapper);
        }
        return valid;
    }

    private Boolean validTable(DuplicateValid duplicateValid, QueryWrapper<T> wrapper) {
        Integer num = null;
        String extendName = duplicateValid.getExtendName();
        String extendParam = duplicateValid.getExtendParam();
        if (!StringUtils.isEmpty(extendParam)) {
            // [2].编辑页面校验
            wrapper.eq(duplicateValid.getName(), duplicateValid.getParam()).ne(extendName, extendParam);
            num = super.count(wrapper);
        } else {
            // [1].添加页面校验
            wrapper.eq(duplicateValid.getName(), duplicateValid.getParam());
            num = super.count(wrapper);
        }

        if (num == null || num == 0) {
            // 该值可用
            return true;
        } else {
            // 该值不可用
            return false;
        }
    }

}