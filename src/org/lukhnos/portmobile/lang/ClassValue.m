//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./core/src/java/org/lukhnos/portmobile/lang/ClassValue.java
//

#include "IOSClass.h"
#include "J2ObjC_source.h"
#include "java/util/HashMap.h"
#include "java/util/Map.h"
#include "org/lukhnos/portmobile/lang/ClassValue.h"

#if __has_feature(objc_arc)
#error "org/lukhnos/portmobile/lang/ClassValue must not be compiled with ARC (-fobjc-arc)"
#endif

@implementation OrgLukhnosPortmobileLangClassValue

J2OBJC_IGNORE_DESIGNATED_BEGIN
- (instancetype)init {
  OrgLukhnosPortmobileLangClassValue_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END

- (id)computeValueWithIOSClass:(IOSClass *)type {
  // can't call an abstract method
  [self doesNotRecognizeSelector:_cmd];
  return 0;
}

- (id)getWithIOSClass:(IOSClass *)type {
  if ([((id<JavaUtilMap>) nil_chk(cache_)) containsKeyWithId:type]) {
    return [((id<JavaUtilMap>) nil_chk(cache_)) getWithId:type];
  }
  id value = JreRetainedLocalValue([self computeValueWithIOSClass:type]);
  [((id<JavaUtilMap>) nil_chk(cache_)) putWithId:type withId:value];
  return value;
}

- (void)removeWithIOSClass:(IOSClass *)type {
  [((id<JavaUtilMap>) nil_chk(cache_)) removeWithId:type];
}

- (void)dealloc {
  RELEASE_(defaultCachedMember_);
  RELEASE_(cache_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x4, -1, -1, -1, -1, -1, -1 },
    { NULL, "LNSObject;", 0x404, 0, 1, -1, 2, -1, -1 },
    { NULL, "LNSObject;", 0x1, 3, 1, -1, 2, -1, -1 },
    { NULL, "V", 0x1, 4, 1, -1, 5, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  #pragma clang diagnostic ignored "-Wundeclared-selector"
  methods[0].selector = @selector(init);
  methods[1].selector = @selector(computeValueWithIOSClass:);
  methods[2].selector = @selector(getWithIOSClass:);
  methods[3].selector = @selector(removeWithIOSClass:);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "defaultCached_", "Z", .constantValue.asLong = 0, 0x0, -1, -1, -1, -1 },
    { "defaultCachedMember_", "LNSObject;", .constantValue.asLong = 0, 0x0, -1, -1, 6, -1 },
    { "cache_", "LJavaUtilMap;", .constantValue.asLong = 0, 0x0, -1, -1, 7, -1 },
  };
  static const void *ptrTable[] = { "computeValue", "LIOSClass;", "(Ljava/lang/Class<*>;)TT;", "get", "remove", "(Ljava/lang/Class<*>;)V", "TT;", "Ljava/util/Map<Ljava/lang/Class<*>;TT;>;", "<T:Ljava/lang/Object;>Ljava/lang/Object;" };
  static const J2ObjcClassInfo _OrgLukhnosPortmobileLangClassValue = { "ClassValue", "org.lukhnos.portmobile.lang", ptrTable, methods, fields, 7, 0x401, 4, 3, -1, -1, -1, 8, -1 };
  return &_OrgLukhnosPortmobileLangClassValue;
}

@end

void OrgLukhnosPortmobileLangClassValue_init(OrgLukhnosPortmobileLangClassValue *self) {
  NSObject_init(self);
  self->defaultCached_ = false;
  JreStrongAssign(&self->defaultCachedMember_, nil);
  JreStrongAssignAndConsume(&self->cache_, new_JavaUtilHashMap_init());
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgLukhnosPortmobileLangClassValue)
