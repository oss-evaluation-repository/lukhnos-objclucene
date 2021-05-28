//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./core/src/java/org/apache/lucene/util/Accountables.java
//

#include "J2ObjC_source.h"
#include "java/lang/StringBuilder.h"
#include "java/lang/System.h"
#include "java/util/ArrayList.h"
#include "java/util/Collection.h"
#include "java/util/Collections.h"
#include "java/util/Comparator.h"
#include "java/util/List.h"
#include "java/util/Map.h"
#include "java/util/Set.h"
#include "java/util/function/Function.h"
#include "java/util/function/ToDoubleFunction.h"
#include "java/util/function/ToIntFunction.h"
#include "java/util/function/ToLongFunction.h"
#include "org/apache/lucene/util/Accountable.h"
#include "org/apache/lucene/util/Accountables.h"
#include "org/apache/lucene/util/RamUsageEstimator.h"

#if __has_feature(objc_arc)
#error "org/apache/lucene/util/Accountables must not be compiled with ARC (-fobjc-arc)"
#endif

#pragma clang diagnostic ignored "-Wprotocol"

@interface OrgApacheLuceneUtilAccountables ()

- (instancetype)init;

+ (JavaLangStringBuilder *)toStringWithJavaLangStringBuilder:(JavaLangStringBuilder *)dest
                          withOrgApacheLuceneUtilAccountable:(id<OrgApacheLuceneUtilAccountable>)a
                                                     withInt:(jint)depth;

@end

__attribute__((unused)) static void OrgApacheLuceneUtilAccountables_init(OrgApacheLuceneUtilAccountables *self);

__attribute__((unused)) static OrgApacheLuceneUtilAccountables *new_OrgApacheLuceneUtilAccountables_init(void) NS_RETURNS_RETAINED;

__attribute__((unused)) static OrgApacheLuceneUtilAccountables *create_OrgApacheLuceneUtilAccountables_init(void);

__attribute__((unused)) static JavaLangStringBuilder *OrgApacheLuceneUtilAccountables_toStringWithJavaLangStringBuilder_withOrgApacheLuceneUtilAccountable_withInt_(JavaLangStringBuilder *dest, id<OrgApacheLuceneUtilAccountable> a, jint depth);

@interface OrgApacheLuceneUtilAccountables_1 : NSObject < JavaUtilComparator >

- (instancetype)init;

- (jint)compareWithId:(id<OrgApacheLuceneUtilAccountable>)o1
               withId:(id<OrgApacheLuceneUtilAccountable>)o2;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneUtilAccountables_1)

__attribute__((unused)) static void OrgApacheLuceneUtilAccountables_1_init(OrgApacheLuceneUtilAccountables_1 *self);

__attribute__((unused)) static OrgApacheLuceneUtilAccountables_1 *new_OrgApacheLuceneUtilAccountables_1_init(void) NS_RETURNS_RETAINED;

__attribute__((unused)) static OrgApacheLuceneUtilAccountables_1 *create_OrgApacheLuceneUtilAccountables_1_init(void);

@interface OrgApacheLuceneUtilAccountables_2 : NSObject < OrgApacheLuceneUtilAccountable > {
 @public
  jlong val$bytes_;
  id<JavaUtilCollection> val$children_;
  NSString *val$description_;
}

- (instancetype)initWithLong:(jlong)capture$0
      withJavaUtilCollection:(id<JavaUtilCollection>)capture$1
                withNSString:(NSString *)capture$2;

- (jlong)ramBytesUsed;

- (id<JavaUtilCollection>)getChildResources;

- (NSString *)description;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneUtilAccountables_2)

__attribute__((unused)) static void OrgApacheLuceneUtilAccountables_2_initWithLong_withJavaUtilCollection_withNSString_(OrgApacheLuceneUtilAccountables_2 *self, jlong capture$0, id<JavaUtilCollection> capture$1, NSString *capture$2);

__attribute__((unused)) static OrgApacheLuceneUtilAccountables_2 *new_OrgApacheLuceneUtilAccountables_2_initWithLong_withJavaUtilCollection_withNSString_(jlong capture$0, id<JavaUtilCollection> capture$1, NSString *capture$2) NS_RETURNS_RETAINED;

__attribute__((unused)) static OrgApacheLuceneUtilAccountables_2 *create_OrgApacheLuceneUtilAccountables_2_initWithLong_withJavaUtilCollection_withNSString_(jlong capture$0, id<JavaUtilCollection> capture$1, NSString *capture$2);

