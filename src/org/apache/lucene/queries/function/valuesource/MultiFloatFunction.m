//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./queries/src/java/org/apache/lucene/queries/function/valuesource/MultiFloatFunction.java
//

#include "IOSClass.h"
#include "IOSObjectArray.h"
#include "J2ObjC_source.h"
#include "java/lang/StringBuilder.h"
#include "java/util/Arrays.h"
#include "java/util/Map.h"
#include "org/apache/lucene/index/LeafReaderContext.h"
#include "org/apache/lucene/queries/function/FunctionValues.h"
#include "org/apache/lucene/queries/function/ValueSource.h"
#include "org/apache/lucene/queries/function/docvalues/FloatDocValues.h"
#include "org/apache/lucene/queries/function/valuesource/MultiFloatFunction.h"
#include "org/apache/lucene/queries/function/valuesource/MultiFunction.h"
#include "org/apache/lucene/search/IndexSearcher.h"

#if __has_feature(objc_arc)
#error "org/apache/lucene/queries/function/valuesource/MultiFloatFunction must not be compiled with ARC (-fobjc-arc)"
#endif

@interface OrgApacheLuceneQueriesFunctionValuesourceMultiFloatFunction_1 : OrgApacheLuceneQueriesFunctionDocvaluesFloatDocValues {
 @public
  OrgApacheLuceneQueriesFunctionValuesourceMultiFloatFunction *this$0_;
  IOSObjectArray *val$valsArr_;
}

- (instancetype)initWithOrgApacheLuceneQueriesFunctionValuesourceMultiFloatFunction:(OrgApacheLuceneQueriesFunctionValuesourceMultiFloatFunction *)outer$
                              withOrgApacheLuceneQueriesFunctionFunctionValuesArray:(IOSObjectArray *)capture$0
                                      withOrgApacheLuceneQueriesFunctionValueSource:(OrgApacheLuceneQueriesFunctionValueSource *)vs;

- (jfloat)floatValWithInt:(jint)doc;

- (jboolean)existsWithInt:(jint)doc;

- (NSString *)toStringWithInt:(jint)doc;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneQueriesFunctionValuesourceMultiFloatFunction_1)

__attribute__((unused)) static void OrgApacheLuceneQueriesFunctionValuesourceMultiFloatFunction_1_initWithOrgApacheLuceneQueriesFunctionValuesourceMultiFloatFunction_withOrgApacheLuceneQueriesFunctionFunctionValuesArray_withOrgApacheLuceneQueriesFunctionValueSource_(OrgApacheLuceneQueriesFunctionValuesourceMultiFloatFunction_1 *self, OrgApacheLuceneQueriesFunctionValuesourceMultiFloatFunction *outer$, IOSObjectArray *capture$0, OrgApacheLuceneQueriesFunctionValueSource *vs);

__attribute__((unused)) static OrgApacheLuceneQueriesFunctionValuesourceMultiFloatFunction_1 *new_OrgApacheLuceneQueriesFunctionValuesourceMultiFloatFunction_1_initWithOrgApacheLuceneQueriesFunctionValuesourceMultiFloatFunction_withOrgApacheLuceneQueriesFunctionFunctionValuesArray_withOrgApacheLuceneQueriesFunctionValueSource_(OrgApacheLuceneQueriesFunctionValuesourceMultiFloatFunction *outer$, IOSObjectArray *capture$0, OrgApacheLuceneQueriesFunctionValueSource *vs) NS_RETURNS_RETAINED;

__attribute__((unused)) static OrgApacheLuceneQueriesFunctionValuesourceMultiFloatFunction_1 *create_OrgApacheLuceneQueriesFunctionValuesourceMultiFloatFunction_1_initWithOrgApacheLuceneQueriesFunctionValuesourceMultiFloatFunction_withOrgApacheLuceneQueriesFunctionFunctionValuesArray_withOrgApacheLuceneQueriesFunctionValueSource_(OrgApacheLuceneQueriesFunctionValuesourceMultiFloatFunction *outer$, IOSObjectArray *capture$0, OrgApacheLuceneQueriesFunctionValueSource *vs);

@implementation OrgApacheLuceneQueriesFunctionValuesourceMultiFloatFunction

- (instancetype)initWithOrgApacheLuceneQueriesFunctionValueSourceArray:(IOSObjectArray *)sources {
  OrgApacheLuceneQueriesFunctionValuesourceMultiFloatFunction_initWithOrgApacheLuceneQueriesFunctionValueSourceArray_(self, sources);
  return self;
}

- (NSString *)name {
  // can't call an abstract method
  [self doesNotRecognizeSelector:_cmd];
  return 0;
}

- (jfloat)funcWithInt:(jint)doc
withOrgApacheLuceneQueriesFunctionFunctionValuesArray:(IOSObjectArray *)valsArr {
  // can't call an abstract method
  [self doesNotRecognizeSelector:_cmd];
  return 0;
}

- (jboolean)existsWithInt:(jint)doc
withOrgApacheLuceneQueriesFunctionFunctionValuesArray:(IOSObjectArray *)valsArr {
  return OrgApacheLuceneQueriesFunctionValuesourceMultiFunction_allExistsWithInt_withOrgApacheLuceneQueriesFunctionFunctionValuesArray_(doc, valsArr);
}

- (NSString *)description__ {
  JavaLangStringBuilder *sb = create_JavaLangStringBuilder_init();
  [((JavaLangStringBuilder *) nil_chk([sb appendWithNSString:[self name]])) appendWithChar:'('];
  jboolean firstTime = true;
  {
    IOSObjectArray *a__ = sources_;
    OrgApacheLuceneQueriesFunctionValueSource * const *b__ = ((IOSObjectArray *) nil_chk(a__))->buffer_;
    OrgApacheLuceneQueriesFunctionValueSource * const *e__ = b__ + a__->size_;
    while (b__ < e__) {
      OrgApacheLuceneQueriesFunctionValueSource *source = *b__++;
      if (firstTime) {
        firstTime = false;
      }
      else {
        [sb appendWithChar:','];
      }
      [sb appendWithId:source];
    }
  }
  [sb appendWithChar:')'];
  return [sb description];
}

- (OrgApacheLuceneQueriesFunctionFunctionValues *)getValuesWithJavaUtilMap:(id<JavaUtilMap>)context
                                 withOrgApacheLuceneIndexLeafReaderContext:(OrgApacheLuceneIndexLeafReaderContext *)readerContext {
  IOSObjectArray *valsArr = [IOSObjectArray arrayWithLength:((IOSObjectArray *) nil_chk(sources_))->size_ type:OrgApacheLuceneQueriesFunctionFunctionValues_class_()];
  for (jint i = 0; i < sources_->size_; i++) {
    IOSObjectArray_Set(valsArr, i, [((OrgApacheLuceneQueriesFunctionValueSource *) nil_chk(IOSObjectArray_Get(sources_, i))) getValuesWithJavaUtilMap:context withOrgApacheLuceneIndexLeafReaderContext:readerContext]);
  }
  return create_OrgApacheLuceneQueriesFunctionValuesourceMultiFloatFunction_1_initWithOrgApacheLuceneQueriesFunctionValuesourceMultiFloatFunction_withOrgApacheLuceneQueriesFunctionFunctionValuesArray_withOrgApacheLuceneQueriesFunctionValueSource_(self, valsArr, self);
}

- (void)createWeightWithJavaUtilMap:(id<JavaUtilMap>)context
withOrgApacheLuceneSearchIndexSearcher:(OrgApacheLuceneSearchIndexSearcher *)searcher {
  {
    IOSObjectArray *a__ = sources_;
    OrgApacheLuceneQueriesFunctionValueSource * const *b__ = ((IOSObjectArray *) nil_chk(a__))->buffer_;
    OrgApacheLuceneQueriesFunctionValueSource * const *e__ = b__ + a__->size_;
    while (b__ < e__) {
      OrgApacheLuceneQueriesFunctionValueSource *source = *b__++;
      [((OrgApacheLuceneQueriesFunctionValueSource *) nil_chk(source)) createWeightWithJavaUtilMap:context withOrgApacheLuceneSearchIndexSearcher:searcher];
    }
  }
}

- (NSUInteger)hash {
  return JavaUtilArrays_hashCodeWithNSObjectArray_(sources_) + ((jint) [((NSString *) nil_chk([self name])) hash]);
}

- (jboolean)isEqual:(id)o {
  if (!JreObjectEqualsEquals([self java_getClass], [nil_chk(o) java_getClass])) return false;
  OrgApacheLuceneQueriesFunctionValuesourceMultiFloatFunction *other = (OrgApacheLuceneQueriesFunctionValuesourceMultiFloatFunction *) cast_chk(o, [OrgApacheLuceneQueriesFunctionValuesourceMultiFloatFunction class]);
  return [((NSString *) nil_chk([self name])) isEqual:[other name]] && JavaUtilArrays_equalsWithNSObjectArray_withNSObjectArray_(self->sources_, other->sources_);
}

