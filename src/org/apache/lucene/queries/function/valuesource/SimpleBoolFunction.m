//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./queries/src/java/org/apache/lucene/queries/function/valuesource/SimpleBoolFunction.java
//

#include "IOSClass.h"
#include "J2ObjC_source.h"
#include "java/util/Map.h"
#include "org/apache/lucene/index/LeafReaderContext.h"
#include "org/apache/lucene/queries/function/FunctionValues.h"
#include "org/apache/lucene/queries/function/ValueSource.h"
#include "org/apache/lucene/queries/function/docvalues/BoolDocValues.h"
#include "org/apache/lucene/queries/function/valuesource/BoolFunction.h"
#include "org/apache/lucene/queries/function/valuesource/SimpleBoolFunction.h"
#include "org/apache/lucene/search/IndexSearcher.h"

#if __has_feature(objc_arc)
#error "org/apache/lucene/queries/function/valuesource/SimpleBoolFunction must not be compiled with ARC (-fobjc-arc)"
#endif

@interface OrgApacheLuceneQueriesFunctionValuesourceSimpleBoolFunction_1 : OrgApacheLuceneQueriesFunctionDocvaluesBoolDocValues {
 @public
  OrgApacheLuceneQueriesFunctionValuesourceSimpleBoolFunction *this$0_;
  OrgApacheLuceneQueriesFunctionFunctionValues *val$vals_;
}

- (instancetype)initWithOrgApacheLuceneQueriesFunctionValuesourceSimpleBoolFunction:(OrgApacheLuceneQueriesFunctionValuesourceSimpleBoolFunction *)outer$
                                   withOrgApacheLuceneQueriesFunctionFunctionValues:(OrgApacheLuceneQueriesFunctionFunctionValues *)capture$0
                                      withOrgApacheLuceneQueriesFunctionValueSource:(OrgApacheLuceneQueriesFunctionValueSource *)vs;

- (jboolean)boolValWithInt:(jint)doc;

- (NSString *)toStringWithInt:(jint)doc;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneQueriesFunctionValuesourceSimpleBoolFunction_1)

__attribute__((unused)) static void OrgApacheLuceneQueriesFunctionValuesourceSimpleBoolFunction_1_initWithOrgApacheLuceneQueriesFunctionValuesourceSimpleBoolFunction_withOrgApacheLuceneQueriesFunctionFunctionValues_withOrgApacheLuceneQueriesFunctionValueSource_(OrgApacheLuceneQueriesFunctionValuesourceSimpleBoolFunction_1 *self, OrgApacheLuceneQueriesFunctionValuesourceSimpleBoolFunction *outer$, OrgApacheLuceneQueriesFunctionFunctionValues *capture$0, OrgApacheLuceneQueriesFunctionValueSource *vs);

__attribute__((unused)) static OrgApacheLuceneQueriesFunctionValuesourceSimpleBoolFunction_1 *new_OrgApacheLuceneQueriesFunctionValuesourceSimpleBoolFunction_1_initWithOrgApacheLuceneQueriesFunctionValuesourceSimpleBoolFunction_withOrgApacheLuceneQueriesFunctionFunctionValues_withOrgApacheLuceneQueriesFunctionValueSource_(OrgApacheLuceneQueriesFunctionValuesourceSimpleBoolFunction *outer$, OrgApacheLuceneQueriesFunctionFunctionValues *capture$0, OrgApacheLuceneQueriesFunctionValueSource *vs) NS_RETURNS_RETAINED;

__attribute__((unused)) static OrgApacheLuceneQueriesFunctionValuesourceSimpleBoolFunction_1 *create_OrgApacheLuceneQueriesFunctionValuesourceSimpleBoolFunction_1_initWithOrgApacheLuceneQueriesFunctionValuesourceSimpleBoolFunction_withOrgApacheLuceneQueriesFunctionFunctionValues_withOrgApacheLuceneQueriesFunctionValueSource_(OrgApacheLuceneQueriesFunctionValuesourceSimpleBoolFunction *outer$, OrgApacheLuceneQueriesFunctionFunctionValues *capture$0, OrgApacheLuceneQueriesFunctionValueSource *vs);

@implementation OrgApacheLuceneQueriesFunctionValuesourceSimpleBoolFunction

