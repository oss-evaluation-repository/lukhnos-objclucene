//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./analysis/common/src/java/org/apache/lucene/analysis/util/ClasspathResourceLoader.java
//

#include "IOSClass.h"
#include "J2ObjC_source.h"
#include "java/io/IOException.h"
#include "java/io/InputStream.h"
#include "java/lang/ClassLoader.h"
#include "java/lang/Exception.h"
#include "java/lang/RuntimeException.h"
#include "java/lang/Thread.h"
#include "org/apache/lucene/analysis/util/ClasspathResourceLoader.h"

#if __has_feature(objc_arc)
#error "org/apache/lucene/analysis/util/ClasspathResourceLoader must not be compiled with ARC (-fobjc-arc)"
#endif

@interface OrgApacheLuceneAnalysisUtilClasspathResourceLoader () {
 @public
  IOSClass *clazz_;
  JavaLangClassLoader *loader_;
}

- (instancetype)initWithIOSClass:(IOSClass *)clazz
         withJavaLangClassLoader:(JavaLangClassLoader *)loader;

@end

J2OBJC_FIELD_SETTER(OrgApacheLuceneAnalysisUtilClasspathResourceLoader, clazz_, IOSClass *)
J2OBJC_FIELD_SETTER(OrgApacheLuceneAnalysisUtilClasspathResourceLoader, loader_, JavaLangClassLoader *)

__attribute__((unused)) static void OrgApacheLuceneAnalysisUtilClasspathResourceLoader_initWithIOSClass_withJavaLangClassLoader_(OrgApacheLuceneAnalysisUtilClasspathResourceLoader *self, IOSClass *clazz, JavaLangClassLoader *loader);

__attribute__((unused)) static OrgApacheLuceneAnalysisUtilClasspathResourceLoader *new_OrgApacheLuceneAnalysisUtilClasspathResourceLoader_initWithIOSClass_withJavaLangClassLoader_(IOSClass *clazz, JavaLangClassLoader *loader) NS_RETURNS_RETAINED;

__attribute__((unused)) static OrgApacheLuceneAnalysisUtilClasspathResourceLoader *create_OrgApacheLuceneAnalysisUtilClasspathResourceLoader_initWithIOSClass_withJavaLangClassLoader_(IOSClass *clazz, JavaLangClassLoader *loader);

@implementation OrgApacheLuceneAnalysisUtilClasspathResourceLoader

