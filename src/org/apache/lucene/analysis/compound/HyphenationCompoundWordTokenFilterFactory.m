//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./analysis/common/src/java/org/apache/lucene/analysis/compound/HyphenationCompoundWordTokenFilterFactory.java
//

#include "IOSClass.h"
#include "IOSObjectArray.h"
#include "J2ObjC_source.h"
#include "java/io/Closeable.h"
#include "java/io/InputStream.h"
#include "java/lang/IllegalArgumentException.h"
#include "java/util/Map.h"
#include "org/apache/lucene/analysis/TokenFilter.h"
#include "org/apache/lucene/analysis/TokenStream.h"
#include "org/apache/lucene/analysis/compound/CompoundWordTokenFilterBase.h"
#include "org/apache/lucene/analysis/compound/HyphenationCompoundWordTokenFilter.h"
#include "org/apache/lucene/analysis/compound/HyphenationCompoundWordTokenFilterFactory.h"
#include "org/apache/lucene/analysis/compound/Lucene43HyphenationCompoundWordTokenFilter.h"
#include "org/apache/lucene/analysis/compound/hyphenation/HyphenationTree.h"
#include "org/apache/lucene/analysis/util/CharArraySet.h"
#include "org/apache/lucene/analysis/util/ResourceLoader.h"
#include "org/apache/lucene/analysis/util/TokenFilterFactory.h"
#include "org/apache/lucene/util/IOUtils.h"
#include "org/apache/lucene/util/Version.h"
#include "org/xml/sax/InputSource.h"

#if __has_feature(objc_arc)
#error "org/apache/lucene/analysis/compound/HyphenationCompoundWordTokenFilterFactory must not be compiled with ARC (-fobjc-arc)"
#endif

@interface OrgApacheLuceneAnalysisCompoundHyphenationCompoundWordTokenFilterFactory () {
 @public
  OrgApacheLuceneAnalysisUtilCharArraySet *dictionary_;
  OrgApacheLuceneAnalysisCompoundHyphenationHyphenationTree *hyphenator_;
  NSString *dictFile_;
  NSString *hypFile_;
  NSString *encoding_;
  jint minWordSize_;
  jint minSubwordSize_;
  jint maxSubwordSize_;
  jboolean onlyLongestMatch_;
}

@end

J2OBJC_FIELD_SETTER(OrgApacheLuceneAnalysisCompoundHyphenationCompoundWordTokenFilterFactory, dictionary_, OrgApacheLuceneAnalysisUtilCharArraySet *)
J2OBJC_FIELD_SETTER(OrgApacheLuceneAnalysisCompoundHyphenationCompoundWordTokenFilterFactory, hyphenator_, OrgApacheLuceneAnalysisCompoundHyphenationHyphenationTree *)
J2OBJC_FIELD_SETTER(OrgApacheLuceneAnalysisCompoundHyphenationCompoundWordTokenFilterFactory, dictFile_, NSString *)
J2OBJC_FIELD_SETTER(OrgApacheLuceneAnalysisCompoundHyphenationCompoundWordTokenFilterFactory, hypFile_, NSString *)
J2OBJC_FIELD_SETTER(OrgApacheLuceneAnalysisCompoundHyphenationCompoundWordTokenFilterFactory, encoding_, NSString *)

@implementation OrgApacheLuceneAnalysisCompoundHyphenationCompoundWordTokenFilterFactory

- (instancetype)initWithJavaUtilMap:(id<JavaUtilMap>)args {
  OrgApacheLuceneAnalysisCompoundHyphenationCompoundWordTokenFilterFactory_initWithJavaUtilMap_(self, args);
  return self;
}

