//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./core/src/java/org/apache/lucene/codecs/DocValuesFormat.java
//

#include "IOSClass.h"
#include "J2ObjC_source.h"
#include "java/lang/ClassLoader.h"
#include "java/lang/IllegalStateException.h"
#include "java/util/Set.h"
#include "org/apache/lucene/codecs/DocValuesConsumer.h"
#include "org/apache/lucene/codecs/DocValuesFormat.h"
#include "org/apache/lucene/codecs/DocValuesProducer.h"
#include "org/apache/lucene/index/SegmentReadState.h"
#include "org/apache/lucene/index/SegmentWriteState.h"
#include "org/apache/lucene/util/NamedSPILoader.h"

#if __has_feature(objc_arc)
#error "org/apache/lucene/codecs/DocValuesFormat must not be compiled with ARC (-fobjc-arc)"
#endif

@interface OrgApacheLuceneCodecsDocValuesFormat () {
 @public
  /*!
   @brief Unique name that's used to retrieve this format when
   reading the index.
   */
  NSString *name_;
}

@end

J2OBJC_FIELD_SETTER(OrgApacheLuceneCodecsDocValuesFormat, name_, NSString *)

/*!
 @brief This static holder class prevents classloading deadlock by delaying
  init of doc values formats until needed.
 */
@interface OrgApacheLuceneCodecsDocValuesFormat_Holder : NSObject

- (instancetype)init;

+ (OrgApacheLuceneUtilNamedSPILoader *)getLoader;

@end

J2OBJC_STATIC_INIT(OrgApacheLuceneCodecsDocValuesFormat_Holder)

inline OrgApacheLuceneUtilNamedSPILoader *OrgApacheLuceneCodecsDocValuesFormat_Holder_get_LOADER(void);
static OrgApacheLuceneUtilNamedSPILoader *OrgApacheLuceneCodecsDocValuesFormat_Holder_LOADER;
J2OBJC_STATIC_FIELD_OBJ_FINAL(OrgApacheLuceneCodecsDocValuesFormat_Holder, LOADER, OrgApacheLuceneUtilNamedSPILoader *)

__attribute__((unused)) static void OrgApacheLuceneCodecsDocValuesFormat_Holder_init(OrgApacheLuceneCodecsDocValuesFormat_Holder *self);

__attribute__((unused)) static OrgApacheLuceneCodecsDocValuesFormat_Holder *new_OrgApacheLuceneCodecsDocValuesFormat_Holder_init(void) NS_RETURNS_RETAINED;

__attribute__((unused)) static OrgApacheLuceneCodecsDocValuesFormat_Holder *create_OrgApacheLuceneCodecsDocValuesFormat_Holder_init(void);

__attribute__((unused)) static OrgApacheLuceneUtilNamedSPILoader *OrgApacheLuceneCodecsDocValuesFormat_Holder_getLoader(void);

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneCodecsDocValuesFormat_Holder)

@implementation OrgApacheLuceneCodecsDocValuesFormat

- (instancetype)initWithNSString:(NSString *)name {
  OrgApacheLuceneCodecsDocValuesFormat_initWithNSString_(self, name);
  return self;
}

- (OrgApacheLuceneCodecsDocValuesConsumer *)fieldsConsumerWithOrgApacheLuceneIndexSegmentWriteState:(OrgApacheLuceneIndexSegmentWriteState *)state {
  // can't call an abstract method
  [self doesNotRecognizeSelector:_cmd];
  return 0;
}

- (OrgApacheLuceneCodecsDocValuesProducer *)fieldsProducerWithOrgApacheLuceneIndexSegmentReadState:(OrgApacheLuceneIndexSegmentReadState *)state {
  // can't call an abstract method
  [self doesNotRecognizeSelector:_cmd];
  return 0;
}

- (NSString *)getName {
  return name_;
}

- (NSString *)description {
  return JreStrcat("$$C", @"DocValuesFormat(name=", name_, ')');
}

+ (OrgApacheLuceneCodecsDocValuesFormat *)forNameWithNSString:(NSString *)name {
  return OrgApacheLuceneCodecsDocValuesFormat_forNameWithNSString_(name);
}