- (void)dealloc {
  RELEASE_(sources_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x1, -1, 0, -1, -1, -1, -1 },
    { NULL, "LNSString;", 0x404, -1, -1, -1, -1, -1, -1 },
    { NULL, "F", 0x404, 1, 2, -1, -1, -1, -1 },
    { NULL, "Z", 0x4, 3, 2, -1, -1, -1, -1 },
    { NULL, "LNSString;", 0x1, 4, -1, -1, -1, -1, -1 },
    { NULL, "LOrgApacheLuceneQueriesFunctionFunctionValues;", 0x1, 5, 6, 7, -1, -1, -1 },
    { NULL, "V", 0x1, 8, 9, 7, -1, -1, -1 },
    { NULL, "I", 0x1, 10, -1, -1, -1, -1, -1 },
    { NULL, "Z", 0x1, 11, 12, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  #pragma clang diagnostic ignored "-Wundeclared-selector"
  methods[0].selector = @selector(initWithOrgApacheLuceneQueriesFunctionValueSourceArray:);
  methods[1].selector = @selector(name);
  methods[2].selector = @selector(funcWithInt:withOrgApacheLuceneQueriesFunctionFunctionValuesArray:);
  methods[3].selector = @selector(existsWithInt:withOrgApacheLuceneQueriesFunctionFunctionValuesArray:);
  methods[4].selector = @selector(description__);
  methods[5].selector = @selector(getValuesWithJavaUtilMap:withOrgApacheLuceneIndexLeafReaderContext:);
  methods[6].selector = @selector(createWeightWithJavaUtilMap:withOrgApacheLuceneSearchIndexSearcher:);
  methods[7].selector = @selector(hash);
  methods[8].selector = @selector(isEqual:);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "sources_", "[LOrgApacheLuceneQueriesFunctionValueSource;", .constantValue.asLong = 0, 0x14, -1, -1, -1, -1 },
  };
  static const void *ptrTable[] = { "[LOrgApacheLuceneQueriesFunctionValueSource;", "func", "I[LOrgApacheLuceneQueriesFunctionFunctionValues;", "exists", "description", "getValues", "LJavaUtilMap;LOrgApacheLuceneIndexLeafReaderContext;", "LJavaIoIOException;", "createWeight", "LJavaUtilMap;LOrgApacheLuceneSearchIndexSearcher;", "hashCode", "equals", "LNSObject;" };
  static const J2ObjcClassInfo _OrgApacheLuceneQueriesFunctionValuesourceMultiFloatFunction = { "MultiFloatFunction", "org.apache.lucene.queries.function.valuesource", ptrTable, methods, fields, 7, 0x401, 9, 1, -1, -1, -1, -1, -1 };
  return &_OrgApacheLuceneQueriesFunctionValuesourceMultiFloatFunction;
}

@end

void OrgApacheLuceneQueriesFunctionValuesourceMultiFloatFunction_initWithOrgApacheLuceneQueriesFunctionValueSourceArray_(OrgApacheLuceneQueriesFunctionValuesourceMultiFloatFunction *self, IOSObjectArray *sources) {
  OrgApacheLuceneQueriesFunctionValueSource_init(self);
  JreStrongAssign(&self->sources_, sources);
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneQueriesFunctionValuesourceMultiFloatFunction)

@implementation OrgApacheLuceneQueriesFunctionValuesourceMultiFloatFunction_1

- (instancetype)initWithOrgApacheLuceneQueriesFunctionValuesourceMultiFloatFunction:(OrgApacheLuceneQueriesFunctionValuesourceMultiFloatFunction *)outer$
                              withOrgApacheLuceneQueriesFunctionFunctionValuesArray:(IOSObjectArray *)capture$0
                                      withOrgApacheLuceneQueriesFunctionValueSource:(OrgApacheLuceneQueriesFunctionValueSource *)vs {
  OrgApacheLuceneQueriesFunctionValuesourceMultiFloatFunction_1_initWithOrgApacheLuceneQueriesFunctionValuesourceMultiFloatFunction_withOrgApacheLuceneQueriesFunctionFunctionValuesArray_withOrgApacheLuceneQueriesFunctionValueSource_(self, outer$, capture$0, vs);
  return self;
}

- (jfloat)floatValWithInt:(jint)doc {
  return [this$0_ funcWithInt:doc withOrgApacheLuceneQueriesFunctionFunctionValuesArray:val$valsArr_];
}

- (jboolean)existsWithInt:(jint)doc {
  return [this$0_ existsWithInt:doc withOrgApacheLuceneQueriesFunctionFunctionValuesArray:val$valsArr_];
}

- (NSString *)toStringWithInt:(jint)doc {
  return OrgApacheLuceneQueriesFunctionValuesourceMultiFunction_toStringWithNSString_withOrgApacheLuceneQueriesFunctionFunctionValuesArray_withInt_([this$0_ name], val$valsArr_, doc);
}

