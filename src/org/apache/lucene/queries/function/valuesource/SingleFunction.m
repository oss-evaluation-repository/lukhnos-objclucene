//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./queries/src/java/org/apache/lucene/queries/function/valuesource/SingleFunction.java
//

#include "IOSClass.h"
#include "J2ObjC_source.h"
#include "java/util/Map.h"
#include "org/apache/lucene/queries/function/ValueSource.h"
#include "org/apache/lucene/queries/function/valuesource/SingleFunction.h"
#include "org/apache/lucene/search/IndexSearcher.h"

#if __has_feature(objc_arc)
#error "org/apache/lucene/queries/function/valuesource/SingleFunction must not be compiled with ARC (-fobjc-arc)"
#endif

@implementation OrgApacheLuceneQueriesFunctionValuesourceSingleFunction

- (instancetype)initWithOrgApacheLuceneQueriesFunctionValueSource:(OrgApacheLuceneQueriesFunctionValueSource *)source {
  OrgApacheLuceneQueriesFunctionValuesourceSingleFunction_initWithOrgApacheLuceneQueriesFunctionValueSource_(self, source);
  return self;
}

- (NSString *)name {
  // can't call an abstract method
  [self doesNotRecognizeSelector:_cmd];
  return 0;
}

- (NSString *)description__ {
  return JreStrcat("$C$C", [self name], '(', [((OrgApacheLuceneQueriesFunctionValueSource *) nil_chk(source_)) description__], ')');
}

- (NSUInteger)hash {
  return ((jint) [((OrgApacheLuceneQueriesFunctionValueSource *) nil_chk(source_)) hash]) + ((jint) [((NSString *) nil_chk([self name])) hash]);
}

- (jboolean)isEqual:(id)o {
  if (!JreObjectEqualsEquals([self java_getClass], [nil_chk(o) java_getClass])) return false;
  OrgApacheLuceneQueriesFunctionValuesourceSingleFunction *other = (OrgApacheLuceneQueriesFunctionValuesourceSingleFunction *) cast_chk(o, [OrgApacheLuceneQueriesFunctionValuesourceSingleFunction class]);
  return [((NSString *) nil_chk([self name])) isEqual:[other name]] && [((OrgApacheLuceneQueriesFunctionValueSource *) nil_chk(self->source_)) isEqual:other->source_];
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
    { NULL, "LNSString;", 0x1, 1, -1, -1, -1, -1, -1 },
    { NULL, "I", 0x1, 2, -1, -1, -1, -1, -1 },
    { NULL, "Z", 0x1, 3, 4, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 5, 6, 7, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  #pragma clang diagnostic ignored "-Wundeclared-selector"
  methods[0].selector = @selector(initWithOrgApacheLuceneQueriesFunctionValueSource:);
  methods[1].selector = @selector(name);
  methods[2].selector = @selector(description__);
  methods[3].selector = @selector(hash);
  methods[4].selector = @selector(isEqual:);
  methods[5].selector = @selector(createWeightWithJavaUtilMap:withOrgApacheLuceneSearchIndexSearcher:);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "source_", "LOrgApacheLuceneQueriesFunctionValueSource;", .constantValue.asLong = 0, 0x14, -1, -1, -1, -1 },
  };
  static const void *ptrTable[] = { "LOrgApacheLuceneQueriesFunctionValueSource;", "description", "hashCode", "equals", "LNSObject;", "createWeight", "LJavaUtilMap;LOrgApacheLuceneSearchIndexSearcher;", "LJavaIoIOException;" };
  static const J2ObjcClassInfo _OrgApacheLuceneQueriesFunctionValuesourceSingleFunction = { "SingleFunction", "org.apache.lucene.queries.function.valuesource", ptrTable, methods, fields, 7, 0x401, 6, 1, -1, -1, -1, -1, -1 };
  return &_OrgApacheLuceneQueriesFunctionValuesourceSingleFunction;
}

@end

void OrgApacheLuceneQueriesFunctionValuesourceSingleFunction_initWithOrgApacheLuceneQueriesFunctionValueSource_(OrgApacheLuceneQueriesFunctionValuesourceSingleFunction *self, OrgApacheLuceneQueriesFunctionValueSource *source) {
  OrgApacheLuceneQueriesFunctionValueSource_init(self);
  JreStrongAssign(&self->source_, source);
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneQueriesFunctionValuesourceSingleFunction)