+ (id<JavaUtilSet>)availableDocValuesFormats {
  return OrgApacheLuceneCodecsDocValuesFormat_availableDocValuesFormats();
}

+ (void)reloadDocValuesFormatsWithJavaLangClassLoader:(JavaLangClassLoader *)classloader {
  OrgApacheLuceneCodecsDocValuesFormat_reloadDocValuesFormatsWithJavaLangClassLoader_(classloader);
}

- (void)dealloc {
  RELEASE_(name_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x4, -1, 0, -1, -1, -1, -1 },
    { NULL, "LOrgApacheLuceneCodecsDocValuesConsumer;", 0x401, 1, 2, 3, -1, -1, -1 },
    { NULL, "LOrgApacheLuceneCodecsDocValuesProducer;", 0x401, 4, 5, 3, -1, -1, -1 },
    { NULL, "LNSString;", 0x11, -1, -1, -1, -1, -1, -1 },
    { NULL, "LNSString;", 0x1, 6, -1, -1, -1, -1, -1 },
    { NULL, "LOrgApacheLuceneCodecsDocValuesFormat;", 0x9, 7, 0, -1, -1, -1, -1 },
    { NULL, "LJavaUtilSet;", 0x9, -1, -1, -1, 8, -1, -1 },
    { NULL, "V", 0x9, 9, 10, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  #pragma clang diagnostic ignored "-Wundeclared-selector"
  methods[0].selector = @selector(initWithNSString:);
  methods[1].selector = @selector(fieldsConsumerWithOrgApacheLuceneIndexSegmentWriteState:);
  methods[2].selector = @selector(fieldsProducerWithOrgApacheLuceneIndexSegmentReadState:);
  methods[3].selector = @selector(getName);
  methods[4].selector = @selector(description);
  methods[5].selector = @selector(forNameWithNSString:);
  methods[6].selector = @selector(availableDocValuesFormats);
  methods[7].selector = @selector(reloadDocValuesFormatsWithJavaLangClassLoader:);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "name_", "LNSString;", .constantValue.asLong = 0, 0x12, -1, -1, -1, -1 },
  };
  static const void *ptrTable[] = { "LNSString;", "fieldsConsumer", "LOrgApacheLuceneIndexSegmentWriteState;", "LJavaIoIOException;", "fieldsProducer", "LOrgApacheLuceneIndexSegmentReadState;", "toString", "forName", "()Ljava/util/Set<Ljava/lang/String;>;", "reloadDocValuesFormats", "LJavaLangClassLoader;", "LOrgApacheLuceneCodecsDocValuesFormat_Holder;" };
  static const J2ObjcClassInfo _OrgApacheLuceneCodecsDocValuesFormat = { "DocValuesFormat", "org.apache.lucene.codecs", ptrTable, methods, fields, 7, 0x401, 8, 1, -1, 11, -1, -1, -1 };
  return &_OrgApacheLuceneCodecsDocValuesFormat;
}

@end

void OrgApacheLuceneCodecsDocValuesFormat_initWithNSString_(OrgApacheLuceneCodecsDocValuesFormat *self, NSString *name) {
  NSObject_init(self);
  OrgApacheLuceneUtilNamedSPILoader_checkServiceNameWithNSString_(name);
  JreStrongAssign(&self->name_, name);
}

OrgApacheLuceneCodecsDocValuesFormat *OrgApacheLuceneCodecsDocValuesFormat_forNameWithNSString_(NSString *name) {
  OrgApacheLuceneCodecsDocValuesFormat_initialize();
  return ((OrgApacheLuceneCodecsDocValuesFormat *) [((OrgApacheLuceneUtilNamedSPILoader *) nil_chk(OrgApacheLuceneCodecsDocValuesFormat_Holder_getLoader())) lookupWithNSString:name]);
}

id<JavaUtilSet> OrgApacheLuceneCodecsDocValuesFormat_availableDocValuesFormats() {
  OrgApacheLuceneCodecsDocValuesFormat_initialize();
  return [((OrgApacheLuceneUtilNamedSPILoader *) nil_chk(OrgApacheLuceneCodecsDocValuesFormat_Holder_getLoader())) availableServices];
}