- (instancetype)initWithOrgApacheLuceneQueriesFunctionValueSource:(OrgApacheLuceneQueriesFunctionValueSource *)source {
  OrgApacheLuceneQueriesFunctionValuesourceSimpleBoolFunction_initWithOrgApacheLuceneQueriesFunctionValueSource_(self, source);
  return self;
}

- (NSString *)name {
  // can't call an abstract method
  [self doesNotRecognizeSelector:_cmd];
  return 0;
}

- (jboolean)funcWithInt:(jint)doc
withOrgApacheLuceneQueriesFunctionFunctionValues:(OrgApacheLuceneQueriesFunctionFunctionValues *)vals {
  // can't call an abstract method
  [self doesNotRecognizeSelector:_cmd];
  return 0;
}

- (OrgApacheLuceneQueriesFunctionDocvaluesBoolDocValues *)getValuesWithJavaUtilMap:(id<JavaUtilMap>)context
                                         withOrgApacheLuceneIndexLeafReaderContext:(OrgApacheLuceneIndexLeafReaderContext *)readerContext {
  OrgApacheLuceneQueriesFunctionFunctionValues *vals = [((OrgApacheLuceneQueriesFunctionValueSource *) nil_chk(source_)) getValuesWithJavaUtilMap:context withOrgApacheLuceneIndexLeafReaderContext:readerContext];
  return create_OrgApacheLuceneQueriesFunctionValuesourceSimpleBoolFunction_1_initWithOrgApacheLuceneQueriesFunctionValuesourceSimpleBoolFunction_withOrgApacheLuceneQueriesFunctionFunctionValues_withOrgApacheLuceneQueriesFunctionValueSource_(self, vals, self);
}

- (NSString *)description__ {
  return JreStrcat("$C$C", [self name], '(', [((OrgApacheLuceneQueriesFunctionValueSource *) nil_chk(source_)) description__], ')');
}

- (NSUInteger)hash {
  return ((jint) [((OrgApacheLuceneQueriesFunctionValueSource *) nil_chk(source_)) hash]) + ((jint) [((NSString *) nil_chk([self name])) hash]);
}

- (jboolean)isEqual:(id)o {
  if (!JreObjectEqualsEquals([self java_getClass], [nil_chk(o) java_getClass])) return false;
  OrgApacheLuceneQueriesFunctionValuesourceSimpleBoolFunction *other = (OrgApacheLuceneQueriesFunctionValuesourceSimpleBoolFunction *) cast_chk(o, [OrgApacheLuceneQueriesFunctionValuesourceSimpleBoolFunction class]);
  return [((OrgApacheLuceneQueriesFunctionValueSource *) nil_chk(self->source_)) isEqual:other->source_];
}

- (void)createWeightWithJavaUtilMap:(id<JavaUtilMap>)context
withOrgApacheLuceneSearchIndexSearcher:(OrgApacheLuceneSearchIndexSearcher *)searcher {
  [((OrgApacheLuceneQueriesFunctionValueSource *) nil_chk(source_)) createWeightWithJavaUtilMap:context withOrgApacheLuceneSearchIndexSearcher:searcher];
}

