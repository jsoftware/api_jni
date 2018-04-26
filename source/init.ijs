coclass'jni'

NB. JNIENV_z_ JNIVM_z_ will be defined by users

GetJNIENV=: 3 : 0
if. 'Android'-:UNAME do.
  try.
    if. IFQT do.
      'JNIVM_z_ JNIENV_z_'=: , > }. ('"',libjqt,'" GetJavaVMENV i *x *x')&cd (,_1);,_1
    else.
      'JNIVM_z_ JNIENV_z_'=: , > }. 'libj.so GetJavaVM i *x *x'&cd (,_1);,_1
    end.
    JNIENV_z_
  catch.
    0 return.
  end.
else.
  0
end.
)
