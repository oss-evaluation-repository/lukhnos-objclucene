//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./queries/src/java/org/apache/lucene/queries/function/valuesource/ReciprocalFloatFunction.java
//

#include "IOSClass.h"
#include "J2ObjC_source.h"
#include "java/lang/Float.h"
#include "java/util/Map.h"
#include "org/apache/lucene/index/LeafReaderContext.h"
#include "org/apache/lucene/queries/function/FunctionValues.h"
#include "org/apache/lucene/queries/function/ValueSource.h"
#include "org/apache/lucene/queries/function/docvalues/FloatDocValues.h"
#include "org/apache/lucene/queries/function/valuesource/ReciprocalFloatFunction.h"
#include "org/apache/lucene/search/IndexSearcher.h"

#if __has_feature(objc_arc)
#error "org/apache/lucene/queries/function/valuesource/ReciprocalFloatFunction must not be compiled with ARC (-fobjc-arc)"
#endif

@interface OrgApacheLuceneQueriesFunctionValuesourceReciprocalFloatFunction_1 : OrgApacheLuceneQueriesFunctionDocvaluesFloatDocValues {
 @public
  OrgApacheLuceneQueriesFunctionValuesourceReciprocalFloatFunction *this$0_;
  OrgApacheLuceneQueriesFunctionFunctionValues *val$vals_;
}

- (instancetype)initWithOrgApacheLuceneQueriesFunctionValuesourceReciprocalFloatFunction:(OrgApacheLuceneQueriesFunctionValuesourceReciprocalFloatFunction *)outer$
                                        withOrgApacheLuceneQueriesFunctionFunctionValues:(OrgApacheLuceneQueriesFunctionFunctionValues *)capture$0
                                           withOrgApacheLuceneQueriesFunctionValueSource:(OrgApacheLuceneQueriesFunctionValueSource *)vs;

- (jfloat)floatValWithInt:(jint)doc;

- (jboolean)existsWithInt:(jint)doc;

- (NSString *)toStringWithInt:(jint)doc;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneQueriesFunctionValuesourceReciprocalFloatFunction_1)

__attribute__((unused)) static void OrgApacheLuceneQueriesFunctionValuesourceReciprocalFloatFunction_1_initWithOrgApacheLuceneQueriesFunctionValuesourceReciprocalFloatFunction_withOrgApacheLuceneQueriesFunctionFunctionValues_withOrgApacheLuceneQueriesFunctionValueSource_(OrgApacheLuceneQueriesFunctionValuesourceReciprocalFloatFunction_1 *self, OrgApacheLuceneQueriesFunctionValuesourceReciprocalFloatFunction *outer$, OrgApacheLuceneQueriesFunctionFunctionValues *capture$0, OrgApacheLuceneQueriesFunctionValueSource *vs);

__attribute__((unused)) static OrgApacheLuceneQueriesFunctionValuesourceReciprocalFloatFunction_1 *new_OrgApacheLuceneQueriesFunctionValuesourceReciprocalFloatFunction_1_initWithOrgApacheLuceneQueriesFunctionValuesourceReciprocalFloatFunction_withOrgApacheLuceneQueriesFunctionFunctionValues_withOrgApacheLuceneQueriesFunctionValueSource_(OrgApacheLuceneQueriesFunctionValuesourceReciprocalFloatFunction *outer$, OrgApacheLuceneQueriesFunctionFunctionValues *capture$0, OrgApacheLuceneQueriesFunctionValueSource *vs) NS_RETURNS_RETAINED;

__attribute__((unused)) static OrgApacheLuceneQueriesFunctionValuesourceReciprocalFloatFunction_1 *create_OrgApacheLuceneQueriesFunctionValuesourceReciprocalFloatFunction_1_initWithOrgApacheLuceneQueriesFunctionValuesourceReciprocalFloatFunction_withOrgApacheLuceneQueriesFunctionFunctionValues_withOrgApacheLuceneQueriesFunctionValueSource_(OrgApacheLuceneQueriesFunctionValuesourceReciprocalFloatFunction *outer$, OrgApacheLuceneQueriesFunctionFunctionValues *capture$0, OrgApacheLuceneQueriesFunctionValueSource *vs);

@implementation OrgApacheLuceneQueriesFunctionValuesourceReciprocalFloatFunction

- (instancetype)initWithOrgApacheLuceneQueriesFunctionValueSource:(OrgApacheLuceneQueriesFunctionValueSource *)source
                                                        withFloat:(jfloat)m
                                                        withFloat:(jfloat)a
                                                        withFloat:(jfloat)b {
  OrgApacheLuceneQueriesFunctionValuesourceReciprocalFloatFunction_initWithOrgApacheLuceneQueriesFunctionValueSource_withFloat_withFloat_withFloat_(self, source, m, a, b);
  return self;
}

