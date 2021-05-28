//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./sandbox/src/java/org/apache/lucene/search/DocValuesNumbersQuery.java
//

#include "IOSClass.h"
#include "IOSObjectArray.h"
#include "J2ObjC_source.h"
#include "java/lang/Float.h"
#include "java/lang/Long.h"
#include "java/lang/StringBuilder.h"
#include "java/util/Arrays.h"
#include "java/util/HashSet.h"
#include "java/util/List.h"
#include "java/util/Set.h"
#include "org/apache/lucene/index/DocValues.h"
#include "org/apache/lucene/index/LeafReader.h"
#include "org/apache/lucene/index/LeafReaderContext.h"
#include "org/apache/lucene/index/SortedNumericDocValues.h"
#include "org/apache/lucene/search/DocValuesNumbersQuery.h"
#include "org/apache/lucene/search/IndexSearcher.h"
#include "org/apache/lucene/search/Query.h"
#include "org/apache/lucene/search/RandomAccessWeight.h"
#include "org/apache/lucene/search/Weight.h"
#include "org/apache/lucene/util/Bits.h"
#include "org/lukhnos/portmobile/util/Objects.h"

#if __has_feature(objc_arc)
#error "org/apache/lucene/search/DocValuesNumbersQuery must not be compiled with ARC (-fobjc-arc)"
#endif

@interface OrgApacheLuceneSearchDocValuesNumbersQuery () {
 @public
  NSString *field_;
  id<JavaUtilSet> numbers_;
}

@end

J2OBJC_FIELD_SETTER(OrgApacheLuceneSearchDocValuesNumbersQuery, field_, NSString *)
J2OBJC_FIELD_SETTER(OrgApacheLuceneSearchDocValuesNumbersQuery, numbers_, id<JavaUtilSet>)

@interface OrgApacheLuceneSearchDocValuesNumbersQuery_1 : OrgApacheLuceneSearchRandomAccessWeight {
 @public
  OrgApacheLuceneSearchDocValuesNumbersQuery *this$0_;
}

- (instancetype)initWithOrgApacheLuceneSearchDocValuesNumbersQuery:(OrgApacheLuceneSearchDocValuesNumbersQuery *)outer$
                                    withOrgApacheLuceneSearchQuery:(OrgApacheLuceneSearchQuery *)query;

- (id<OrgApacheLuceneUtilBits>)getMatchingDocsWithOrgApacheLuceneIndexLeafReaderContext:(OrgApacheLuceneIndexLeafReaderContext *)context;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneSearchDocValuesNumbersQuery_1)

__attribute__((unused)) static void OrgApacheLuceneSearchDocValuesNumbersQuery_1_initWithOrgApacheLuceneSearchDocValuesNumbersQuery_withOrgApacheLuceneSearchQuery_(OrgApacheLuceneSearchDocValuesNumbersQuery_1 *self, OrgApacheLuceneSearchDocValuesNumbersQuery *outer$, OrgApacheLuceneSearchQuery *query);

__attribute__((unused)) static OrgApacheLuceneSearchDocValuesNumbersQuery_1 *new_OrgApacheLuceneSearchDocValuesNumbersQuery_1_initWithOrgApacheLuceneSearchDocValuesNumbersQuery_withOrgApacheLuceneSearchQuery_(OrgApacheLuceneSearchDocValuesNumbersQuery *outer$, OrgApacheLuceneSearchQuery *query) NS_RETURNS_RETAINED;

__attribute__((unused)) static OrgApacheLuceneSearchDocValuesNumbersQuery_1 *create_OrgApacheLuceneSearchDocValuesNumbersQuery_1_initWithOrgApacheLuceneSearchDocValuesNumbersQuery_withOrgApacheLuceneSearchQuery_(OrgApacheLuceneSearchDocValuesNumbersQuery *outer$, OrgApacheLuceneSearchQuery *query);

@interface OrgApacheLuceneSearchDocValuesNumbersQuery_1_1 : NSObject < OrgApacheLuceneUtilBits > {
 @public
  OrgApacheLuceneSearchDocValuesNumbersQuery_1 *this$0_;
  OrgApacheLuceneIndexSortedNumericDocValues *val$values_;
  OrgApacheLuceneIndexLeafReaderContext *val$context_;
}