- (void)dealloc {
  RELEASE_(this$0_);
  RELEASE_(val$valsArr_);
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
  methods[0].selector = @selector(initWithOrgApacheLuceneQueriesFunctionValuesourceMultiFloatFunction:withOrgApacheLuceneQueriesFunctionFunctionValuesArray:withOrgApacheLuceneQueriesFunctionValueSource:);
  methods[1].selector = @selector(floatValWithInt:);
  methods[2].selector = @selector(existsWithInt:);
  methods[3].selector = @selector(toStringWithInt:);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "this$0_", "LOrgApacheLuceneQueriesFunctionValuesourceMultiFloatFunction;", .constantValue.asLong = 0, 0x1012, -1, -1, -1, -1 },
    { "val$valsArr_", "[LOrgApacheLuceneQueriesFunctionFunctionValues;", .constantValue.asLong = 0, 0x1012, -1, -1, -1, -1 },
  };
  static const void *ptrTable[] = { "LOrgApacheLuceneQueriesFunctionValuesourceMultiFloatFunction;[LOrgApacheLuceneQueriesFunctionFunctionValues;LOrgApacheLuceneQueriesFunctionValueSource;", "floatVal", "I", "exists", "toString", "LOrgApacheLuceneQueriesFunctionValuesourceMultiFloatFunction;", "getValuesWithJavaUtilMap:withOrgApacheLuceneIndexLeafReaderContext:" };
  static const J2ObjcClassInfo _OrgApacheLuceneQueriesFunctionValuesourceMultiFloatFunction_1 = { "", "org.apache.lucene.queries.function.valuesource", ptrTable, methods, fields, 7, 0x8010, 4, 2, 5, -1, 6, -1, -1 };
  return &_OrgApacheLuceneQueriesFunctionValuesourceMultiFloatFunction_1;
}

@end

void OrgApacheLuceneQueriesFunctionValuesourceMultiFloatFunction_1_initWithOrgApacheLuceneQueriesFunctionValuesourceMultiFloatFunction_withOrgApacheLuceneQueriesFunctionFunctionValuesArray_withOrgApacheLuceneQueriesFunctionValueSource_(OrgApacheLuceneQueriesFunctionValuesourceMultiFloatFunction_1 *self, OrgApacheLuceneQueriesFunctionValuesourceMultiFloatFunction *outer$, IOSObjectArray *capture$0, OrgApacheLuceneQueriesFunctionValueSource *vs) {
  JreStrongAssign(&self->this$0_, outer$);
  JreStrongAssign(&self->val$valsArr_, capture$0);
  OrgApacheLuceneQueriesFunctionDocvaluesFloatDocValues_initWithOrgApacheLuceneQueriesFunctionValueSource_(self, vs);
}

OrgApacheLuceneQueriesFunctionValuesourceMultiFloatFunction_1 *new_OrgApacheLuceneQueriesFunctionValuesourceMultiFloatFunction_1_initWithOrgApacheLuceneQueriesFunctionValuesourceMultiFloatFunction_withOrgApacheLuceneQueriesFunctionFunctionValuesArray_withOrgApacheLuceneQueriesFunctionValueSource_(OrgApacheLuceneQueriesFunctionValuesourceMultiFloatFunction *outer$, IOSObjectArray *capture$0, OrgApacheLuceneQueriesFunctionValueSource *vs) {
  J2OBJC_NEW_IMPL(OrgApacheLuceneQueriesFunctionValuesourceMultiFloatFunction_1, initWithOrgApacheLuceneQueriesFunctionValuesourceMultiFloatFunction_withOrgApacheLuceneQueriesFunctionFunctionValuesArray_withOrgApacheLuceneQueriesFunctionValueSource_, outer$, capture$0, vs)
}

OrgApacheLuceneQueriesFunctionValuesourceMultiFloatFunction_1 *create_OrgApacheLuceneQueriesFunctionValuesourceMultiFloatFunction_1_initWithOrgApacheLuceneQueriesFunctionValuesourceMultiFloatFunction_withOrgApacheLuceneQueriesFunctionFunctionValuesArray_withOrgApacheLuceneQueriesFunctionValueSource_(OrgApacheLuceneQueriesFunctionValuesourceMultiFloatFunction *outer$, IOSObjectArray *capture$0, OrgApacheLuceneQueriesFunctionValueSource *vs) {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneQueriesFunctionValuesourceMultiFloatFunction_1, initWithOrgApacheLuceneQueriesFunctionValuesourceMultiFloatFunction_withOrgApacheLuceneQueriesFunctionFunctionValuesArray_withOrgApacheLuceneQueriesFunctionValueSource_, outer$, capture$0, vs)
}
