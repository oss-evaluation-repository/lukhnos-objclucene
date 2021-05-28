//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./analysis/common/src/java/org/apache/lucene/analysis/charfilter/HTMLStripCharFilterFactory.java
//

#include "J2ObjC_source.h"
#include "java/io/Reader.h"
#include "java/lang/IllegalArgumentException.h"
#include "java/util/Map.h"
#include "java/util/Set.h"
#include "java/util/regex/Pattern.h"
#include "org/apache/lucene/analysis/charfilter/HTMLStripCharFilter.h"
#include "org/apache/lucene/analysis/charfilter/HTMLStripCharFilterFactory.h"
#include "org/apache/lucene/analysis/util/CharFilterFactory.h"

#if __has_feature(objc_arc)
#error "org/apache/lucene/analysis/charfilter/HTMLStripCharFilterFactory must not be compiled with ARC (-fobjc-arc)"
#endif

J2OBJC_INITIALIZED_DEFN(OrgApacheLuceneAnalysisCharfilterHTMLStripCharFilterFactory)

JavaUtilRegexPattern *OrgApacheLuceneAnalysisCharfilterHTMLStripCharFilterFactory_TAG_NAME_PATTERN;

@implementation OrgApacheLuceneAnalysisCharfilterHTMLStripCharFilterFactory

+ (JavaUtilRegexPattern *)TAG_NAME_PATTERN {
  return OrgApacheLuceneAnalysisCharfilterHTMLStripCharFilterFactory_TAG_NAME_PATTERN;
}

- (instancetype)initWithJavaUtilMap:(id<JavaUtilMap>)args {
  OrgApacheLuceneAnalysisCharfilterHTMLStripCharFilterFactory_initWithJavaUtilMap_(self, args);
  return self;
}

- (OrgApacheLuceneAnalysisCharfilterHTMLStripCharFilter *)createWithJavaIoReader:(JavaIoReader *)input {
  OrgApacheLuceneAnalysisCharfilterHTMLStripCharFilter *charFilter;
  if (nil == escapedTags_) {
    charFilter = create_OrgApacheLuceneAnalysisCharfilterHTMLStripCharFilter_initWithJavaIoReader_(input);
  }
  else {
    charFilter = create_OrgApacheLuceneAnalysisCharfilterHTMLStripCharFilter_initWithJavaIoReader_withJavaUtilSet_(input, escapedTags_);
  }
  return charFilter;
}

- (void)dealloc {
  RELEASE_(escapedTags_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x1, -1, 0, -1, 1, -1, -1 },
    { NULL, "LOrgApacheLuceneAnalysisCharfilterHTMLStripCharFilter;", 0x1, 2, 3, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  #pragma clang diagnostic ignored "-Wundeclared-selector"
  methods[0].selector = @selector(initWithJavaUtilMap:);
  methods[1].selector = @selector(createWithJavaIoReader:);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "escapedTags_", "LJavaUtilSet;", .constantValue.asLong = 0, 0x10, -1, -1, 4, -1 },
    { "TAG_NAME_PATTERN", "LJavaUtilRegexPattern;", .constantValue.asLong = 0, 0x18, -1, 5, -1, -1 },
  };
  static const void *ptrTable[] = { "LJavaUtilMap;", "(Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;)V", "create", "LJavaIoReader;", "Ljava/util/Set<Ljava/lang/String;>;", &OrgApacheLuceneAnalysisCharfilterHTMLStripCharFilterFactory_TAG_NAME_PATTERN };
  static const J2ObjcClassInfo _OrgApacheLuceneAnalysisCharfilterHTMLStripCharFilterFactory = { "HTMLStripCharFilterFactory", "org.apache.lucene.analysis.charfilter", ptrTable, methods, fields, 7, 0x1, 2, 2, -1, -1, -1, -1, -1 };
  return &_OrgApacheLuceneAnalysisCharfilterHTMLStripCharFilterFactory;
}

+ (void)initialize {
  if (self == [OrgApacheLuceneAnalysisCharfilterHTMLStripCharFilterFactory class]) {
    JreStrongAssign(&OrgApacheLuceneAnalysisCharfilterHTMLStripCharFilterFactory_TAG_NAME_PATTERN, JavaUtilRegexPattern_compileWithNSString_(@"[^\\s,]+"));
    J2OBJC_SET_INITIALIZED(OrgApacheLuceneAnalysisCharfilterHTMLStripCharFilterFactory)
  }
}

@end

void OrgApacheLuceneAnalysisCharfilterHTMLStripCharFilterFactory_initWithJavaUtilMap_(OrgApacheLuceneAnalysisCharfilterHTMLStripCharFilterFactory *self, id<JavaUtilMap> args) {
  OrgApacheLuceneAnalysisUtilCharFilterFactory_initWithJavaUtilMap_(self, args);
  JreStrongAssign(&self->escapedTags_, [self getSetWithJavaUtilMap:args withNSString:@"escapedTags"]);
  if (![((id<JavaUtilMap>) nil_chk(args)) isEmpty]) {
    @throw create_JavaLangIllegalArgumentException_initWithNSString_(JreStrcat("$@", @"Unknown parameters: ", args));
  }
}

OrgApacheLuceneAnalysisCharfilterHTMLStripCharFilterFactory *new_OrgApacheLuceneAnalysisCharfilterHTMLStripCharFilterFactory_initWithJavaUtilMap_(id<JavaUtilMap> args) {
  J2OBJC_NEW_IMPL(OrgApacheLuceneAnalysisCharfilterHTMLStripCharFilterFactory, initWithJavaUtilMap_, args)
}

OrgApacheLuceneAnalysisCharfilterHTMLStripCharFilterFactory *create_OrgApacheLuceneAnalysisCharfilterHTMLStripCharFilterFactory_initWithJavaUtilMap_(id<JavaUtilMap> args) {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneAnalysisCharfilterHTMLStripCharFilterFactory, initWithJavaUtilMap_, args)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneAnalysisCharfilterHTMLStripCharFilterFactory)