- (instancetype)initWithOrgApacheLuceneSearchDocValuesNumbersQuery_1:(OrgApacheLuceneSearchDocValuesNumbersQuery_1 *)outer$
                      withOrgApacheLuceneIndexSortedNumericDocValues:(OrgApacheLuceneIndexSortedNumericDocValues *)capture$0
                           withOrgApacheLuceneIndexLeafReaderContext:(OrgApacheLuceneIndexLeafReaderContext *)capture$1;

- (jboolean)getWithInt:(jint)doc;

- (jint)length;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneSearchDocValuesNumbersQuery_1_1)

__attribute__((unused)) static void OrgApacheLuceneSearchDocValuesNumbersQuery_1_1_initWithOrgApacheLuceneSearchDocValuesNumbersQuery_1_withOrgApacheLuceneIndexSortedNumericDocValues_withOrgApacheLuceneIndexLeafReaderContext_(OrgApacheLuceneSearchDocValuesNumbersQuery_1_1 *self, OrgApacheLuceneSearchDocValuesNumbersQuery_1 *outer$, OrgApacheLuceneIndexSortedNumericDocValues *capture$0, OrgApacheLuceneIndexLeafReaderContext *capture$1);

__attribute__((unused)) static OrgApacheLuceneSearchDocValuesNumbersQuery_1_1 *new_OrgApacheLuceneSearchDocValuesNumbersQuery_1_1_initWithOrgApacheLuceneSearchDocValuesNumbersQuery_1_withOrgApacheLuceneIndexSortedNumericDocValues_withOrgApacheLuceneIndexLeafReaderContext_(OrgApacheLuceneSearchDocValuesNumbersQuery_1 *outer$, OrgApacheLuceneIndexSortedNumericDocValues *capture$0, OrgApacheLuceneIndexLeafReaderContext *capture$1) NS_RETURNS_RETAINED;

__attribute__((unused)) static OrgApacheLuceneSearchDocValuesNumbersQuery_1_1 *create_OrgApacheLuceneSearchDocValuesNumbersQuery_1_1_initWithOrgApacheLuceneSearchDocValuesNumbersQuery_1_withOrgApacheLuceneIndexSortedNumericDocValues_withOrgApacheLuceneIndexLeafReaderContext_(OrgApacheLuceneSearchDocValuesNumbersQuery_1 *outer$, OrgApacheLuceneIndexSortedNumericDocValues *capture$0, OrgApacheLuceneIndexLeafReaderContext *capture$1);

@implementation OrgApacheLuceneSearchDocValuesNumbersQuery

- (instancetype)initWithNSString:(NSString *)field
                 withJavaUtilSet:(id<JavaUtilSet>)numbers {
  OrgApacheLuceneSearchDocValuesNumbersQuery_initWithNSString_withJavaUtilSet_(self, field, numbers);
  return self;
}

- (instancetype)initWithNSString:(NSString *)field
           withJavaLangLongArray:(IOSObjectArray *)numbers {
  OrgApacheLuceneSearchDocValuesNumbersQuery_initWithNSString_withJavaLangLongArray_(self, field, numbers);
  return self;
}

- (jboolean)isEqual:(id)obj {
  if (![super isEqual:obj]) {
    return false;
  }
  OrgApacheLuceneSearchDocValuesNumbersQuery *that = (OrgApacheLuceneSearchDocValuesNumbersQuery *) cast_chk(obj, [OrgApacheLuceneSearchDocValuesNumbersQuery class]);
  if (![((NSString *) nil_chk(field_)) isEqual:((OrgApacheLuceneSearchDocValuesNumbersQuery *) nil_chk(that))->field_]) {
    return false;
  }
  return [((id<JavaUtilSet>) nil_chk(numbers_)) isEqual:that->numbers_];
}

- (NSUInteger)hash {
  return OrgLukhnosPortmobileUtilObjects_hash__WithNSObjectArray_([IOSObjectArray arrayWithObjects:(id[]){ field_, numbers_, JavaLangFloat_valueOfWithFloat_([self getBoost]) } count:3 type:NSObject_class_()]);
}