- (OrgApacheLuceneQueriesFunctionFunctionValues *)getValuesWithJavaUtilMap:(id<JavaUtilMap>)context
                                 withOrgApacheLuceneIndexLeafReaderContext:(OrgApacheLuceneIndexLeafReaderContext *)readerContext {
  OrgApacheLuceneQueriesFunctionFunctionValues *vals = [((OrgApacheLuceneQueriesFunctionValueSource *) nil_chk(source_)) getValuesWithJavaUtilMap:context withOrgApacheLuceneIndexLeafReaderContext:readerContext];
  return create_OrgApacheLuceneQueriesFunctionValuesourceReciprocalFloatFunction_1_initWithOrgApacheLuceneQueriesFunctionValuesourceReciprocalFloatFunction_withOrgApacheLuceneQueriesFunctionFunctionValues_withOrgApacheLuceneQueriesFunctionValueSource_(self, vals, self);
}

- (void)createWeightWithJavaUtilMap:(id<JavaUtilMap>)context
withOrgApacheLuceneSearchIndexSearcher:(OrgApacheLuceneSearchIndexSearcher *)searcher {
  [((OrgApacheLuceneQueriesFunctionValueSource *) nil_chk(source_)) createWeightWithJavaUtilMap:context withOrgApacheLuceneSearchIndexSearcher:searcher];
}

- (NSString *)description__ {
  return JreStrcat("$$F$$$FC", JavaLangFloat_toStringWithFloat_(a_), @"/(", m_, @"*float(", [((OrgApacheLuceneQueriesFunctionValueSource *) nil_chk(source_)) description__], @")+", b_, ')');
}

- (NSUInteger)hash {
  jint h = JavaLangFloat_floatToIntBitsWithFloat_(a_) + JavaLangFloat_floatToIntBitsWithFloat_(m_);
  h ^= (JreLShift32(h, 13)) | (JreURShift32(h, 20));
  return h + (JavaLangFloat_floatToIntBitsWithFloat_(b_)) + ((jint) [((OrgApacheLuceneQueriesFunctionValueSource *) nil_chk(source_)) hash]);
}

- (jboolean)isEqual:(id)o {
  if (!JreObjectEqualsEquals(OrgApacheLuceneQueriesFunctionValuesourceReciprocalFloatFunction_class_(), [nil_chk(o) java_getClass])) return false;
  OrgApacheLuceneQueriesFunctionValuesourceReciprocalFloatFunction *other = (OrgApacheLuceneQueriesFunctionValuesourceReciprocalFloatFunction *) cast_chk(o, [OrgApacheLuceneQueriesFunctionValuesourceReciprocalFloatFunction class]);
  return self->m_ == other->m_ && self->a_ == other->a_ && self->b_ == other->b_ && [((OrgApacheLuceneQueriesFunctionValueSource *) nil_chk(self->source_)) isEqual:other->source_];
}

- (void)dealloc {
  RELEASE_(source_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x1, -1, 0, -1, -1, -1, -1 },
    { NULL, "LOrgApacheLuceneQueriesFunctionFunctionValues;", 0x1, 1, 2, 3, -1, -1, -1 },
    { NULL, "V", 0x1, 4, 5, 3, -1, -1, -1 },
    { NULL, "LNSString;", 0x1, 6, -1, -1, -1, -1, -1 },
    { NULL, "I", 0x1, 7, -1, -1, -1, -1, -1 },
    { NULL, "Z", 0x1, 8, 9, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  #pragma clang diagnostic ignored "-Wundeclared-selector"
  methods[0].selector = @selector(initWithOrgApacheLuceneQueriesFunctionValueSource:withFloat:withFloat:withFloat:);
  methods[1].selector = @selector(getValuesWithJavaUtilMap:withOrgApacheLuceneIndexLeafReaderContext:);
  methods[2].selector = @selector(createWeightWithJavaUtilMap:withOrgApacheLuceneSearchIndexSearcher:);
  methods[3].selector = @selector(description__);
  methods[4].selector = @selector(hash);
  methods[5].selector = @selector(isEqual:);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "source_", "LOrgApacheLuceneQueriesFunctionValueSource;", .constantValue.asLong = 0, 0x14, -1, -1, -1, -1 },
    { "m_", "F", .constantValue.asLong = 0, 0x14, -1, -1, -1, -1 },
    { "a_", "F", .constantValue.asLong = 0, 0x14, -1, -1, -1, -1 },
    { "b_", "F", .constantValue.asLong = 0, 0x14, -1, -1, -1, -1 },
  };
  static const void *ptrTable[] = { "LOrgApacheLuceneQueriesFunctionValueSource;FFF", "getValues", "LJavaUtilMap;LOrgApacheLuceneIndexLeafReaderContext;", "LJavaIoIOException;", "createWeight", "LJavaUtilMap;LOrgApacheLuceneSearchIndexSearcher;", "description", "hashCode", "equals", "LNSObject;" };
  static const J2ObjcClassInfo _OrgApacheLuceneQueriesFunctionValuesourceReciprocalFloatFunction = { "ReciprocalFloatFunction", "org.apache.lucene.queries.function.valuesource", ptrTable, methods, fields, 7, 0x1, 6, 4, -1, -1, -1, -1, -1 };
  return &_OrgApacheLuceneQueriesFunctionValuesourceReciprocalFloatFunction;
}

