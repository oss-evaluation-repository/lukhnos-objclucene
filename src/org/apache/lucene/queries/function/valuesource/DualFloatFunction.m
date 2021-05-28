//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./queries/src/java/org/apache/lucene/queries/function/valuesource/DualFloatFunction.java
//

#include "IOSClass.h"
#include "J2ObjC_source.h"
#include "java/util/Map.h"
#include "org/apache/lucene/index/LeafReaderContext.h"
#include "org/apache/lucene/queries/function/FunctionValues.h"
#include "org/apache/lucene/queries/function/ValueSource.h"
#include "org/apache/lucene/queries/function/docvalues/FloatDocValues.h"
#include "org/apache/lucene/queries/function/valuesource/DualFloatFunction.h"
#include "org/apache/lucene/queries/function/valuesource/MultiFunction.h"
#include "org/apache/lucene/search/IndexSearcher.h"

#if __has_feature(objc_arc)
#error "org/apache/lucene/queries/function/valuesource/DualFloatFunction must not be compiled with ARC (-fobjc-arc)"
#endif

@interface OrgApacheLuceneQueriesFunctionValuesourceDualFloatFunction_1 : OrgApacheLuceneQueriesFunctionDocvaluesFloatDocValues {
 @public
  OrgApacheLuceneQueriesFunctionValuesourceDualFloatFunction *this$0_;
  OrgApacheLuceneQueriesFunctionFunctionValues *val$aVals_;
  OrgApacheLuceneQueriesFunctionFunctionValues *val$bVals_;
}

- (instancetype)initWithOrgApacheLuceneQueriesFunctionValuesourceDualFloatFunction:(OrgApacheLuceneQueriesFunctionValuesourceDualFloatFunction *)outer$
                                  withOrgApacheLuceneQueriesFunctionFunctionValues:(OrgApacheLuceneQueriesFunctionFunctionValues *)capture$0
                                  withOrgApacheLuceneQueriesFunctionFunctionValues:(OrgApacheLuceneQueriesFunctionFunctionValues *)capture$1
                                     withOrgApacheLuceneQueriesFunctionValueSource:(OrgApacheLuceneQueriesFunctionValueSource *)vs;

- (jfloat)floatValWithInt:(jint)doc;

/*!
 @brief True if and only if <em>all</em> of the wrapped <code>FunctionValues</code>  
 <code>exists</code> for the specified doc
 */
- (jboolean)existsWithInt:(jint)doc;

- (NSString *)toStringWithInt:(jint)doc;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneQueriesFunctionValuesourceDualFloatFunction_1)

__attribute__((unused)) static void OrgApacheLuceneQueriesFunctionValuesourceDualFloatFunction_1_initWithOrgApacheLuceneQueriesFunctionValuesourceDualFloatFunction_withOrgApacheLuceneQueriesFunctionFunctionValues_withOrgApacheLuceneQueriesFunctionFunctionValues_withOrgApacheLuceneQueriesFunctionValueSource_(OrgApacheLuceneQueriesFunctionValuesourceDualFloatFunction_1 *self, OrgApacheLuceneQueriesFunctionValuesourceDualFloatFunction *outer$, OrgApacheLuceneQueriesFunctionFunctionValues *capture$0, OrgApacheLuceneQueriesFunctionFunctionValues *capture$1, OrgApacheLuceneQueriesFunctionValueSource *vs);

__attribute__((unused)) static OrgApacheLuceneQueriesFunctionValuesourceDualFloatFunction_1 *new_OrgApacheLuceneQueriesFunctionValuesourceDualFloatFunction_1_initWithOrgApacheLuceneQueriesFunctionValuesourceDualFloatFunction_withOrgApacheLuceneQueriesFunctionFunctionValues_withOrgApacheLuceneQueriesFunctionFunctionValues_withOrgApacheLuceneQueriesFunctionValueSource_(OrgApacheLuceneQueriesFunctionValuesourceDualFloatFunction *outer$, OrgApacheLuceneQueriesFunctionFunctionValues *capture$0, OrgApacheLuceneQueriesFunctionFunctionValues *capture$1, OrgApacheLuceneQueriesFunctionValueSource *vs) NS_RETURNS_RETAINED;