- (NSString *)toStringWithNSString:(NSString *)defaultField {
  JavaLangStringBuilder *sb = create_JavaLangStringBuilder_init();
  [((JavaLangStringBuilder *) nil_chk([sb appendWithNSString:field_])) appendWithNSString:@": ["];
  for (JavaLangLong * __strong number in nil_chk(numbers_)) {
    [((JavaLangStringBuilder *) nil_chk([sb appendWithId:number])) appendWithNSString:@", "];
  }
  if ([numbers_ size] > 0) {
    [sb setLengthWithInt:[sb java_length] - 2];
  }
  return [((JavaLangStringBuilder *) nil_chk([sb appendWithChar:']'])) description];
}

- (OrgApacheLuceneSearchWeight *)createWeightWithOrgApacheLuceneSearchIndexSearcher:(OrgApacheLuceneSearchIndexSearcher *)searcher
                                                                        withBoolean:(jboolean)needsScores {
  return create_OrgApacheLuceneSearchDocValuesNumbersQuery_1_initWithOrgApacheLuceneSearchDocValuesNumbersQuery_withOrgApacheLuceneSearchQuery_(self, self);
}

- (void)dealloc {
  RELEASE_(field_);
  RELEASE_(numbers_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x1, -1, 0, -1, 1, -1, -1 },
    { NULL, NULL, 0x81, -1, 2, -1, -1, -1, -1 },
    { NULL, "Z", 0x1, 3, 4, -1, -1, -1, -1 },
    { NULL, "I", 0x1, 5, -1, -1, -1, -1, -1 },
    { NULL, "LNSString;", 0x1, 6, 7, -1, -1, -1, -1 },
    { NULL, "LOrgApacheLuceneSearchWeight;", 0x1, 8, 9, 10, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  #pragma clang diagnostic ignored "-Wundeclared-selector"
  methods[0].selector = @selector(initWithNSString:withJavaUtilSet:);
  methods[1].selector = @selector(initWithNSString:withJavaLangLongArray:);
  methods[2].selector = @selector(isEqual:);
  methods[3].selector = @selector(hash);
  methods[4].selector = @selector(toStringWithNSString:);
  methods[5].selector = @selector(createWeightWithOrgApacheLuceneSearchIndexSearcher:withBoolean:);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "field_", "LNSString;", .constantValue.asLong = 0, 0x12, -1, -1, -1, -1 },
    { "numbers_", "LJavaUtilSet;", .constantValue.asLong = 0, 0x12, -1, -1, 11, -1 },
  };
  static const void *ptrTable[] = { "LNSString;LJavaUtilSet;", "(Ljava/lang/String;Ljava/util/Set<Ljava/lang/Long;>;)V", "LNSString;[LJavaLangLong;", "equals", "LNSObject;", "hashCode", "toString", "LNSString;", "createWeight", "LOrgApacheLuceneSearchIndexSearcher;Z", "LJavaIoIOException;", "Ljava/util/Set<Ljava/lang/Long;>;" };
  static const J2ObjcClassInfo _OrgApacheLuceneSearchDocValuesNumbersQuery = { "DocValuesNumbersQuery", "org.apache.lucene.search", ptrTable, methods, fields, 7, 0x1, 6, 2, -1, -1, -1, -1, -1 };
  return &_OrgApacheLuceneSearchDocValuesNumbersQuery;
}

@end

void OrgApacheLuceneSearchDocValuesNumbersQuery_initWithNSString_withJavaUtilSet_(OrgApacheLuceneSearchDocValuesNumbersQuery *self, NSString *field, id<JavaUtilSet> numbers) {
  OrgApacheLuceneSearchQuery_init(self);
  JreStrongAssign(&self->field_, OrgLukhnosPortmobileUtilObjects_requireNonNullWithId_(field));
  JreStrongAssign(&self->numbers_, OrgLukhnosPortmobileUtilObjects_requireNonNullWithId_withNSString_(numbers, @"Set of numbers must not be null"));
}

OrgApacheLuceneSearchDocValuesNumbersQuery *new_OrgApacheLuceneSearchDocValuesNumbersQuery_initWithNSString_withJavaUtilSet_(NSString *field, id<JavaUtilSet> numbers) {
  J2OBJC_NEW_IMPL(OrgApacheLuceneSearchDocValuesNumbersQuery, initWithNSString_withJavaUtilSet_, field, numbers)
}

