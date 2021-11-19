#include "Program.h"

JNIEXPORT jlong JNICALL Java_Program_gcd(JNIEnv*, jclass, jlong first, jlong second)
{
	while(first != second)
	{
		if(first > second)
			first -= second;
		else
			second -= first;
	}

	return first;
}

JNIEXPORT jstring JNICALL Java_Program_reverseOf(JNIEnv* env, jclass, jstring original)
{
	jint n = env->GetStringLength(original);
	jchar* copy = new jchar[n];

	env->GetStringRegion(original, 0, n, copy); //copy first n characters from Java string into C++ array
	for(jint i = 0, j = n - 1; i < j; ++i, j--)
	{
		jchar ic = copy[i];
		jchar jc = copy[j];
		copy[i] = jc;
		copy[j] = ic;
	}

	jstring result = env->NewString(copy, n); //create a new Java string from first n characters in C++ array
	delete[] copy;

	return result;
}

JNIEXPORT void JNICALL Java_Program_squareAll(JNIEnv* env, jclass, jdoubleArray values)
{
	jint n = env->GetArrayLength(values);
	jdouble* copy = new jdouble[n];

	env->GetDoubleArrayRegion(values, 0, n, copy); //copy first n double elements from Java array into C++ array
	for(jint i = 0; i < n; ++i)
		copy[i] *= copy[i];
	env->SetDoubleArrayRegion(values, 0, n, copy); //update first n douuble elements of Java array from C++ array
	delete[] copy;
}