__attribute__((unused)) static OrgApacheLuceneQueriesFunctionValuesourceDualFloatFunction_1 *create_OrgApacheLuceneQueriesFunctionValuesourceDualFloatFunction_1_initWithOrgApacheLuceneQueriesFunctionValuesourceDualFloatFunction_withOrgApacheLuceneQueriesFunctionFunctionValues_withOrgApacheLuceneQueriesFunctionFunctionValues_withOrgApacheLuceneQueriesFunctionValueSource_(OrgApacheLuceneQueriesFunctionValuesourceDualFloatFunction *outer$, OrgApacheLuceneQueriesFunctionFunctionValues *capture$0, OrgApacheLuceneQueriesFunctionFunctionValues *capture$1, OrgApacheLuceneQueriesFunctionValueSource *vs);

@implementation OrgApacheLuceneQueriesFunctionValuesourceDualFloatFunction

- (instancetype)initWithOrgApacheLuceneQueriesFunctionValueSource:(OrgApacheLuceneQueriesFunctionValueSource *)a
                    withOrgApacheLuceneQueriesFunctionValueSource:(OrgApacheLuceneQueriesFunctionValueSource *)b {
  OrgApacheLuceneQueriesFunctionValuesourceDualFloatFunction_initWithOrgApacheLuceneQueriesFunctionValueSource_withOrgApacheLuceneQueriesFunctionValueSource_(self, a, b);
  return self;
}

- (NSString *)name {
  // can't call an abstract method
  [self doesNotRecognizeSelector:_cmd];
  return 0;
}

- (jfloat)funcWithInt:(jint)doc
withOrgApacheLuceneQueriesFunctionFunctionValues:(OrgApacheLuceneQueriesFunctionFunctionValues *)aVals
withOrgApacheLuceneQueriesFunctionFunctionValues:(OrgApacheLuceneQueriesFunctionFunctionValues *)bVals {
  // can't call an abstract method
  [self doesNotRecognizeSelector:_cmd];
  return 0;
}

- (NSString *)description__ {
  return JreStrcat("$C$C$C", [self name], '(', [((OrgApacheLuceneQueriesFunctionValueSource *) nil_chk(a_)) description__], ',', [((OrgApacheLuceneQueriesFunctionValueSource *) nil_chk(b_)) description__], ')');
}

- (OrgApacheLuceneQueriesFunctionFunctionValues *)getValuesWithJavaUtilMap:(id<JavaUtilMap>)context
                                 withOrgApacheLuceneIndexLeafReaderContext:(OrgApacheLuceneIndexLeafReaderContext *)readerContext {
  OrgApacheLuceneQueriesFunctionFunctionValues *aVals = [((OrgApacheLuceneQueriesFunctionValueSource *) nil_chk(a_)) getValuesWithJavaUtilMap:context withOrgApacheLuceneIndexLeafReaderContext:readerContext];
  OrgApacheLuceneQueriesFunctionFunctionValues *bVals = [((OrgApacheLuceneQueriesFunctionValueSource *) nil_chk(b_)) getValuesWithJavaUtilMap:context withOrgApacheLuceneIndexLeafReaderContext:readerContext];
  return create_OrgApacheLuceneQueriesFunctionValuesourceDualFloatFunction_1_initWithOrgApacheLuceneQueriesFunctionValuesourceDualFloatFunction_withOrgApacheLuceneQueriesFunctionFunctionValues_withOrgApacheLuceneQueriesFunctionFunctionValues_withOrgApacheLuceneQueriesFunctionValueSource_(self, aVals, bVals, self);
}

- (void)createWeightWithJavaUtilMap:(id<JavaUtilMap>)context
withOrgApacheLuceneSearchIndexSearcher:(OrgApacheLuceneSearchIndexSearcher *)searcher {
  [((OrgApacheLuceneQueriesFunctionValueSource *) nil_chk(a_)) createWeightWithJavaUtilMap:context withOrgApacheLuceneSearchIndexSearcher:searcher];
  [((OrgApacheLuceneQueriesFunctionValueSource *) nil_chk(b_)) createWeightWithJavaUtilMap:context withOrgApacheLuceneSearchIndexSearcher:searcher];
}