- (void)informWithOrgApacheLuceneAnalysisUtilResourceLoader:(id<OrgApacheLuceneAnalysisUtilResourceLoader>)loader {
  JavaIoInputStream *stream = nil;
  @try {
    if (dictFile_ != nil) JreStrongAssign(&dictionary_, [self getWordSetWithOrgApacheLuceneAnalysisUtilResourceLoader:loader withNSString:dictFile_ withBoolean:false]);
    stream = [((id<OrgApacheLuceneAnalysisUtilResourceLoader>) nil_chk(loader)) openResourceWithNSString:hypFile_];
    OrgXmlSaxInputSource *is = create_OrgXmlSaxInputSource_initWithJavaIoInputStream_(stream);
    [is setEncodingWithNSString:encoding_];
    [is setSystemIdWithNSString:hypFile_];
    if ([((OrgApacheLuceneUtilVersion *) nil_chk(luceneMatchVersion_)) onOrAfterWithOrgApacheLuceneUtilVersion:JreLoadStatic(OrgApacheLuceneUtilVersion, LUCENE_4_4_0)]) {
      JreStrongAssign(&hyphenator_, OrgApacheLuceneAnalysisCompoundHyphenationCompoundWordTokenFilter_getHyphenationTreeWithOrgXmlSaxInputSource_(is));
    }
    else {
      JreStrongAssign(&hyphenator_, OrgApacheLuceneAnalysisCompoundLucene43HyphenationCompoundWordTokenFilter_getHyphenationTreeWithOrgXmlSaxInputSource_(is));
    }
  }
  @finally {
    OrgApacheLuceneUtilIOUtils_closeWhileHandlingExceptionWithJavaIoCloseableArray_([IOSObjectArray arrayWithObjects:(id[]){ stream } count:1 type:JavaIoCloseable_class_()]);
  }
}

- (OrgApacheLuceneAnalysisTokenFilter *)createWithOrgApacheLuceneAnalysisTokenStream:(OrgApacheLuceneAnalysisTokenStream *)input {
  if ([((OrgApacheLuceneUtilVersion *) nil_chk(luceneMatchVersion_)) onOrAfterWithOrgApacheLuceneUtilVersion:JreLoadStatic(OrgApacheLuceneUtilVersion, LUCENE_4_4_0)]) {
    return create_OrgApacheLuceneAnalysisCompoundHyphenationCompoundWordTokenFilter_initWithOrgApacheLuceneAnalysisTokenStream_withOrgApacheLuceneAnalysisCompoundHyphenationHyphenationTree_withOrgApacheLuceneAnalysisUtilCharArraySet_withInt_withInt_withInt_withBoolean_(input, hyphenator_, dictionary_, minWordSize_, minSubwordSize_, maxSubwordSize_, onlyLongestMatch_);
  }
  return create_OrgApacheLuceneAnalysisCompoundLucene43HyphenationCompoundWordTokenFilter_initWithOrgApacheLuceneAnalysisTokenStream_withOrgApacheLuceneAnalysisCompoundHyphenationHyphenationTree_withOrgApacheLuceneAnalysisUtilCharArraySet_withInt_withInt_withInt_withBoolean_(input, hyphenator_, dictionary_, minWordSize_, minSubwordSize_, maxSubwordSize_, onlyLongestMatch_);
}