@implementation OrgApacheLuceneUtilAccountables

J2OBJC_IGNORE_DESIGNATED_BEGIN
- (instancetype)init {
  OrgApacheLuceneUtilAccountables_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END

+ (NSString *)toStringWithOrgApacheLuceneUtilAccountable:(id<OrgApacheLuceneUtilAccountable>)a {
  return OrgApacheLuceneUtilAccountables_toStringWithOrgApacheLuceneUtilAccountable_(a);
}

+ (JavaLangStringBuilder *)toStringWithJavaLangStringBuilder:(JavaLangStringBuilder *)dest
                          withOrgApacheLuceneUtilAccountable:(id<OrgApacheLuceneUtilAccountable>)a
                                                     withInt:(jint)depth {
  return OrgApacheLuceneUtilAccountables_toStringWithJavaLangStringBuilder_withOrgApacheLuceneUtilAccountable_withInt_(dest, a, depth);
}

+ (id<OrgApacheLuceneUtilAccountable>)namedAccountableWithNSString:(NSString *)description_
                                withOrgApacheLuceneUtilAccountable:(id<OrgApacheLuceneUtilAccountable>)inArg {
  return OrgApacheLuceneUtilAccountables_namedAccountableWithNSString_withOrgApacheLuceneUtilAccountable_(description_, inArg);
}

+ (id<OrgApacheLuceneUtilAccountable>)namedAccountableWithNSString:(NSString *)description_
                                                          withLong:(jlong)bytes {
  return OrgApacheLuceneUtilAccountables_namedAccountableWithNSString_withLong_(description_, bytes);
}

+ (id<JavaUtilCollection>)namedAccountablesWithNSString:(NSString *)prefix
                                        withJavaUtilMap:(id<JavaUtilMap>)inArg {
  return OrgApacheLuceneUtilAccountables_namedAccountablesWithNSString_withJavaUtilMap_(prefix, inArg);
}

+ (id<OrgApacheLuceneUtilAccountable>)namedAccountableWithNSString:(NSString *)description_
                                            withJavaUtilCollection:(id<JavaUtilCollection>)children
                                                          withLong:(jlong)bytes {
  return OrgApacheLuceneUtilAccountables_namedAccountableWithNSString_withJavaUtilCollection_withLong_(description_, children, bytes);
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x2, -1, -1, -1, -1, -1, -1 },
    { NULL, "LNSString;", 0x9, 0, 1, -1, -1, -1, -1 },
    { NULL, "LJavaLangStringBuilder;", 0xa, 0, 2, -1, -1, -1, -1 },
    { NULL, "LOrgApacheLuceneUtilAccountable;", 0x9, 3, 4, -1, -1, -1, -1 },
    { NULL, "LOrgApacheLuceneUtilAccountable;", 0x9, 3, 5, -1, -1, -1, -1 },
    { NULL, "LJavaUtilCollection;", 0x9, 6, 7, -1, 8, -1, -1 },
    { NULL, "LOrgApacheLuceneUtilAccountable;", 0x9, 3, 9, -1, 10, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  #pragma clang diagnostic ignored "-Wundeclared-selector"
  methods[0].selector = @selector(init);
  methods[1].selector = @selector(toStringWithOrgApacheLuceneUtilAccountable:);
  methods[2].selector = @selector(toStringWithJavaLangStringBuilder:withOrgApacheLuceneUtilAccountable:withInt:);
  methods[3].selector = @selector(namedAccountableWithNSString:withOrgApacheLuceneUtilAccountable:);
  methods[4].selector = @selector(namedAccountableWithNSString:withLong:);
  methods[5].selector = @selector(namedAccountablesWithNSString:withJavaUtilMap:);
  methods[6].selector = @selector(namedAccountableWithNSString:withJavaUtilCollection:withLong:);
  #pragma clang diagnostic pop
  static const void *ptrTable[] = { "toString", "LOrgApacheLuceneUtilAccountable;", "LJavaLangStringBuilder;LOrgApacheLuceneUtilAccountable;I", "namedAccountable", "LNSString;LOrgApacheLuceneUtilAccountable;", "LNSString;J", "namedAccountables", "LNSString;LJavaUtilMap;", "(Ljava/lang/String;Ljava/util/Map<*+Lorg/apache/lucene/util/Accountable;>;)Ljava/util/Collection<Lorg/apache/lucene/util/Accountable;>;", "LNSString;LJavaUtilCollection;J", "(Ljava/lang/String;Ljava/util/Collection<Lorg/apache/lucene/util/Accountable;>;J)Lorg/apache/lucene/util/Accountable;" };
  static const J2ObjcClassInfo _OrgApacheLuceneUtilAccountables = { "Accountables", "org.apache.lucene.util", ptrTable, methods, NULL, 7, 0x1, 7, 0, -1, -1, -1, -1, -1 };
  return &_OrgApacheLuceneUtilAccountables;
}

@end

void OrgApacheLuceneUtilAccountables_init(OrgApacheLuceneUtilAccountables *self) {
  NSObject_init(self);
}

OrgApacheLuceneUtilAccountables *new_OrgApacheLuceneUtilAccountables_init() {
  J2OBJC_NEW_IMPL(OrgApacheLuceneUtilAccountables, init)
}

OrgApacheLuceneUtilAccountables *create_OrgApacheLuceneUtilAccountables_init() {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneUtilAccountables, init)
}

NSString *OrgApacheLuceneUtilAccountables_toStringWithOrgApacheLuceneUtilAccountable_(id<OrgApacheLuceneUtilAccountable> a) {
  OrgApacheLuceneUtilAccountables_initialize();
  JavaLangStringBuilder *sb = create_JavaLangStringBuilder_init();
  OrgApacheLuceneUtilAccountables_toStringWithJavaLangStringBuilder_withOrgApacheLuceneUtilAccountable_withInt_(sb, a, 0);
  return [sb description];
}

JavaLangStringBuilder *OrgApacheLuceneUtilAccountables_toStringWithJavaLangStringBuilder_withOrgApacheLuceneUtilAccountable_withInt_(JavaLangStringBuilder *dest, id<OrgApacheLuceneUtilAccountable> a, jint depth) {
  OrgApacheLuceneUtilAccountables_initialize();
  for (jint i = 1; i < depth; i++) {
    [((JavaLangStringBuilder *) nil_chk(dest)) appendWithNSString:@"    "];
  }
  if (depth > 0) {
    [((JavaLangStringBuilder *) nil_chk(dest)) appendWithNSString:@"|-- "];
  }
  [((JavaLangStringBuilder *) nil_chk(dest)) appendWithNSString:[((id<OrgApacheLuceneUtilAccountable>) nil_chk(a)) description]];
  [dest appendWithNSString:@": "];
  [dest appendWithNSString:OrgApacheLuceneUtilRamUsageEstimator_humanReadableUnitsWithLong_([a ramBytesUsed])];
  [dest appendWithNSString:JavaLangSystem_lineSeparator()];
  for (id<OrgApacheLuceneUtilAccountable> __strong child in nil_chk([a getChildResources])) {
    OrgApacheLuceneUtilAccountables_toStringWithJavaLangStringBuilder_withOrgApacheLuceneUtilAccountable_withInt_(dest, child, depth + 1);
  }
  return dest;
}

id<OrgApacheLuceneUtilAccountable> OrgApacheLuceneUtilAccountables_namedAccountableWithNSString_withOrgApacheLuceneUtilAccountable_(NSString *description_, id<OrgApacheLuceneUtilAccountable> inArg) {
  OrgApacheLuceneUtilAccountables_initialize();
  return OrgApacheLuceneUtilAccountables_namedAccountableWithNSString_withJavaUtilCollection_withLong_(JreStrcat("$$@C", description_, @" [", inArg, ']'), [((id<OrgApacheLuceneUtilAccountable>) nil_chk(inArg)) getChildResources], [inArg ramBytesUsed]);
}

id<OrgApacheLuceneUtilAccountable> OrgApacheLuceneUtilAccountables_namedAccountableWithNSString_withLong_(NSString *description_, jlong bytes) {
  OrgApacheLuceneUtilAccountables_initialize();
  return OrgApacheLuceneUtilAccountables_namedAccountableWithNSString_withJavaUtilCollection_withLong_(description_, JavaUtilCollections_emptyList(), bytes);
}

