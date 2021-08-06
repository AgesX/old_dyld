```



self = ((LGTeacher *(*)(__rw_objc_super *, SEL))(void *)objc_msgSendSuper)((__rw_objc_super){(id)self, (id)class_getSuperclass(objc_getClass("LGTeacher"))}, sel_registerName("init"));



```



<hr>




<hr>


简化后




```





{(id)self, (id)class_getSuperclass(objc_getClass("LGTeacher"))}, sel_registerName("init"));



```





<hr>




<hr>



其中


```
{(id)self, (id)class_getSuperclass(objc_getClass("LGTeacher"))}
```



这是一个结构体