J2OBJC_IGNORE_DESIGNATED_BEGIN
- (instancetype)init {
  OrgApacheLuceneAnalysisUtilClasspathResourceLoader_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END

- (instancetype)initWithJavaLangClassLoader:(JavaLangClassLoader *)loader {
  OrgApacheLuceneAnalysisUtilClasspathResourceLoader_initWithJavaLangClassLoader_(self, loader);
  return self;
}

- (instancetype)initWithIOSClass:(IOSClass *)clazz {
  OrgApacheLuceneAnalysisUtilClasspathResourceLoader_initWithIOSClass_(self, clazz);
  return self;
}

- (instancetype)initWithIOSClass:(IOSClass *)clazz
         withJavaLangClassLoader:(JavaLangClassLoader *)loader {
  OrgApacheLuceneAnalysisUtilClasspathResourceLoader_initWithIOSClass_withJavaLangClassLoader_(self, clazz, loader);
  return self;
}

- (JavaIoInputStream *)openResourceWithNSString:(NSString *)resource {
  JavaIoInputStream *stream = (clazz_ != nil) ? [((IOSClass *) nil_chk(clazz_)) getResourceAsStream:resource] : [((JavaLangClassLoader *) nil_chk(loader_)) getResourceAsStreamWithNSString:resource];
  if (stream == nil) @throw create_JavaIoIOException_initWithNSString_(JreStrcat("$$", @"Resource not found: ", resource));
  return stream;
}

- (IOSClass *)findClassWithNSString:(NSString *)cname
                       withIOSClass:(IOSClass *)expectedType {
  @try {
    return [((IOSClass *) nil_chk(IOSClass_forName_initialize_classLoader_(cname, true, loader_))) asSubclass:expectedType];
  }
  @catch (JavaLangException *e) {
    @throw create_JavaLangRuntimeException_initWithNSString_withJavaLangThrowable_(JreStrcat("$$", @"Cannot load class: ", cname), e);
  }
}

- (id)newInstanceWithNSString:(NSString *)cname
                 withIOSClass:(IOSClass *)expectedType {
  IOSClass *clazz = JreRetainedLocalValue([self findClassWithNSString:cname withIOSClass:expectedType]);
  @try {
    return [((IOSClass *) nil_chk(clazz)) newInstance];
  }
  @catch (JavaLangException *e) {
    @throw create_JavaLangRuntimeException_initWithNSString_withJavaLangThrowable_(JreStrcat("$$", @"Cannot create instance: ", cname), e);
  }
}

- (void)dealloc {
  RELEASE_(clazz_);
  RELEASE_(loader_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, NULL, 0x1, -1, 0, -1, -1, -1, -1 },
    { NULL, NULL, 0x1, -1, 1, -1, 2, -1, -1 },
    { NULL, NULL, 0x2, -1, 3, -1, 4, -1, -1 },
    { NULL, "LJavaIoInputStream;", 0x1, 5, 6, 7, -1, -1, -1 },
    { NULL, "LIOSClass;", 0x1, 8, 9, -1, 10, -1, -1 },
    { NULL, "LNSObject;", 0x1, 11, 9, -1, 12, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  #pragma clang diagnostic ignored "-Wundeclared-selector"
  methods[0].selector = @selector(init);
  methods[1].selector = @selector(initWithJavaLangClassLoader:);
  methods[2].selector = @selector(initWithIOSClass:);
  methods[3].selector = @selector(initWithIOSClass:withJavaLangClassLoader:);
  methods[4].selector = @selector(openResourceWithNSString:);
  methods[5].selector = @selector(findClassWithNSString:withIOSClass:);
  methods[6].selector = @selector(newInstanceWithNSString:withIOSClass:);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "clazz_", "LIOSClass;", .constantValue.asLong = 0, 0x12, -1, -1, 13, -1 },
    { "loader_", "LJavaLangClassLoader;", .constantValue.asLong = 0, 0x12, -1, -1, -1, -1 },
  };
  static const void *ptrTable[] = { "LJavaLangClassLoader;", "LIOSClass;", "(Ljava/lang/Class<*>;)V", "LIOSClass;LJavaLangClassLoader;", "(Ljava/lang/Class<*>;Ljava/lang/ClassLoader;)V", "openResource", "LNSString;", "LJavaIoIOException;", "findClass", "LNSString;LIOSClass;", "<T:Ljava/lang/Object;>(Ljava/lang/String;Ljava/lang/Class<TT;>;)Ljava/lang/Class<+TT;>;", "newInstance", "<T:Ljava/lang/Object;>(Ljava/lang/String;Ljava/lang/Class<TT;>;)TT;", "Ljava/lang/Class<*>;" };
  static const J2ObjcClassInfo _OrgApacheLuceneAnalysisUtilClasspathResourceLoader = { "ClasspathResourceLoader", "org.apache.lucene.analysis.util", ptrTable, methods, fields, 7, 0x11, 7, 2, -1, -1, -1, -1, -1 };
  return &_OrgApacheLuceneAnalysisUtilClasspathResourceLoader;
}

@end

void OrgApacheLuceneAnalysisUtilClasspathResourceLoader_init(OrgApacheLuceneAnalysisUtilClasspathResourceLoader *self) {
  OrgApacheLuceneAnalysisUtilClasspathResourceLoader_initWithJavaLangClassLoader_(self, [((JavaLangThread *) nil_chk(JavaLangThread_currentThread())) getContextClassLoader]);
}