OrgApacheLuceneSearchDocValuesNumbersQuery *create_OrgApacheLuceneSearchDocValuesNumbersQuery_initWithNSString_withJavaUtilSet_(NSString *field, id<JavaUtilSet> numbers) {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneSearchDocValuesNumbersQuery, initWithNSString_withJavaUtilSet_, field, numbers)
}

void OrgApacheLuceneSearchDocValuesNumbersQuery_initWithNSString_withJavaLangLongArray_(OrgApacheLuceneSearchDocValuesNumbersQuery *self, NSString *field, IOSObjectArray *numbers) {
  OrgApacheLuceneSearchDocValuesNumbersQuery_initWithNSString_withJavaUtilSet_(self, field, create_JavaUtilHashSet_initWithJavaUtilCollection_(JavaUtilArrays_asListWithNSObjectArray_(numbers)));
}

OrgApacheLuceneSearchDocValuesNumbersQuery *new_OrgApacheLuceneSearchDocValuesNumbersQuery_initWithNSString_withJavaLangLongArray_(NSString *field, IOSObjectArray *numbers) {
  J2OBJC_NEW_IMPL(OrgApacheLuceneSearchDocValuesNumbersQuery, initWithNSString_withJavaLangLongArray_, field, numbers)
}

OrgApacheLuceneSearchDocValuesNumbersQuery *create_OrgApacheLuceneSearchDocValuesNumbersQuery_initWithNSString_withJavaLangLongArray_(NSString *field, IOSObjectArray *numbers) {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneSearchDocValuesNumbersQuery, initWithNSString_withJavaLangLongArray_, field, numbers)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneSearchDocValuesNumbersQuery)

@implementation OrgApacheLuceneSearchDocValuesNumbersQuery_1

- (instancetype)initWithOrgApacheLuceneSearchDocValuesNumbersQuery:(OrgApacheLuceneSearchDocValuesNumbersQuery *)outer$
                                    withOrgApacheLuceneSearchQuery:(OrgApacheLuceneSearchQuery *)query {
  OrgApacheLuceneSearchDocValuesNumbersQuery_1_initWithOrgApacheLuceneSearchDocValuesNumbersQuery_withOrgApacheLuceneSearchQuery_(self, outer$, query);
  return self;
}

- (id<OrgApacheLuceneUtilBits>)getMatchingDocsWithOrgApacheLuceneIndexLeafReaderContext:(OrgApacheLuceneIndexLeafReaderContext *)context {
  OrgApacheLuceneIndexSortedNumericDocValues *values = OrgApacheLuceneIndexDocValues_getSortedNumericWithOrgApacheLuceneIndexLeafReader_withNSString_([((OrgApacheLuceneIndexLeafReaderContext *) nil_chk(context)) reader], this$0_->field_);
  return create_OrgApacheLuceneSearchDocValuesNumbersQuery_1_1_initWithOrgApacheLuceneSearchDocValuesNumbersQuery_1_withOrgApacheLuceneIndexSortedNumericDocValues_withOrgApacheLuceneIndexLeafReaderContext_(self, values, context);
}

- (void)dealloc {
  RELEASE_(this$0_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x0, -1, 0, -1, -1, -1, -1 },
    { NULL, "LOrgApacheLuceneUtilBits;", 0x4, 1, 2, 3, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  #pragma clang diagnostic ignored "-Wundeclared-selector"
  methods[0].selector = @selector(initWithOrgApacheLuceneSearchDocValuesNumbersQuery:withOrgApacheLuceneSearchQuery:);
  methods[1].selector = @selector(getMatchingDocsWithOrgApacheLuceneIndexLeafReaderContext:);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "this$0_", "LOrgApacheLuceneSearchDocValuesNumbersQuery;", .constantValue.asLong = 0, 0x1012, -1, -1, -1, -1 },
  };
  static const void *ptrTable[] = { "LOrgApacheLuceneSearchDocValuesNumbersQuery;LOrgApacheLuceneSearchQuery;", "getMatchingDocs", "LOrgApacheLuceneIndexLeafReaderContext;", "LJavaIoIOException;", "LOrgApacheLuceneSearchDocValuesNumbersQuery;", "createWeightWithOrgApacheLuceneSearchIndexSearcher:withBoolean:" };
  static const J2ObjcClassInfo _OrgApacheLuceneSearchDocValuesNumbersQuery_1 = { "", "org.apache.lucene.search", ptrTable, methods, fields, 7, 0x8010, 2, 1, 4, -1, 5, -1, -1 };
  return &_OrgApacheLuceneSearchDocValuesNumbersQuery_1;
}