- (void)dealloc {
  RELEASE_(source_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x1, -1, 0, -1, -1, -1, -1 },
    { NULL, "LNSString;", 0x404, -1, -1, -1, -1, -1, -1 },
    { NULL, "Z", 0x404, 1, 2, -1, -1, -1, -1 },
    { NULL, "LOrgApacheLuceneQueriesFunctionDocvaluesBoolDocValues;", 0x1, 3, 4, 5, -1, -1, -1 },
    { NULL, "LNSString;", 0x1, 6, -1, -1, -1, -1, -1 },
    { NULL, "I", 0x1, 7, -1, -1, -1, -1, -1 },
    { NULL, "Z", 0x1, 8, 9, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 10, 11, 5, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  #pragma clang diagnostic ignored "-Wundeclared-selector"
  methods[0].selector = @selector(initWithOrgApacheLuceneQueriesFunctionValueSource:);
  methods[1].selector = @selector(name);
  methods[2].selector = @selector(funcWithInt:withOrgApacheLuceneQueriesFunctionFunctionValues:);
  methods[3].selector = @selector(getValuesWithJavaUtilMap:withOrgApacheLuceneIndexLeafReaderContext:);
  methods[4].selector = @selector(description__);
  methods[5].selector = @selector(hash);
  methods[6].selector = @selector(isEqual:);
  methods[7].selector = @selector(createWeightWithJavaUtilMap:withOrgApacheLuceneSearchIndexSearcher:);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "source_", "LOrgApacheLuceneQueriesFunctionValueSource;", .constantValue.asLong = 0, 0x14, -1, -1, -1, -1 },
  };
  static const void *ptrTable[] = { "LOrgApacheLuceneQueriesFunctionValueSource;", "func", "ILOrgApacheLuceneQueriesFunctionFunctionValues;", "getValues", "LJavaUtilMap;LOrgApacheLuceneIndexLeafReaderContext;", "LJavaIoIOException;", "description", "hashCode", "equals", "LNSObject;", "createWeight", "LJavaUtilMap;LOrgApacheLuceneSearchIndexSearcher;" };
  static const J2ObjcClassInfo _OrgApacheLuceneQueriesFunctionValuesourceSimpleBoolFunction = { "SimpleBoolFunction", "org.apache.lucene.queries.function.valuesource", ptrTable, methods, fields, 7, 0x401, 8, 1, -1, -1, -1, -1, -1 };
  return &_OrgApacheLuceneQueriesFunctionValuesourceSimpleBoolFunction;
}

@end

void OrgApacheLuceneQueriesFunctionValuesourceSimpleBoolFunction_initWithOrgApacheLuceneQueriesFunctionValueSource_(OrgApacheLuceneQueriesFunctionValuesourceSimpleBoolFunction *self, OrgApacheLuceneQueriesFunctionValueSource *source) {
  OrgApacheLuceneQueriesFunctionValuesourceBoolFunction_init(self);
  JreStrongAssign(&self->source_, source);
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneQueriesFunctionValuesourceSimpleBoolFunction)

@implementation OrgApacheLuceneQueriesFunctionValuesourceSimpleBoolFunction_1

- (instancetype)initWithOrgApacheLuceneQueriesFunctionValuesourceSimpleBoolFunction:(OrgApacheLuceneQueriesFunctionValuesourceSimpleBoolFunction *)outer$
                                   withOrgApacheLuceneQueriesFunctionFunctionValues:(OrgApacheLuceneQueriesFunctionFunctionValues *)capture$0
                                      withOrgApacheLuceneQueriesFunctionValueSource:(OrgApacheLuceneQueriesFunctionValueSource *)vs {
  OrgApacheLuceneQueriesFunctionValuesourceSimpleBoolFunction_1_initWithOrgApacheLuceneQueriesFunctionValuesourceSimpleBoolFunction_withOrgApacheLuceneQueriesFunctionFunctionValues_withOrgApacheLuceneQueriesFunctionValueSource_(self, outer$, capture$0, vs);
  return self;
}

- (jboolean)boolValWithInt:(jint)doc {
  return [this$0_ funcWithInt:doc withOrgApacheLuceneQueriesFunctionFunctionValues:val$vals_];
}

- (NSString *)toStringWithInt:(jint)doc {
  return JreStrcat("$C$C", [this$0_ name], '(', [((OrgApacheLuceneQueriesFunctionFunctionValues *) nil_chk(val$vals_)) toStringWithInt:doc], ')');
}