@end

void OrgApacheLuceneQueriesFunctionValuesourceReciprocalFloatFunction_initWithOrgApacheLuceneQueriesFunctionValueSource_withFloat_withFloat_withFloat_(OrgApacheLuceneQueriesFunctionValuesourceReciprocalFloatFunction *self, OrgApacheLuceneQueriesFunctionValueSource *source, jfloat m, jfloat a, jfloat b) {
  OrgApacheLuceneQueriesFunctionValueSource_init(self);
  JreStrongAssign(&self->source_, source);
  self->m_ = m;
  self->a_ = a;
  self->b_ = b;
}

OrgApacheLuceneQueriesFunctionValuesourceReciprocalFloatFunction *new_OrgApacheLuceneQueriesFunctionValuesourceReciprocalFloatFunction_initWithOrgApacheLuceneQueriesFunctionValueSource_withFloat_withFloat_withFloat_(OrgApacheLuceneQueriesFunctionValueSource *source, jfloat m, jfloat a, jfloat b) {
  J2OBJC_NEW_IMPL(OrgApacheLuceneQueriesFunctionValuesourceReciprocalFloatFunction, initWithOrgApacheLuceneQueriesFunctionValueSource_withFloat_withFloat_withFloat_, source, m, a, b)
}

OrgApacheLuceneQueriesFunctionValuesourceReciprocalFloatFunction *create_OrgApacheLuceneQueriesFunctionValuesourceReciprocalFloatFunction_initWithOrgApacheLuceneQueriesFunctionValueSource_withFloat_withFloat_withFloat_(OrgApacheLuceneQueriesFunctionValueSource *source, jfloat m, jfloat a, jfloat b) {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneQueriesFunctionValuesourceReciprocalFloatFunction, initWithOrgApacheLuceneQueriesFunctionValueSource_withFloat_withFloat_withFloat_, source, m, a, b)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneQueriesFunctionValuesourceReciprocalFloatFunction)

@implementation OrgApacheLuceneQueriesFunctionValuesourceReciprocalFloatFunction_1

- (instancetype)initWithOrgApacheLuceneQueriesFunctionValuesourceReciprocalFloatFunction:(OrgApacheLuceneQueriesFunctionValuesourceReciprocalFloatFunction *)outer$
                                        withOrgApacheLuceneQueriesFunctionFunctionValues:(OrgApacheLuceneQueriesFunctionFunctionValues *)capture$0
                                           withOrgApacheLuceneQueriesFunctionValueSource:(OrgApacheLuceneQueriesFunctionValueSource *)vs {
  OrgApacheLuceneQueriesFunctionValuesourceReciprocalFloatFunction_1_initWithOrgApacheLuceneQueriesFunctionValuesourceReciprocalFloatFunction_withOrgApacheLuceneQueriesFunctionFunctionValues_withOrgApacheLuceneQueriesFunctionValueSource_(self, outer$, capture$0, vs);
  return self;
}

- (jfloat)floatValWithInt:(jint)doc {
  return this$0_->a_ / (this$0_->m_ * [((OrgApacheLuceneQueriesFunctionFunctionValues *) nil_chk(val$vals_)) floatValWithInt:doc] + this$0_->b_);
}

- (jboolean)existsWithInt:(jint)doc {
  return [((OrgApacheLuceneQueriesFunctionFunctionValues *) nil_chk(val$vals_)) existsWithInt:doc];
}

- (NSString *)toStringWithInt:(jint)doc {
  return JreStrcat("$$F$$$FC", JavaLangFloat_toStringWithFloat_(this$0_->a_), @"/(", this$0_->m_, @"*float(", [((OrgApacheLuceneQueriesFunctionFunctionValues *) nil_chk(val$vals_)) toStringWithInt:doc], @")+", this$0_->b_, ')');
}

