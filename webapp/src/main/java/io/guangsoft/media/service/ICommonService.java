package io.guangsoft.media.service;

import com.baomidou.mybatisplus.core.conditions.Wrapper;
import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.baomidou.mybatisplus.extension.service.IService;
import io.guangsoft.common.query.data.Page;
import io.guangsoft.common.query.data.Queryable;
import io.guangsoft.media.data.DuplicateValid;

import java.util.List;

public interface ICommonService<T> extends IService<T> {

     io.guangsoft.common.query.data.Page<T> list(Queryable queryable);

     Page<T> list(Queryable queryable, QueryWrapper<T> wrapper);

     List<T> listWithNoPage(Queryable queryable);

     List<T> listWithNoPage(Queryable queryable, QueryWrapper<T> wrapper);

     Boolean doValid(DuplicateValid duplicateValid, QueryWrapper<T> wrapper);
}