- (void)dealloc {
  RELEASE_(this$0_);
  RELEASE_(val$vals_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x0, -1, 0, -1, -1, -1, -1 },
    { NULL, "Z", 0x1, 1, 2, -1, -1, -1, -1 },
    { NULL, "LNSString;", 0x1, 3, 2, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  #pragma clang diagnostic ignored "-Wundeclared-selector"
  methods[0].selector = @selector(initWithOrgApacheLuceneQueriesFunctionValuesourceSimpleBoolFunction:withOrgApacheLuceneQueriesFunctionFunctionValues:withOrgApacheLuceneQueriesFunctionValueSource:);
  methods[1].selector = @selector(boolValWithInt:);
  methods[2].selector = @selector(toStringWithInt:);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "this$0_", "LOrgApacheLuceneQueriesFunctionValuesourceSimpleBoolFunction;", .constantValue.asLong = 0, 0x1012, -1, -1, -1, -1 },
    { "val$vals_", "LOrgApacheLuceneQueriesFunctionFunctionValues;", .constantValue.asLong = 0, 0x1012, -1, -1, -1, -1 },
  };
  static const void *ptrTable[] = { "LOrgApacheLuceneQueriesFunctionValuesourceSimpleBoolFunction;LOrgApacheLuceneQueriesFunctionFunctionValues;LOrgApacheLuceneQueriesFunctionValueSource;", "boolVal", "I", "toString", "LOrgApacheLuceneQueriesFunctionValuesourceSimpleBoolFunction;", "getValuesWithJavaUtilMap:withOrgApacheLuceneIndexLeafReaderContext:" };
  static const J2ObjcClassInfo _OrgApacheLuceneQueriesFunctionValuesourceSimpleBoolFunction_1 = { "", "org.apache.lucene.queries.function.valuesource", ptrTable, methods, fields, 7, 0x8010, 3, 2, 4, -1, 5, -1, -1 };
  return &_OrgApacheLuceneQueriesFunctionValuesourceSimpleBoolFunction_1;
}

@end

void OrgApacheLuceneQueriesFunctionValuesourceSimpleBoolFunction_1_initWithOrgApacheLuceneQueriesFunctionValuesourceSimpleBoolFunction_withOrgApacheLuceneQueriesFunctionFunctionValues_withOrgApacheLuceneQueriesFunctionValueSource_(OrgApacheLuceneQueriesFunctionValuesourceSimpleBoolFunction_1 *self, OrgApacheLuceneQueriesFunctionValuesourceSimpleBoolFunction *outer$, OrgApacheLuceneQueriesFunctionFunctionValues *capture$0, OrgApacheLuceneQueriesFunctionValueSource *vs) {
  JreStrongAssign(&self->this$0_, outer$);
  JreStrongAssign(&self->val$vals_, capture$0);
  OrgApacheLuceneQueriesFunctionDocvaluesBoolDocValues_initWithOrgApacheLuceneQueriesFunctionValueSource_(self, vs);
}

OrgApacheLuceneQueriesFunctionValuesourceSimpleBoolFunction_1 *new_OrgApacheLuceneQueriesFunctionValuesourceSimpleBoolFunction_1_initWithOrgApacheLuceneQueriesFunctionValuesourceSimpleBoolFunction_withOrgApacheLuceneQueriesFunctionFunctionValues_withOrgApacheLuceneQueriesFunctionValueSource_(OrgApacheLuceneQueriesFunctionValuesourceSimpleBoolFunction *outer$, OrgApacheLuceneQueriesFunctionFunctionValues *capture$0, OrgApacheLuceneQueriesFunctionValueSource *vs) {
  J2OBJC_NEW_IMPL(OrgApacheLuceneQueriesFunctionValuesourceSimpleBoolFunction_1, initWithOrgApacheLuceneQueriesFunctionValuesourceSimpleBoolFunction_withOrgApacheLuceneQueriesFunctionFunctionValues_withOrgApacheLuceneQueriesFunctionValueSource_, outer$, capture$0, vs)
}

OrgApacheLuceneQueriesFunctionValuesourceSimpleBoolFunction_1 *create_OrgApacheLuceneQueriesFunctionValuesourceSimpleBoolFunction_1_initWithOrgApacheLuceneQueriesFunctionValuesourceSimpleBoolFunction_withOrgApacheLuceneQueriesFunctionFunctionValues_withOrgApacheLuceneQueriesFunctionValueSource_(OrgApacheLuceneQueriesFunctionValuesourceSimpleBoolFunction *outer$, OrgApacheLuceneQueriesFunctionFunctionValues *capture$0, OrgApacheLuceneQueriesFunctionValueSource *vs) {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneQueriesFunctionValuesourceSimpleBoolFunction_1, initWithOrgApacheLuceneQueriesFunctionValuesourceSimpleBoolFunction_withOrgApacheLuceneQueriesFunctionFunctionValues_withOrgApacheLuceneQueriesFunctionValueSource_, outer$, capture$0, vs)
}