- (void)dealloc {
  RELEASE_(this$0_);
  RELEASE_(val$vals_);
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
  methods[0].selector = @selector(initWithOrgApacheLuceneQueriesFunctionValuesourceReciprocalFloatFunction:withOrgApacheLuceneQueriesFunctionFunctionValues:withOrgApacheLuceneQueriesFunctionValueSource:);
  methods[1].selector = @selector(floatValWithInt:);
  methods[2].selector = @selector(existsWithInt:);
  methods[3].selector = @selector(toStringWithInt:);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "this$0_", "LOrgApacheLuceneQueriesFunctionValuesourceReciprocalFloatFunction;", .constantValue.asLong = 0, 0x1012, -1, -1, -1, -1 },
    { "val$vals_", "LOrgApacheLuceneQueriesFunctionFunctionValues;", .constantValue.asLong = 0, 0x1012, -1, -1, -1, -1 },
  };
  static const void *ptrTable[] = { "LOrgApacheLuceneQueriesFunctionValuesourceReciprocalFloatFunction;LOrgApacheLuceneQueriesFunctionFunctionValues;LOrgApacheLuceneQueriesFunctionValueSource;", "floatVal", "I", "exists", "toString", "LOrgApacheLuceneQueriesFunctionValuesourceReciprocalFloatFunction;", "getValuesWithJavaUtilMap:withOrgApacheLuceneIndexLeafReaderContext:" };
  static const J2ObjcClassInfo _OrgApacheLuceneQueriesFunctionValuesourceReciprocalFloatFunction_1 = { "", "org.apache.lucene.queries.function.valuesource", ptrTable, methods, fields, 7, 0x8010, 4, 2, 5, -1, 6, -1, -1 };
  return &_OrgApacheLuceneQueriesFunctionValuesourceReciprocalFloatFunction_1;
}

@end

void OrgApacheLuceneQueriesFunctionValuesourceReciprocalFloatFunction_1_initWithOrgApacheLuceneQueriesFunctionValuesourceReciprocalFloatFunction_withOrgApacheLuceneQueriesFunctionFunctionValues_withOrgApacheLuceneQueriesFunctionValueSource_(OrgApacheLuceneQueriesFunctionValuesourceReciprocalFloatFunction_1 *self, OrgApacheLuceneQueriesFunctionValuesourceReciprocalFloatFunction *outer$, OrgApacheLuceneQueriesFunctionFunctionValues *capture$0, OrgApacheLuceneQueriesFunctionValueSource *vs) {
  JreStrongAssign(&self->this$0_, outer$);
  JreStrongAssign(&self->val$vals_, capture$0);
  OrgApacheLuceneQueriesFunctionDocvaluesFloatDocValues_initWithOrgApacheLuceneQueriesFunctionValueSource_(self, vs);
}

OrgApacheLuceneQueriesFunctionValuesourceReciprocalFloatFunction_1 *new_OrgApacheLuceneQueriesFunctionValuesourceReciprocalFloatFunction_1_initWithOrgApacheLuceneQueriesFunctionValuesourceReciprocalFloatFunction_withOrgApacheLuceneQueriesFunctionFunctionValues_withOrgApacheLuceneQueriesFunctionValueSource_(OrgApacheLuceneQueriesFunctionValuesourceReciprocalFloatFunction *outer$, OrgApacheLuceneQueriesFunctionFunctionValues *capture$0, OrgApacheLuceneQueriesFunctionValueSource *vs) {
  J2OBJC_NEW_IMPL(OrgApacheLuceneQueriesFunctionValuesourceReciprocalFloatFunction_1, initWithOrgApacheLuceneQueriesFunctionValuesourceReciprocalFloatFunction_withOrgApacheLuceneQueriesFunctionFunctionValues_withOrgApacheLuceneQueriesFunctionValueSource_, outer$, capture$0, vs)
}

OrgApacheLuceneQueriesFunctionValuesourceReciprocalFloatFunction_1 *create_OrgApacheLuceneQueriesFunctionValuesourceReciprocalFloatFunction_1_initWithOrgApacheLuceneQueriesFunctionValuesourceReciprocalFloatFunction_withOrgApacheLuceneQueriesFunctionFunctionValues_withOrgApacheLuceneQueriesFunctionValueSource_(OrgApacheLuceneQueriesFunctionValuesourceReciprocalFloatFunction *outer$, OrgApacheLuceneQueriesFunctionFunctionValues *capture$0, OrgApacheLuceneQueriesFunctionValueSource *vs) {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneQueriesFunctionValuesourceReciprocalFloatFunction_1, initWithOrgApacheLuceneQueriesFunctionValuesourceReciprocalFloatFunction_withOrgApacheLuceneQueriesFunctionFunctionValues_withOrgApacheLuceneQueriesFunctionValueSource_, outer$, capture$0, vs)
}