- (void)dealloc {
  RELEASE_(dictionary_);
  RELEASE_(hyphenator_);
  RELEASE_(dictFile_);
  RELEASE_(hypFile_);
  RELEASE_(encoding_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x1, -1, 0, -1, 1, -1, -1 },
    { NULL, "V", 0x1, 2, 3, 4, -1, -1, -1 },
    { NULL, "LOrgApacheLuceneAnalysisTokenFilter;", 0x1, 5, 6, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  #pragma clang diagnostic ignored "-Wundeclared-selector"
  methods[0].selector = @selector(initWithJavaUtilMap:);
  methods[1].selector = @selector(informWithOrgApacheLuceneAnalysisUtilResourceLoader:);
  methods[2].selector = @selector(createWithOrgApacheLuceneAnalysisTokenStream:);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "dictionary_", "LOrgApacheLuceneAnalysisUtilCharArraySet;", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
    { "hyphenator_", "LOrgApacheLuceneAnalysisCompoundHyphenationHyphenationTree;", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
    { "dictFile_", "LNSString;", .constantValue.asLong = 0, 0x12, -1, -1, -1, -1 },
    { "hypFile_", "LNSString;", .constantValue.asLong = 0, 0x12, -1, -1, -1, -1 },
    { "encoding_", "LNSString;", .constantValue.asLong = 0, 0x12, -1, -1, -1, -1 },
    { "minWordSize_", "I", .constantValue.asLong = 0, 0x12, -1, -1, -1, -1 },
    { "minSubwordSize_", "I", .constantValue.asLong = 0, 0x12, -1, -1, -1, -1 },
    { "maxSubwordSize_", "I", .constantValue.asLong = 0, 0x12, -1, -1, -1, -1 },
    { "onlyLongestMatch_", "Z", .constantValue.asLong = 0, 0x12, -1, -1, -1, -1 },
  };
  static const void *ptrTable[] = { "LJavaUtilMap;", "(Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;)V", "inform", "LOrgApacheLuceneAnalysisUtilResourceLoader;", "LJavaIoIOException;", "create", "LOrgApacheLuceneAnalysisTokenStream;" };
  static const J2ObjcClassInfo _OrgApacheLuceneAnalysisCompoundHyphenationCompoundWordTokenFilterFactory = { "HyphenationCompoundWordTokenFilterFactory", "org.apache.lucene.analysis.compound", ptrTable, methods, fields, 7, 0x1, 3, 9, -1, -1, -1, -1, -1 };
  return &_OrgApacheLuceneAnalysisCompoundHyphenationCompoundWordTokenFilterFactory;
}

@end

void OrgApacheLuceneAnalysisCompoundHyphenationCompoundWordTokenFilterFactory_initWithJavaUtilMap_(OrgApacheLuceneAnalysisCompoundHyphenationCompoundWordTokenFilterFactory *self, id<JavaUtilMap> args) {
  OrgApacheLuceneAnalysisUtilTokenFilterFactory_initWithJavaUtilMap_(self, args);
  JreStrongAssign(&self->dictFile_, [self getWithJavaUtilMap:args withNSString:@"dictionary"]);
  JreStrongAssign(&self->encoding_, [self getWithJavaUtilMap:args withNSString:@"encoding"]);
  JreStrongAssign(&self->hypFile_, [self requireWithJavaUtilMap:args withNSString:@"hyphenator"]);
  self->minWordSize_ = [self getIntWithJavaUtilMap:args withNSString:@"minWordSize" withInt:OrgApacheLuceneAnalysisCompoundCompoundWordTokenFilterBase_DEFAULT_MIN_WORD_SIZE];
  self->minSubwordSize_ = [self getIntWithJavaUtilMap:args withNSString:@"minSubwordSize" withInt:OrgApacheLuceneAnalysisCompoundCompoundWordTokenFilterBase_DEFAULT_MIN_SUBWORD_SIZE];
  self->maxSubwordSize_ = [self getIntWithJavaUtilMap:args withNSString:@"maxSubwordSize" withInt:OrgApacheLuceneAnalysisCompoundCompoundWordTokenFilterBase_DEFAULT_MAX_SUBWORD_SIZE];
  self->onlyLongestMatch_ = [self getBooleanWithJavaUtilMap:args withNSString:@"onlyLongestMatch" withBoolean:false];
  if (![((id<JavaUtilMap>) nil_chk(args)) isEmpty]) {
    @throw create_JavaLangIllegalArgumentException_initWithNSString_(JreStrcat("$@", @"Unknown parameters: ", args));
  }
}

OrgApacheLuceneAnalysisCompoundHyphenationCompoundWordTokenFilterFactory *new_OrgApacheLuceneAnalysisCompoundHyphenationCompoundWordTokenFilterFactory_initWithJavaUtilMap_(id<JavaUtilMap> args) {
  J2OBJC_NEW_IMPL(OrgApacheLuceneAnalysisCompoundHyphenationCompoundWordTokenFilterFactory, initWithJavaUtilMap_, args)
}

OrgApacheLuceneAnalysisCompoundHyphenationCompoundWordTokenFilterFactory *create_OrgApacheLuceneAnalysisCompoundHyphenationCompoundWordTokenFilterFactory_initWithJavaUtilMap_(id<JavaUtilMap> args) {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneAnalysisCompoundHyphenationCompoundWordTokenFilterFactory, initWithJavaUtilMap_, args)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneAnalysisCompoundHyphenationCompoundWordTokenFilterFactory)
