package io.guangsoft.common.mvc.exception;

/**
 * @version V1.0
 * @description: 验证错误
 */
public class ValidationException extends RuntimeException {


    public ValidationException() {
        super();
    }


    public ValidationException(String message) {
        super(message);
    }
}