- (NSUInteger)hash {
  jint h = ((jint) [((OrgApacheLuceneQueriesFunctionValueSource *) nil_chk(a_)) hash]);
  h ^= (JreLShift32(h, 13)) | (JreURShift32(h, 20));
  h += ((jint) [((OrgApacheLuceneQueriesFunctionValueSource *) nil_chk(b_)) hash]);
  h ^= (JreLShift32(h, 23)) | (JreURShift32(h, 10));
  h += ((jint) [((NSString *) nil_chk([self name])) hash]);
  return h;
}

- (jboolean)isEqual:(id)o {
  if (!JreObjectEqualsEquals([self java_getClass], [nil_chk(o) java_getClass])) return false;
  OrgApacheLuceneQueriesFunctionValuesourceDualFloatFunction *other = (OrgApacheLuceneQueriesFunctionValuesourceDualFloatFunction *) cast_chk(o, [OrgApacheLuceneQueriesFunctionValuesourceDualFloatFunction class]);
  return [((OrgApacheLuceneQueriesFunctionValueSource *) nil_chk(self->a_)) isEqual:other->a_] && [((OrgApacheLuceneQueriesFunctionValueSource *) nil_chk(self->b_)) isEqual:other->b_];
}

- (void)dealloc {
  RELEASE_(a_);
  RELEASE_(b_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x1, -1, 0, -1, -1, -1, -1 },
    { NULL, "LNSString;", 0x404, -1, -1, -1, -1, -1, -1 },
    { NULL, "F", 0x404, 1, 2, -1, -1, -1, -1 },
    { NULL, "LNSString;", 0x1, 3, -1, -1, -1, -1, -1 },
    { NULL, "LOrgApacheLuceneQueriesFunctionFunctionValues;", 0x1, 4, 5, 6, -1, -1, -1 },
    { NULL, "V", 0x1, 7, 8, 6, -1, -1, -1 },
    { NULL, "I", 0x1, 9, -1, -1, -1, -1, -1 },
    { NULL, "Z", 0x1, 10, 11, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  #pragma clang diagnostic ignored "-Wundeclared-selector"
  methods[0].selector = @selector(initWithOrgApacheLuceneQueriesFunctionValueSource:withOrgApacheLuceneQueriesFunctionValueSource:);
  methods[1].selector = @selector(name);
  methods[2].selector = @selector(funcWithInt:withOrgApacheLuceneQueriesFunctionFunctionValues:withOrgApacheLuceneQueriesFunctionFunctionValues:);
  methods[3].selector = @selector(description__);
  methods[4].selector = @selector(getValuesWithJavaUtilMap:withOrgApacheLuceneIndexLeafReaderContext:);
  methods[5].selector = @selector(createWeightWithJavaUtilMap:withOrgApacheLuceneSearchIndexSearcher:);
  methods[6].selector = @selector(hash);
  methods[7].selector = @selector(isEqual:);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "a_", "LOrgApacheLuceneQueriesFunctionValueSource;", .constantValue.asLong = 0, 0x14, -1, -1, -1, -1 },
    { "b_", "LOrgApacheLuceneQueriesFunctionValueSource;", .constantValue.asLong = 0, 0x14, -1, -1, -1, -1 },
  };
  static const void *ptrTable[] = { "LOrgApacheLuceneQueriesFunctionValueSource;LOrgApacheLuceneQueriesFunctionValueSource;", "func", "ILOrgApacheLuceneQueriesFunctionFunctionValues;LOrgApacheLuceneQueriesFunctionFunctionValues;", "description", "getValues", "LJavaUtilMap;LOrgApacheLuceneIndexLeafReaderContext;", "LJavaIoIOException;", "createWeight", "LJavaUtilMap;LOrgApacheLuceneSearchIndexSearcher;", "hashCode", "equals", "LNSObject;" };
  static const J2ObjcClassInfo _OrgApacheLuceneQueriesFunctionValuesourceDualFloatFunction = { "DualFloatFunction", "org.apache.lucene.queries.function.valuesource", ptrTable, methods, fields, 7, 0x401, 8, 2, -1, -1, -1, -1, -1 };
  return &_OrgApacheLuceneQueriesFunctionValuesourceDualFloatFunction;
}

@end

