#include <jni.h>
#include <pthread.h>
#include <iostream>

#include "../hdr/Object.hpp"

static ObjectJni* objectJni = nullptr;

#ifdef __cplusplus
extern "C"
{
#endif

using namespace std;

JNIEXPORT jint JNICALL Java_ClientJNI_Start
  (JNIEnv *env, jobject self)
{
    cout << __FUNCTION__ << endl;
    objectJni = new ObjectJni();
    return 0;
}

JNIEXPORT jint JNICALL Java_ClientJNI_Stop
  (JNIEnv *env, jobject self)
{
    cout << __FUNCTION__ << endl;
    return 0;
}

#ifdef __cplusplus
}
#endif