@end

void OrgApacheLuceneSearchDocValuesNumbersQuery_1_initWithOrgApacheLuceneSearchDocValuesNumbersQuery_withOrgApacheLuceneSearchQuery_(OrgApacheLuceneSearchDocValuesNumbersQuery_1 *self, OrgApacheLuceneSearchDocValuesNumbersQuery *outer$, OrgApacheLuceneSearchQuery *query) {
  JreStrongAssign(&self->this$0_, outer$);
  OrgApacheLuceneSearchRandomAccessWeight_initWithOrgApacheLuceneSearchQuery_(self, query);
}

OrgApacheLuceneSearchDocValuesNumbersQuery_1 *new_OrgApacheLuceneSearchDocValuesNumbersQuery_1_initWithOrgApacheLuceneSearchDocValuesNumbersQuery_withOrgApacheLuceneSearchQuery_(OrgApacheLuceneSearchDocValuesNumbersQuery *outer$, OrgApacheLuceneSearchQuery *query) {
  J2OBJC_NEW_IMPL(OrgApacheLuceneSearchDocValuesNumbersQuery_1, initWithOrgApacheLuceneSearchDocValuesNumbersQuery_withOrgApacheLuceneSearchQuery_, outer$, query)
}

OrgApacheLuceneSearchDocValuesNumbersQuery_1 *create_OrgApacheLuceneSearchDocValuesNumbersQuery_1_initWithOrgApacheLuceneSearchDocValuesNumbersQuery_withOrgApacheLuceneSearchQuery_(OrgApacheLuceneSearchDocValuesNumbersQuery *outer$, OrgApacheLuceneSearchQuery *query) {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneSearchDocValuesNumbersQuery_1, initWithOrgApacheLuceneSearchDocValuesNumbersQuery_withOrgApacheLuceneSearchQuery_, outer$, query)
}

@implementation OrgApacheLuceneSearchDocValuesNumbersQuery_1_1

- (instancetype)initWithOrgApacheLuceneSearchDocValuesNumbersQuery_1:(OrgApacheLuceneSearchDocValuesNumbersQuery_1 *)outer$
                      withOrgApacheLuceneIndexSortedNumericDocValues:(OrgApacheLuceneIndexSortedNumericDocValues *)capture$0
                           withOrgApacheLuceneIndexLeafReaderContext:(OrgApacheLuceneIndexLeafReaderContext *)capture$1 {
  OrgApacheLuceneSearchDocValuesNumbersQuery_1_1_initWithOrgApacheLuceneSearchDocValuesNumbersQuery_1_withOrgApacheLuceneIndexSortedNumericDocValues_withOrgApacheLuceneIndexLeafReaderContext_(self, outer$, capture$0, capture$1);
  return self;
}

- (jboolean)getWithInt:(jint)doc {
  [((OrgApacheLuceneIndexSortedNumericDocValues *) nil_chk(val$values_)) setDocumentWithInt:doc];
  jint count = [val$values_ count];
  for (jint i = 0; i < count; i++) {
    if ([((id<JavaUtilSet>) nil_chk(this$0_->this$0_->numbers_)) containsWithId:JavaLangLong_valueOfWithLong_([val$values_ valueAtWithInt:i])]) {
      return true;
    }
  }
  return false;
}

- (jint)length {
  return [((OrgApacheLuceneIndexLeafReader *) nil_chk([((OrgApacheLuceneIndexLeafReaderContext *) nil_chk(val$context_)) reader])) maxDoc];
}

