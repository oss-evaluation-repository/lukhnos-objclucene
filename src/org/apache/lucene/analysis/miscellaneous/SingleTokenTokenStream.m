//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./analysis/common/src/java/org/apache/lucene/analysis/miscellaneous/SingleTokenTokenStream.java
//

#include "IOSClass.h"
#include "IOSObjectArray.h"
#include "J2ObjC_source.h"
#include "java/lang/Deprecated.h"
#include "java/lang/annotation/Annotation.h"
#include "org/apache/lucene/analysis/Token.h"
#include "org/apache/lucene/analysis/TokenStream.h"
#include "org/apache/lucene/analysis/miscellaneous/SingleTokenTokenStream.h"
#include "org/apache/lucene/analysis/tokenattributes/CharTermAttribute.h"
#include "org/apache/lucene/util/AttributeFactory.h"
#include "org/apache/lucene/util/AttributeImpl.h"

#if __has_feature(objc_arc)
#error "org/apache/lucene/analysis/miscellaneous/SingleTokenTokenStream must not be compiled with ARC (-fobjc-arc)"
#endif

@interface OrgApacheLuceneAnalysisMiscellaneousSingleTokenTokenStream () {
 @public
  jboolean exhausted_;
  OrgApacheLuceneAnalysisToken *singleToken_;
  OrgApacheLuceneUtilAttributeImpl *tokenAtt_;
}

@end

J2OBJC_FIELD_SETTER(OrgApacheLuceneAnalysisMiscellaneousSingleTokenTokenStream, singleToken_, OrgApacheLuceneAnalysisToken *)
J2OBJC_FIELD_SETTER(OrgApacheLuceneAnalysisMiscellaneousSingleTokenTokenStream, tokenAtt_, OrgApacheLuceneUtilAttributeImpl *)

__attribute__((unused)) static IOSObjectArray *OrgApacheLuceneAnalysisMiscellaneousSingleTokenTokenStream__Annotations$0(void);

@implementation OrgApacheLuceneAnalysisMiscellaneousSingleTokenTokenStream

- (instancetype)initWithOrgApacheLuceneAnalysisToken:(OrgApacheLuceneAnalysisToken *)token {
  OrgApacheLuceneAnalysisMiscellaneousSingleTokenTokenStream_initWithOrgApacheLuceneAnalysisToken_(self, token);
  return self;
}

- (jboolean)incrementToken {
  if (exhausted_) {
    return false;
  }
  else {
    [self clearAttributes];
    [((OrgApacheLuceneAnalysisToken *) nil_chk(singleToken_)) copyToWithOrgApacheLuceneUtilAttributeImpl:tokenAtt_];
    exhausted_ = true;
    return true;
  }
}

- (void)reset {
  exhausted_ = false;
}

- (OrgApacheLuceneAnalysisToken *)getToken {
  return [((OrgApacheLuceneAnalysisToken *) nil_chk(singleToken_)) java_clone];
}

- (void)setTokenWithOrgApacheLuceneAnalysisToken:(OrgApacheLuceneAnalysisToken *)token {
  JreStrongAssign(&self->singleToken_, [((OrgApacheLuceneAnalysisToken *) nil_chk(token)) java_clone]);
}

- (void)dealloc {
  RELEASE_(singleToken_);
  RELEASE_(tokenAtt_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x1, -1, 0, -1, -1, -1, -1 },
    { NULL, "Z", 0x11, -1, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "LOrgApacheLuceneAnalysisToken;", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 1, 0, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  #pragma clang diagnostic ignored "-Wundeclared-selector"
  methods[0].selector = @selector(initWithOrgApacheLuceneAnalysisToken:);
  methods[1].selector = @selector(incrementToken);
  methods[2].selector = @selector(reset);
  methods[3].selector = @selector(getToken);
  methods[4].selector = @selector(setTokenWithOrgApacheLuceneAnalysisToken:);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "exhausted_", "Z", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
    { "singleToken_", "LOrgApacheLuceneAnalysisToken;", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
    { "tokenAtt_", "LOrgApacheLuceneUtilAttributeImpl;", .constantValue.asLong = 0, 0x12, -1, -1, -1, -1 },
  };
  static const void *ptrTable[] = { "LOrgApacheLuceneAnalysisToken;", "setToken", (void *)&OrgApacheLuceneAnalysisMiscellaneousSingleTokenTokenStream__Annotations$0 };
  static const J2ObjcClassInfo _OrgApacheLuceneAnalysisMiscellaneousSingleTokenTokenStream = { "SingleTokenTokenStream", "org.apache.lucene.analysis.miscellaneous", ptrTable, methods, fields, 7, 0x11, 5, 3, -1, -1, -1, -1, 2 };
  return &_OrgApacheLuceneAnalysisMiscellaneousSingleTokenTokenStream;
}

@end

void OrgApacheLuceneAnalysisMiscellaneousSingleTokenTokenStream_initWithOrgApacheLuceneAnalysisToken_(OrgApacheLuceneAnalysisMiscellaneousSingleTokenTokenStream *self, OrgApacheLuceneAnalysisToken *token) {
  OrgApacheLuceneAnalysisTokenStream_initWithOrgApacheLuceneUtilAttributeFactory_(self, JreLoadStatic(OrgApacheLuceneAnalysisToken, TOKEN_ATTRIBUTE_FACTORY));
  self->exhausted_ = false;
  JreAssert(token != nil, @"org/apache/lucene/analysis/miscellaneous/SingleTokenTokenStream.java:41 condition failed: assert token != null;");
  JreStrongAssign(&self->singleToken_, [((OrgApacheLuceneAnalysisToken *) nil_chk(token)) java_clone]);
  JreStrongAssign(&self->tokenAtt_, (OrgApacheLuceneUtilAttributeImpl *) cast_chk([self addAttributeWithIOSClass:OrgApacheLuceneAnalysisTokenattributesCharTermAttribute_class_()], [OrgApacheLuceneUtilAttributeImpl class]));
  JreAssert(([self->tokenAtt_ isKindOfClass:[OrgApacheLuceneAnalysisToken class]]), @"org/apache/lucene/analysis/miscellaneous/SingleTokenTokenStream.java:45 condition failed: assert (tokenAtt instanceof Token);");
}

OrgApacheLuceneAnalysisMiscellaneousSingleTokenTokenStream *new_OrgApacheLuceneAnalysisMiscellaneousSingleTokenTokenStream_initWithOrgApacheLuceneAnalysisToken_(OrgApacheLuceneAnalysisToken *token) {
  J2OBJC_NEW_IMPL(OrgApacheLuceneAnalysisMiscellaneousSingleTokenTokenStream, initWithOrgApacheLuceneAnalysisToken_, token)
}

OrgApacheLuceneAnalysisMiscellaneousSingleTokenTokenStream *create_OrgApacheLuceneAnalysisMiscellaneousSingleTokenTokenStream_initWithOrgApacheLuceneAnalysisToken_(OrgApacheLuceneAnalysisToken *token) {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneAnalysisMiscellaneousSingleTokenTokenStream, initWithOrgApacheLuceneAnalysisToken_, token)
}

IOSObjectArray *OrgApacheLuceneAnalysisMiscellaneousSingleTokenTokenStream__Annotations$0() {
  return [IOSObjectArray arrayWithObjects:(id[]){ create_JavaLangDeprecated() } count:1 type:JavaLangAnnotationAnnotation_class_()];
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneAnalysisMiscellaneousSingleTokenTokenStream)
