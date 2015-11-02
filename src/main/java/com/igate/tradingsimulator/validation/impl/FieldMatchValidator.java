package com.igate.tradingsimulator.validation.impl;

import javax.validation.ConstraintValidator;
import javax.validation.ConstraintValidatorContext;

import org.apache.commons.beanutils.BeanUtils;

import com.igate.tradingsimulator.validation.FieldMatch;

public class FieldMatchValidator implements ConstraintValidator<FieldMatch, Object>
{
    private String firstFieldName;
    private String secondFieldName;

    @Override
    public void initialize(final FieldMatch constraintAnnotation)
    {
        firstFieldName = constraintAnnotation.first();
        secondFieldName = constraintAnnotation.second();
    }

    @Override
    public boolean isValid(final Object value, final ConstraintValidatorContext context)
    {
        try
        {
            final Object firstObj = BeanUtils.getProperty(value, firstFieldName);
            final Object secondObj = BeanUtils.getProperty(value, secondFieldName);
            boolean fieldsMatch = true;

            fieldsMatch = (firstObj == null && secondObj == null || firstObj != null && firstObj.equals(secondObj));
            if(fieldsMatch == false){
            	context.disableDefaultConstraintViolation();
            	context.buildConstraintViolationWithTemplate("Fail").addPropertyNode(secondFieldName).addConstraintViolation();
            	return false;
            }
        }
        catch (final Exception ignore)
        {
            // ignore
        }
        return true;
    }
}