void OrgApacheLuceneQueriesFunctionValuesourceDualFloatFunction_initWithOrgApacheLuceneQueriesFunctionValueSource_withOrgApacheLuceneQueriesFunctionValueSource_(OrgApacheLuceneQueriesFunctionValuesourceDualFloatFunction *self, OrgApacheLuceneQueriesFunctionValueSource *a, OrgApacheLuceneQueriesFunctionValueSource *b) {
  OrgApacheLuceneQueriesFunctionValueSource_init(self);
  JreStrongAssign(&self->a_, a);
  JreStrongAssign(&self->b_, b);
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneQueriesFunctionValuesourceDualFloatFunction)

@implementation OrgApacheLuceneQueriesFunctionValuesourceDualFloatFunction_1

- (instancetype)initWithOrgApacheLuceneQueriesFunctionValuesourceDualFloatFunction:(OrgApacheLuceneQueriesFunctionValuesourceDualFloatFunction *)outer$
                                  withOrgApacheLuceneQueriesFunctionFunctionValues:(OrgApacheLuceneQueriesFunctionFunctionValues *)capture$0
                                  withOrgApacheLuceneQueriesFunctionFunctionValues:(OrgApacheLuceneQueriesFunctionFunctionValues *)capture$1
                                     withOrgApacheLuceneQueriesFunctionValueSource:(OrgApacheLuceneQueriesFunctionValueSource *)vs {
  OrgApacheLuceneQueriesFunctionValuesourceDualFloatFunction_1_initWithOrgApacheLuceneQueriesFunctionValuesourceDualFloatFunction_withOrgApacheLuceneQueriesFunctionFunctionValues_withOrgApacheLuceneQueriesFunctionFunctionValues_withOrgApacheLuceneQueriesFunctionValueSource_(self, outer$, capture$0, capture$1, vs);
  return self;
}

- (jfloat)floatValWithInt:(jint)doc {
  return [this$0_ funcWithInt:doc withOrgApacheLuceneQueriesFunctionFunctionValues:val$aVals_ withOrgApacheLuceneQueriesFunctionFunctionValues:val$bVals_];
}

- (jboolean)existsWithInt:(jint)doc {
  return OrgApacheLuceneQueriesFunctionValuesourceMultiFunction_allExistsWithInt_withOrgApacheLuceneQueriesFunctionFunctionValues_withOrgApacheLuceneQueriesFunctionFunctionValues_(doc, val$aVals_, val$bVals_);
}

- (NSString *)toStringWithInt:(jint)doc {
  return JreStrcat("$C$C$C", [this$0_ name], '(', [((OrgApacheLuceneQueriesFunctionFunctionValues *) nil_chk(val$aVals_)) toStringWithInt:doc], ',', [((OrgApacheLuceneQueriesFunctionFunctionValues *) nil_chk(val$bVals_)) toStringWithInt:doc], ')');
}

- (void)dealloc {
  RELEASE_(this$0_);
  RELEASE_(val$aVals_);
  RELEASE_(val$bVals_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x0, -1, 0, -1, -1, -1, -1 },
    { NULL, "F", 0x1, 1, 2, -1, -1, -1, -1 },
    { NULL, "Z", 0x1, 3, 2, -1, -1, -1, -1 },
    { NULL, "LNSString;", 0x1, 4, 2, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  #pragma clang diagnostic ignored "-Wundeclared-selector"
  methods[0].selector = @selector(initWithOrgApacheLuceneQueriesFunctionValuesourceDualFloatFunction:withOrgApacheLuceneQueriesFunctionFunctionValues:withOrgApacheLuceneQueriesFunctionFunctionValues:withOrgApacheLuceneQueriesFunctionValueSource:);
  methods[1].selector = @selector(floatValWithInt:);
  methods[2].selector = @selector(existsWithInt:);
  methods[3].selector = @selector(toStringWithInt:);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "this$0_", "LOrgApacheLuceneQueriesFunctionValuesourceDualFloatFunction;", .constantValue.asLong = 0, 0x1012, -1, -1, -1, -1 },
    { "val$aVals_", "LOrgApacheLuceneQueriesFunctionFunctionValues;", .constantValue.asLong = 0, 0x1012, -1, -1, -1, -1 },
    { "val$bVals_", "LOrgApacheLuceneQueriesFunctionFunctionValues;", .constantValue.asLong = 0, 0x1012, -1, -1, -1, -1 },
  };
  static const void *ptrTable[] = { "LOrgApacheLuceneQueriesFunctionValuesourceDualFloatFunction;LOrgApacheLuceneQueriesFunctionFunctionValues;LOrgApacheLuceneQueriesFunctionFunctionValues;LOrgApacheLuceneQueriesFunctionValueSource;", "floatVal", "I", "exists", "toString", "LOrgApacheLuceneQueriesFunctionValuesourceDualFloatFunction;", "getValuesWithJavaUtilMap:withOrgApacheLuceneIndexLeafReaderContext:" };
  static const J2ObjcClassInfo _OrgApacheLuceneQueriesFunctionValuesourceDualFloatFunction_1 = { "", "org.apache.lucene.queries.function.valuesource", ptrTable, methods, fields, 7, 0x8010, 4, 3, 5, -1, 6, -1, -1 };
  return &_OrgApacheLuceneQueriesFunctionValuesourceDualFloatFunction_1;
}