id<JavaUtilCollection> OrgApacheLuceneUtilAccountables_namedAccountablesWithNSString_withJavaUtilMap_(NSString *prefix, id<JavaUtilMap> inArg) {
  OrgApacheLuceneUtilAccountables_initialize();
  id<JavaUtilList> resources = create_JavaUtilArrayList_init();
  for (id<JavaUtilMap_Entry> __strong kv in nil_chk([((id<JavaUtilMap>) nil_chk(inArg)) entrySet])) {
    [resources addWithId:OrgApacheLuceneUtilAccountables_namedAccountableWithNSString_withOrgApacheLuceneUtilAccountable_(JreStrcat("$$@C", prefix, @" '", [((id<JavaUtilMap_Entry>) nil_chk(kv)) getKey], '\''), [kv getValue])];
  }
  JavaUtilCollections_sortWithJavaUtilList_withJavaUtilComparator_(resources, create_OrgApacheLuceneUtilAccountables_1_init());
  return JavaUtilCollections_unmodifiableListWithJavaUtilList_(resources);
}

id<OrgApacheLuceneUtilAccountable> OrgApacheLuceneUtilAccountables_namedAccountableWithNSString_withJavaUtilCollection_withLong_(NSString *description_, id<JavaUtilCollection> children, jlong bytes) {
  OrgApacheLuceneUtilAccountables_initialize();
  return create_OrgApacheLuceneUtilAccountables_2_initWithLong_withJavaUtilCollection_withNSString_(bytes, children, description_);
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneUtilAccountables)

@implementation OrgApacheLuceneUtilAccountables_1

J2OBJC_IGNORE_DESIGNATED_BEGIN
- (instancetype)init {
  OrgApacheLuceneUtilAccountables_1_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END

- (jint)compareWithId:(id<OrgApacheLuceneUtilAccountable>)o1
               withId:(id<OrgApacheLuceneUtilAccountable>)o2 {
  return [((NSString *) nil_chk([((id<OrgApacheLuceneUtilAccountable>) nil_chk(o1)) description])) compareToWithId:[((id<OrgApacheLuceneUtilAccountable>) nil_chk(o2)) description]];
}

- (id<JavaUtilComparator>)reversed {
  return JavaUtilComparator_reversed(self);
}

- (id<JavaUtilComparator>)thenComparingWithJavaUtilComparator:(id<JavaUtilComparator>)arg0 {
  return JavaUtilComparator_thenComparingWithJavaUtilComparator_(self, arg0);
}

- (id<JavaUtilComparator>)thenComparingWithJavaUtilFunctionFunction:(id<JavaUtilFunctionFunction>)arg0
                                             withJavaUtilComparator:(id<JavaUtilComparator>)arg1 {
  return JavaUtilComparator_thenComparingWithJavaUtilFunctionFunction_withJavaUtilComparator_(self, arg0, arg1);
}

- (id<JavaUtilComparator>)thenComparingWithJavaUtilFunctionFunction:(id<JavaUtilFunctionFunction>)arg0 {
  return JavaUtilComparator_thenComparingWithJavaUtilFunctionFunction_(self, arg0);
}

- (id<JavaUtilComparator>)thenComparingIntWithJavaUtilFunctionToIntFunction:(id<JavaUtilFunctionToIntFunction>)arg0 {
  return JavaUtilComparator_thenComparingIntWithJavaUtilFunctionToIntFunction_(self, arg0);
}

- (id<JavaUtilComparator>)thenComparingLongWithJavaUtilFunctionToLongFunction:(id<JavaUtilFunctionToLongFunction>)arg0 {
  return JavaUtilComparator_thenComparingLongWithJavaUtilFunctionToLongFunction_(self, arg0);
}

- (id<JavaUtilComparator>)thenComparingDoubleWithJavaUtilFunctionToDoubleFunction:(id<JavaUtilFunctionToDoubleFunction>)arg0 {
  return JavaUtilComparator_thenComparingDoubleWithJavaUtilFunctionToDoubleFunction_(self, arg0);
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x0, -1, -1, -1, -1, -1, -1 },
    { NULL, "I", 0x1, 0, 1, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  #pragma clang diagnostic ignored "-Wundeclared-selector"
  methods[0].selector = @selector(init);
  methods[1].selector = @selector(compareWithId:withId:);
  #pragma clang diagnostic pop
  static const void *ptrTable[] = { "compare", "LOrgApacheLuceneUtilAccountable;LOrgApacheLuceneUtilAccountable;", "LOrgApacheLuceneUtilAccountables;", "namedAccountablesWithNSString:withJavaUtilMap:", "Ljava/lang/Object;Ljava/util/Comparator<Lorg/apache/lucene/util/Accountable;>;" };
  static const J2ObjcClassInfo _OrgApacheLuceneUtilAccountables_1 = { "", "org.apache.lucene.util", ptrTable, methods, NULL, 7, 0x8018, 2, 0, 2, -1, 3, 4, -1 };
  return &_OrgApacheLuceneUtilAccountables_1;
}

@end

void OrgApacheLuceneUtilAccountables_1_init(OrgApacheLuceneUtilAccountables_1 *self) {
  NSObject_init(self);
}

OrgApacheLuceneUtilAccountables_1 *new_OrgApacheLuceneUtilAccountables_1_init() {
  J2OBJC_NEW_IMPL(OrgApacheLuceneUtilAccountables_1, init)
}

OrgApacheLuceneUtilAccountables_1 *create_OrgApacheLuceneUtilAccountables_1_init() {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneUtilAccountables_1, init)
}