- (void)dealloc {
  RELEASE_(this$0_);
  RELEASE_(val$values_);
  RELEASE_(val$context_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x0, -1, 0, -1, -1, -1, -1 },
    { NULL, "Z", 0x1, 1, 2, -1, -1, -1, -1 },
    { NULL, "I", 0x1, -1, -1, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  #pragma clang diagnostic ignored "-Wundeclared-selector"
  methods[0].selector = @selector(initWithOrgApacheLuceneSearchDocValuesNumbersQuery_1:withOrgApacheLuceneIndexSortedNumericDocValues:withOrgApacheLuceneIndexLeafReaderContext:);
  methods[1].selector = @selector(getWithInt:);
  methods[2].selector = @selector(length);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "this$0_", "LOrgApacheLuceneSearchDocValuesNumbersQuery_1;", .constantValue.asLong = 0, 0x1012, -1, -1, -1, -1 },
    { "val$values_", "LOrgApacheLuceneIndexSortedNumericDocValues;", .constantValue.asLong = 0, 0x1012, -1, -1, -1, -1 },
    { "val$context_", "LOrgApacheLuceneIndexLeafReaderContext;", .constantValue.asLong = 0, 0x1012, -1, -1, -1, -1 },
  };
  static const void *ptrTable[] = { "LOrgApacheLuceneSearchDocValuesNumbersQuery_1;LOrgApacheLuceneIndexSortedNumericDocValues;LOrgApacheLuceneIndexLeafReaderContext;", "get", "I", "LOrgApacheLuceneSearchDocValuesNumbersQuery_1;", "getMatchingDocsWithOrgApacheLuceneIndexLeafReaderContext:" };
  static const J2ObjcClassInfo _OrgApacheLuceneSearchDocValuesNumbersQuery_1_1 = { "", "org.apache.lucene.search", ptrTable, methods, fields, 7, 0x8010, 3, 3, 3, -1, 4, -1, -1 };
  return &_OrgApacheLuceneSearchDocValuesNumbersQuery_1_1;
}

@end

void OrgApacheLuceneSearchDocValuesNumbersQuery_1_1_initWithOrgApacheLuceneSearchDocValuesNumbersQuery_1_withOrgApacheLuceneIndexSortedNumericDocValues_withOrgApacheLuceneIndexLeafReaderContext_(OrgApacheLuceneSearchDocValuesNumbersQuery_1_1 *self, OrgApacheLuceneSearchDocValuesNumbersQuery_1 *outer$, OrgApacheLuceneIndexSortedNumericDocValues *capture$0, OrgApacheLuceneIndexLeafReaderContext *capture$1) {
  JreStrongAssign(&self->this$0_, outer$);
  JreStrongAssign(&self->val$values_, capture$0);
  JreStrongAssign(&self->val$context_, capture$1);
  NSObject_init(self);
}

OrgApacheLuceneSearchDocValuesNumbersQuery_1_1 *new_OrgApacheLuceneSearchDocValuesNumbersQuery_1_1_initWithOrgApacheLuceneSearchDocValuesNumbersQuery_1_withOrgApacheLuceneIndexSortedNumericDocValues_withOrgApacheLuceneIndexLeafReaderContext_(OrgApacheLuceneSearchDocValuesNumbersQuery_1 *outer$, OrgApacheLuceneIndexSortedNumericDocValues *capture$0, OrgApacheLuceneIndexLeafReaderContext *capture$1) {
  J2OBJC_NEW_IMPL(OrgApacheLuceneSearchDocValuesNumbersQuery_1_1, initWithOrgApacheLuceneSearchDocValuesNumbersQuery_1_withOrgApacheLuceneIndexSortedNumericDocValues_withOrgApacheLuceneIndexLeafReaderContext_, outer$, capture$0, capture$1)
}

OrgApacheLuceneSearchDocValuesNumbersQuery_1_1 *create_OrgApacheLuceneSearchDocValuesNumbersQuery_1_1_initWithOrgApacheLuceneSearchDocValuesNumbersQuery_1_withOrgApacheLuceneIndexSortedNumericDocValues_withOrgApacheLuceneIndexLeafReaderContext_(OrgApacheLuceneSearchDocValuesNumbersQuery_1 *outer$, OrgApacheLuceneIndexSortedNumericDocValues *capture$0, OrgApacheLuceneIndexLeafReaderContext *capture$1) {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneSearchDocValuesNumbersQuery_1_1, initWithOrgApacheLuceneSearchDocValuesNumbersQuery_1_withOrgApacheLuceneIndexSortedNumericDocValues_withOrgApacheLuceneIndexLeafReaderContext_, outer$, capture$0, capture$1)
}