@end

void OrgApacheLuceneQueriesFunctionValuesourceDualFloatFunction_1_initWithOrgApacheLuceneQueriesFunctionValuesourceDualFloatFunction_withOrgApacheLuceneQueriesFunctionFunctionValues_withOrgApacheLuceneQueriesFunctionFunctionValues_withOrgApacheLuceneQueriesFunctionValueSource_(OrgApacheLuceneQueriesFunctionValuesourceDualFloatFunction_1 *self, OrgApacheLuceneQueriesFunctionValuesourceDualFloatFunction *outer$, OrgApacheLuceneQueriesFunctionFunctionValues *capture$0, OrgApacheLuceneQueriesFunctionFunctionValues *capture$1, OrgApacheLuceneQueriesFunctionValueSource *vs) {
  JreStrongAssign(&self->this$0_, outer$);
  JreStrongAssign(&self->val$aVals_, capture$0);
  JreStrongAssign(&self->val$bVals_, capture$1);
  OrgApacheLuceneQueriesFunctionDocvaluesFloatDocValues_initWithOrgApacheLuceneQueriesFunctionValueSource_(self, vs);
}

OrgApacheLuceneQueriesFunctionValuesourceDualFloatFunction_1 *new_OrgApacheLuceneQueriesFunctionValuesourceDualFloatFunction_1_initWithOrgApacheLuceneQueriesFunctionValuesourceDualFloatFunction_withOrgApacheLuceneQueriesFunctionFunctionValues_withOrgApacheLuceneQueriesFunctionFunctionValues_withOrgApacheLuceneQueriesFunctionValueSource_(OrgApacheLuceneQueriesFunctionValuesourceDualFloatFunction *outer$, OrgApacheLuceneQueriesFunctionFunctionValues *capture$0, OrgApacheLuceneQueriesFunctionFunctionValues *capture$1, OrgApacheLuceneQueriesFunctionValueSource *vs) {
  J2OBJC_NEW_IMPL(OrgApacheLuceneQueriesFunctionValuesourceDualFloatFunction_1, initWithOrgApacheLuceneQueriesFunctionValuesourceDualFloatFunction_withOrgApacheLuceneQueriesFunctionFunctionValues_withOrgApacheLuceneQueriesFunctionFunctionValues_withOrgApacheLuceneQueriesFunctionValueSource_, outer$, capture$0, capture$1, vs)
}

OrgApacheLuceneQueriesFunctionValuesourceDualFloatFunction_1 *create_OrgApacheLuceneQueriesFunctionValuesourceDualFloatFunction_1_initWithOrgApacheLuceneQueriesFunctionValuesourceDualFloatFunction_withOrgApacheLuceneQueriesFunctionFunctionValues_withOrgApacheLuceneQueriesFunctionFunctionValues_withOrgApacheLuceneQueriesFunctionValueSource_(OrgApacheLuceneQueriesFunctionValuesourceDualFloatFunction *outer$, OrgApacheLuceneQueriesFunctionFunctionValues *capture$0, OrgApacheLuceneQueriesFunctionFunctionValues *capture$1, OrgApacheLuceneQueriesFunctionValueSource *vs) {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneQueriesFunctionValuesourceDualFloatFunction_1, initWithOrgApacheLuceneQueriesFunctionValuesourceDualFloatFunction_withOrgApacheLuceneQueriesFunctionFunctionValues_withOrgApacheLuceneQueriesFunctionFunctionValues_withOrgApacheLuceneQueriesFunctionValueSource_, outer$, capture$0, capture$1, vs)
}