void OrgApacheLuceneCodecsDocValuesFormat_reloadDocValuesFormatsWithJavaLangClassLoader_(JavaLangClassLoader *classloader) {
  OrgApacheLuceneCodecsDocValuesFormat_initialize();
  [((OrgApacheLuceneUtilNamedSPILoader *) nil_chk(OrgApacheLuceneCodecsDocValuesFormat_Holder_getLoader())) reloadWithJavaLangClassLoader:classloader];
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneCodecsDocValuesFormat)

J2OBJC_INITIALIZED_DEFN(OrgApacheLuceneCodecsDocValuesFormat_Holder)

@implementation OrgApacheLuceneCodecsDocValuesFormat_Holder

J2OBJC_IGNORE_DESIGNATED_BEGIN
- (instancetype)init {
  OrgApacheLuceneCodecsDocValuesFormat_Holder_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END

+ (OrgApacheLuceneUtilNamedSPILoader *)getLoader {
  return OrgApacheLuceneCodecsDocValuesFormat_Holder_getLoader();
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x2, -1, -1, -1, -1, -1, -1 },
    { NULL, "LOrgApacheLuceneUtilNamedSPILoader;", 0x8, -1, -1, -1, 0, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  #pragma clang diagnostic ignored "-Wundeclared-selector"
  methods[0].selector = @selector(init);
  methods[1].selector = @selector(getLoader);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "LOADER", "LOrgApacheLuceneUtilNamedSPILoader;", .constantValue.asLong = 0, 0x1a, -1, 1, 2, -1 },
  };
  static const void *ptrTable[] = { "()Lorg/apache/lucene/util/NamedSPILoader<Lorg/apache/lucene/codecs/DocValuesFormat;>;", &OrgApacheLuceneCodecsDocValuesFormat_Holder_LOADER, "Lorg/apache/lucene/util/NamedSPILoader<Lorg/apache/lucene/codecs/DocValuesFormat;>;", "LOrgApacheLuceneCodecsDocValuesFormat;" };
  static const J2ObjcClassInfo _OrgApacheLuceneCodecsDocValuesFormat_Holder = { "Holder", "org.apache.lucene.codecs", ptrTable, methods, fields, 7, 0x1a, 2, 1, 3, -1, -1, -1, -1 };
  return &_OrgApacheLuceneCodecsDocValuesFormat_Holder;
}

+ (void)initialize {
  if (self == [OrgApacheLuceneCodecsDocValuesFormat_Holder class]) {
    JreStrongAssignAndConsume(&OrgApacheLuceneCodecsDocValuesFormat_Holder_LOADER, new_OrgApacheLuceneUtilNamedSPILoader_initWithIOSClass_(OrgApacheLuceneCodecsDocValuesFormat_class_()));
    J2OBJC_SET_INITIALIZED(OrgApacheLuceneCodecsDocValuesFormat_Holder)
  }
}

@end

void OrgApacheLuceneCodecsDocValuesFormat_Holder_init(OrgApacheLuceneCodecsDocValuesFormat_Holder *self) {
  NSObject_init(self);
}

OrgApacheLuceneCodecsDocValuesFormat_Holder *new_OrgApacheLuceneCodecsDocValuesFormat_Holder_init() {
  J2OBJC_NEW_IMPL(OrgApacheLuceneCodecsDocValuesFormat_Holder, init)
}

OrgApacheLuceneCodecsDocValuesFormat_Holder *create_OrgApacheLuceneCodecsDocValuesFormat_Holder_init() {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneCodecsDocValuesFormat_Holder, init)
}

OrgApacheLuceneUtilNamedSPILoader *OrgApacheLuceneCodecsDocValuesFormat_Holder_getLoader() {
  OrgApacheLuceneCodecsDocValuesFormat_Holder_initialize();
  if (OrgApacheLuceneCodecsDocValuesFormat_Holder_LOADER == nil) {
    @throw create_JavaLangIllegalStateException_initWithNSString_(@"You tried to lookup a DocValuesFormat by name before all formats could be initialized. This likely happens if you call DocValuesFormat#forName from a DocValuesFormat's ctor.");
  }
  return OrgApacheLuceneCodecsDocValuesFormat_Holder_LOADER;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneCodecsDocValuesFormat_Holder)
