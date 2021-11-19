#include "TaxPayerBridge.h"
#include "taxation.h"

JNIEXPORT jdouble JNICALL Java_TaxPayerBridge_getIncomeTax(JNIEnv* env, jobject self, jshort age)
{
	jclass cls = env->GetObjectClass(self);
	jfieldID idIncome = env->GetFieldID(cls, "income", "D");
	jdouble income = env->GetDoubleField(self, idIncome);
	jmethodID idValidate = env->GetMethodID(cls, "validate", "(S)Z");
	jboolean valid = env->CallBooleanMethod(self, idValidate, age);

	if(valid == JNI_TRUE)
	{
		Taxation::TaxPayer legacy(age);
		return legacy.IncomeTax(income);
	}

	jclass ex = env->FindClass("java/lang/IllegalArgumentException");
	env->ThrowNew(ex, "Invalid age");
	return 0;
}