OrgApacheLuceneAnalysisUtilClasspathResourceLoader *new_OrgApacheLuceneAnalysisUtilClasspathResourceLoader_init() {
  J2OBJC_NEW_IMPL(OrgApacheLuceneAnalysisUtilClasspathResourceLoader, init)
}

OrgApacheLuceneAnalysisUtilClasspathResourceLoader *create_OrgApacheLuceneAnalysisUtilClasspathResourceLoader_init() {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneAnalysisUtilClasspathResourceLoader, init)
}

void OrgApacheLuceneAnalysisUtilClasspathResourceLoader_initWithJavaLangClassLoader_(OrgApacheLuceneAnalysisUtilClasspathResourceLoader *self, JavaLangClassLoader *loader) {
  OrgApacheLuceneAnalysisUtilClasspathResourceLoader_initWithIOSClass_withJavaLangClassLoader_(self, nil, loader);
}

OrgApacheLuceneAnalysisUtilClasspathResourceLoader *new_OrgApacheLuceneAnalysisUtilClasspathResourceLoader_initWithJavaLangClassLoader_(JavaLangClassLoader *loader) {
  J2OBJC_NEW_IMPL(OrgApacheLuceneAnalysisUtilClasspathResourceLoader, initWithJavaLangClassLoader_, loader)
}

OrgApacheLuceneAnalysisUtilClasspathResourceLoader *create_OrgApacheLuceneAnalysisUtilClasspathResourceLoader_initWithJavaLangClassLoader_(JavaLangClassLoader *loader) {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneAnalysisUtilClasspathResourceLoader, initWithJavaLangClassLoader_, loader)
}

void OrgApacheLuceneAnalysisUtilClasspathResourceLoader_initWithIOSClass_(OrgApacheLuceneAnalysisUtilClasspathResourceLoader *self, IOSClass *clazz) {
  OrgApacheLuceneAnalysisUtilClasspathResourceLoader_initWithIOSClass_withJavaLangClassLoader_(self, clazz, [((IOSClass *) nil_chk(clazz)) getClassLoader]);
}

OrgApacheLuceneAnalysisUtilClasspathResourceLoader *new_OrgApacheLuceneAnalysisUtilClasspathResourceLoader_initWithIOSClass_(IOSClass *clazz) {
  J2OBJC_NEW_IMPL(OrgApacheLuceneAnalysisUtilClasspathResourceLoader, initWithIOSClass_, clazz)
}

OrgApacheLuceneAnalysisUtilClasspathResourceLoader *create_OrgApacheLuceneAnalysisUtilClasspathResourceLoader_initWithIOSClass_(IOSClass *clazz) {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneAnalysisUtilClasspathResourceLoader, initWithIOSClass_, clazz)
}

void OrgApacheLuceneAnalysisUtilClasspathResourceLoader_initWithIOSClass_withJavaLangClassLoader_(OrgApacheLuceneAnalysisUtilClasspathResourceLoader *self, IOSClass *clazz, JavaLangClassLoader *loader) {
  NSObject_init(self);
  JreStrongAssign(&self->clazz_, clazz);
  JreStrongAssign(&self->loader_, loader);
}

OrgApacheLuceneAnalysisUtilClasspathResourceLoader *new_OrgApacheLuceneAnalysisUtilClasspathResourceLoader_initWithIOSClass_withJavaLangClassLoader_(IOSClass *clazz, JavaLangClassLoader *loader) {
  J2OBJC_NEW_IMPL(OrgApacheLuceneAnalysisUtilClasspathResourceLoader, initWithIOSClass_withJavaLangClassLoader_, clazz, loader)
}

OrgApacheLuceneAnalysisUtilClasspathResourceLoader *create_OrgApacheLuceneAnalysisUtilClasspathResourceLoader_initWithIOSClass_withJavaLangClassLoader_(IOSClass *clazz, JavaLangClassLoader *loader) {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneAnalysisUtilClasspathResourceLoader, initWithIOSClass_withJavaLangClassLoader_, clazz, loader)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneAnalysisUtilClasspathResourceLoader)
