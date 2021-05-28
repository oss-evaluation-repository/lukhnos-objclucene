//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./core/src/java/org/apache/lucene/store/NoLockFactory.java
//

#include "J2ObjC_source.h"
#include "org/apache/lucene/store/Directory.h"
#include "org/apache/lucene/store/Lock.h"
#include "org/apache/lucene/store/LockFactory.h"
#include "org/apache/lucene/store/NoLockFactory.h"

#if __has_feature(objc_arc)
#error "org/apache/lucene/store/NoLockFactory must not be compiled with ARC (-fobjc-arc)"
#endif

@interface OrgApacheLuceneStoreNoLockFactory ()

- (instancetype)init;

@end

__attribute__((unused)) static void OrgApacheLuceneStoreNoLockFactory_init(OrgApacheLuceneStoreNoLockFactory *self);

__attribute__((unused)) static OrgApacheLuceneStoreNoLockFactory *new_OrgApacheLuceneStoreNoLockFactory_init(void) NS_RETURNS_RETAINED;

__attribute__((unused)) static OrgApacheLuceneStoreNoLockFactory *create_OrgApacheLuceneStoreNoLockFactory_init(void);

@interface OrgApacheLuceneStoreNoLockFactory_NoLock ()

- (instancetype)init;

@end

__attribute__((unused)) static void OrgApacheLuceneStoreNoLockFactory_NoLock_init(OrgApacheLuceneStoreNoLockFactory_NoLock *self);

__attribute__((unused)) static OrgApacheLuceneStoreNoLockFactory_NoLock *new_OrgApacheLuceneStoreNoLockFactory_NoLock_init(void) NS_RETURNS_RETAINED;

__attribute__((unused)) static OrgApacheLuceneStoreNoLockFactory_NoLock *create_OrgApacheLuceneStoreNoLockFactory_NoLock_init(void);

J2OBJC_INITIALIZED_DEFN(OrgApacheLuceneStoreNoLockFactory)

OrgApacheLuceneStoreNoLockFactory *OrgApacheLuceneStoreNoLockFactory_INSTANCE;
OrgApacheLuceneStoreNoLockFactory_NoLock *OrgApacheLuceneStoreNoLockFactory_SINGLETON_LOCK;

@implementation OrgApacheLuceneStoreNoLockFactory

+ (OrgApacheLuceneStoreNoLockFactory *)INSTANCE {
  return OrgApacheLuceneStoreNoLockFactory_INSTANCE;
}

+ (OrgApacheLuceneStoreNoLockFactory_NoLock *)SINGLETON_LOCK {
  return OrgApacheLuceneStoreNoLockFactory_SINGLETON_LOCK;
}

J2OBJC_IGNORE_DESIGNATED_BEGIN
- (instancetype)init {
  OrgApacheLuceneStoreNoLockFactory_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END

- (OrgApacheLuceneStoreLock *)obtainLockWithOrgApacheLuceneStoreDirectory:(OrgApacheLuceneStoreDirectory *)dir
                                                             withNSString:(NSString *)lockName {
  return OrgApacheLuceneStoreNoLockFactory_SINGLETON_LOCK;
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x2, -1, -1, -1, -1, -1, -1 },
    { NULL, "LOrgApacheLuceneStoreLock;", 0x1, 0, 1, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  #pragma clang diagnostic ignored "-Wundeclared-selector"
  methods[0].selector = @selector(init);
  methods[1].selector = @selector(obtainLockWithOrgApacheLuceneStoreDirectory:withNSString:);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "INSTANCE", "LOrgApacheLuceneStoreNoLockFactory;", .constantValue.asLong = 0, 0x19, -1, 2, -1, -1 },
    { "SINGLETON_LOCK", "LOrgApacheLuceneStoreNoLockFactory_NoLock;", .constantValue.asLong = 0, 0x18, -1, 3, -1, -1 },
  };
  static const void *ptrTable[] = { "obtainLock", "LOrgApacheLuceneStoreDirectory;LNSString;", &OrgApacheLuceneStoreNoLockFactory_INSTANCE, &OrgApacheLuceneStoreNoLockFactory_SINGLETON_LOCK, "LOrgApacheLuceneStoreNoLockFactory_NoLock;" };
  static const J2ObjcClassInfo _OrgApacheLuceneStoreNoLockFactory = { "NoLockFactory", "org.apache.lucene.store", ptrTable, methods, fields, 7, 0x11, 2, 2, -1, 4, -1, -1, -1 };
  return &_OrgApacheLuceneStoreNoLockFactory;
}

+ (void)initialize {
  if (self == [OrgApacheLuceneStoreNoLockFactory class]) {
    JreStrongAssignAndConsume(&OrgApacheLuceneStoreNoLockFactory_INSTANCE, new_OrgApacheLuceneStoreNoLockFactory_init());
    JreStrongAssignAndConsume(&OrgApacheLuceneStoreNoLockFactory_SINGLETON_LOCK, new_OrgApacheLuceneStoreNoLockFactory_NoLock_init());
    J2OBJC_SET_INITIALIZED(OrgApacheLuceneStoreNoLockFactory)
  }
}

@end

void OrgApacheLuceneStoreNoLockFactory_init(OrgApacheLuceneStoreNoLockFactory *self) {
  OrgApacheLuceneStoreLockFactory_init(self);
}

OrgApacheLuceneStoreNoLockFactory *new_OrgApacheLuceneStoreNoLockFactory_init() {
  J2OBJC_NEW_IMPL(OrgApacheLuceneStoreNoLockFactory, init)
}

OrgApacheLuceneStoreNoLockFactory *create_OrgApacheLuceneStoreNoLockFactory_init() {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneStoreNoLockFactory, init)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneStoreNoLockFactory)

@implementation OrgApacheLuceneStoreNoLockFactory_NoLock

J2OBJC_IGNORE_DESIGNATED_BEGIN
- (instancetype)init {
  OrgApacheLuceneStoreNoLockFactory_NoLock_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END

- (void)close {
}

- (void)ensureValid {
}

- (NSString *)description {
  return @"NoLock";
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x2, -1, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x1, -1, -1, 0, -1, -1, -1 },
    { NULL, "LNSString;", 0x1, 1, -1, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  #pragma clang diagnostic ignored "-Wundeclared-selector"
  methods[0].selector = @selector(init);
  methods[1].selector = @selector(close);
  methods[2].selector = @selector(ensureValid);
  methods[3].selector = @selector(description);
  #pragma clang diagnostic pop
  static const void *ptrTable[] = { "LJavaIoIOException;", "toString", "LOrgApacheLuceneStoreNoLockFactory;" };
  static const J2ObjcClassInfo _OrgApacheLuceneStoreNoLockFactory_NoLock = { "NoLock", "org.apache.lucene.store", ptrTable, methods, NULL, 7, 0xa, 4, 0, 2, -1, -1, -1, -1 };
  return &_OrgApacheLuceneStoreNoLockFactory_NoLock;
}

@end

void OrgApacheLuceneStoreNoLockFactory_NoLock_init(OrgApacheLuceneStoreNoLockFactory_NoLock *self) {
  OrgApacheLuceneStoreLock_init(self);
}

OrgApacheLuceneStoreNoLockFactory_NoLock *new_OrgApacheLuceneStoreNoLockFactory_NoLock_init() {
  J2OBJC_NEW_IMPL(OrgApacheLuceneStoreNoLockFactory_NoLock, init)
}

OrgApacheLuceneStoreNoLockFactory_NoLock *create_OrgApacheLuceneStoreNoLockFactory_NoLock_init() {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneStoreNoLockFactory_NoLock, init)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneStoreNoLockFactory_NoLock)