@implementation OrgApacheLuceneUtilAccountables_2

- (instancetype)initWithLong:(jlong)capture$0
      withJavaUtilCollection:(id<JavaUtilCollection>)capture$1
                withNSString:(NSString *)capture$2 {
  OrgApacheLuceneUtilAccountables_2_initWithLong_withJavaUtilCollection_withNSString_(self, capture$0, capture$1, capture$2);
  return self;
}

- (jlong)ramBytesUsed {
  return val$bytes_;
}

- (id<JavaUtilCollection>)getChildResources {
  return JreRetainedLocalValue(val$children_);
}

- (NSString *)description {
  return JreRetainedLocalValue(val$description_);
}

- (void)dealloc {
  RELEASE_(val$children_);
  RELEASE_(val$description_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x0, -1, 0, -1, -1, -1, -1 },
    { NULL, "J", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "LJavaUtilCollection;", 0x1, -1, -1, -1, 1, -1, -1 },
    { NULL, "LNSString;", 0x1, 2, -1, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  #pragma clang diagnostic ignored "-Wundeclared-selector"
  methods[0].selector = @selector(initWithLong:withJavaUtilCollection:withNSString:);
  methods[1].selector = @selector(ramBytesUsed);
  methods[2].selector = @selector(getChildResources);
  methods[3].selector = @selector(description);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "val$bytes_", "J", .constantValue.asLong = 0, 0x1012, -1, -1, -1, -1 },
    { "val$children_", "LJavaUtilCollection;", .constantValue.asLong = 0, 0x1012, -1, -1, 3, -1 },
    { "val$description_", "LNSString;", .constantValue.asLong = 0, 0x1012, -1, -1, -1, -1 },
  };
  static const void *ptrTable[] = { "JLJavaUtilCollection;LNSString;", "()Ljava/util/Collection<Lorg/apache/lucene/util/Accountable;>;", "toString", "Ljava/util/Collection<Lorg/apache/lucene/util/Accountable;>;", "LOrgApacheLuceneUtilAccountables;", "namedAccountableWithNSString:withJavaUtilCollection:withLong:" };
  static const J2ObjcClassInfo _OrgApacheLuceneUtilAccountables_2 = { "", "org.apache.lucene.util", ptrTable, methods, fields, 7, 0x8018, 4, 3, 4, -1, 5, -1, -1 };
  return &_OrgApacheLuceneUtilAccountables_2;
}

@end

void OrgApacheLuceneUtilAccountables_2_initWithLong_withJavaUtilCollection_withNSString_(OrgApacheLuceneUtilAccountables_2 *self, jlong capture$0, id<JavaUtilCollection> capture$1, NSString *capture$2) {
  self->val$bytes_ = capture$0;
  JreStrongAssign(&self->val$children_, capture$1);
  JreStrongAssign(&self->val$description_, capture$2);
  NSObject_init(self);
}

OrgApacheLuceneUtilAccountables_2 *new_OrgApacheLuceneUtilAccountables_2_initWithLong_withJavaUtilCollection_withNSString_(jlong capture$0, id<JavaUtilCollection> capture$1, NSString *capture$2) {
  J2OBJC_NEW_IMPL(OrgApacheLuceneUtilAccountables_2, initWithLong_withJavaUtilCollection_withNSString_, capture$0, capture$1, capture$2)
}

OrgApacheLuceneUtilAccountables_2 *create_OrgApacheLuceneUtilAccountables_2_initWithLong_withJavaUtilCollection_withNSString_(jlong capture$0, id<JavaUtilCollection> capture$1, NSString *capture$2) {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneUtilAccountables_2, initWithLong_withJavaUtilCollection_withNSString_, capture$0, capture$1, capture$2)
}
