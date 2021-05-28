//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./analysis/common/src/java/org/apache/lucene/analysis/util/ElisionFilter.java
//

#include "IOSClass.h"
#include "IOSPrimitiveArray.h"
#include "J2ObjC_source.h"
#include "org/apache/lucene/analysis/TokenFilter.h"
#include "org/apache/lucene/analysis/TokenStream.h"
#include "org/apache/lucene/analysis/tokenattributes/CharTermAttribute.h"
#include "org/apache/lucene/analysis/util/CharArraySet.h"
#include "org/apache/lucene/analysis/util/ElisionFilter.h"

#if __has_feature(objc_arc)
#error "org/apache/lucene/analysis/util/ElisionFilter must not be compiled with ARC (-fobjc-arc)"
#endif

@interface OrgApacheLuceneAnalysisUtilElisionFilter () {
 @public
  OrgApacheLuceneAnalysisUtilCharArraySet *articles_;
  id<OrgApacheLuceneAnalysisTokenattributesCharTermAttribute> termAtt_;
}

@end

J2OBJC_FIELD_SETTER(OrgApacheLuceneAnalysisUtilElisionFilter, articles_, OrgApacheLuceneAnalysisUtilCharArraySet *)
J2OBJC_FIELD_SETTER(OrgApacheLuceneAnalysisUtilElisionFilter, termAtt_, id<OrgApacheLuceneAnalysisTokenattributesCharTermAttribute>)

@implementation OrgApacheLuceneAnalysisUtilElisionFilter

- (instancetype)initWithOrgApacheLuceneAnalysisTokenStream:(OrgApacheLuceneAnalysisTokenStream *)input
               withOrgApacheLuceneAnalysisUtilCharArraySet:(OrgApacheLuceneAnalysisUtilCharArraySet *)articles {
  OrgApacheLuceneAnalysisUtilElisionFilter_initWithOrgApacheLuceneAnalysisTokenStream_withOrgApacheLuceneAnalysisUtilCharArraySet_(self, input, articles);
  return self;
}

- (jboolean)incrementToken {
  if ([((OrgApacheLuceneAnalysisTokenStream *) nil_chk(input_)) incrementToken]) {
    IOSCharArray *termBuffer = [((id<OrgApacheLuceneAnalysisTokenattributesCharTermAttribute>) nil_chk(termAtt_)) buffer];
    jint termLength = [termAtt_ java_length];
    jint index = -1;
    for (jint i = 0; i < termLength; i++) {
      jchar ch = IOSCharArray_Get(nil_chk(termBuffer), i);
      if (ch == '\'' || ch == 0x2019) {
        index = i;
        break;
      }
    }
    if (index >= 0 && [((OrgApacheLuceneAnalysisUtilCharArraySet *) nil_chk(articles_)) containsWithCharArray:termBuffer withInt:0 withInt:index]) {
      [termAtt_ copyBufferWithCharArray:termBuffer withInt:index + 1 withInt:termLength - (index + 1)];
    }
    return true;
  }
  else {
    return false;
  }
}

- (void)dealloc {
  RELEASE_(articles_);
  RELEASE_(termAtt_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x1, -1, 0, -1, -1, -1, -1 },
    { NULL, "Z", 0x11, -1, -1, 1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  #pragma clang diagnostic ignored "-Wundeclared-selector"
  methods[0].selector = @selector(initWithOrgApacheLuceneAnalysisTokenStream:withOrgApacheLuceneAnalysisUtilCharArraySet:);
  methods[1].selector = @selector(incrementToken);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "articles_", "LOrgApacheLuceneAnalysisUtilCharArraySet;", .constantValue.asLong = 0, 0x12, -1, -1, -1, -1 },
    { "termAtt_", "LOrgApacheLuceneAnalysisTokenattributesCharTermAttribute;", .constantValue.asLong = 0, 0x12, -1, -1, -1, -1 },
  };
  static const void *ptrTable[] = { "LOrgApacheLuceneAnalysisTokenStream;LOrgApacheLuceneAnalysisUtilCharArraySet;", "LJavaIoIOException;" };
  static const J2ObjcClassInfo _OrgApacheLuceneAnalysisUtilElisionFilter = { "ElisionFilter", "org.apache.lucene.analysis.util", ptrTable, methods, fields, 7, 0x11, 2, 2, -1, -1, -1, -1, -1 };
  return &_OrgApacheLuceneAnalysisUtilElisionFilter;
}

@end

void OrgApacheLuceneAnalysisUtilElisionFilter_initWithOrgApacheLuceneAnalysisTokenStream_withOrgApacheLuceneAnalysisUtilCharArraySet_(OrgApacheLuceneAnalysisUtilElisionFilter *self, OrgApacheLuceneAnalysisTokenStream *input, OrgApacheLuceneAnalysisUtilCharArraySet *articles) {
  OrgApacheLuceneAnalysisTokenFilter_initWithOrgApacheLuceneAnalysisTokenStream_(self, input);
  JreStrongAssign(&self->termAtt_, [self addAttributeWithIOSClass:OrgApacheLuceneAnalysisTokenattributesCharTermAttribute_class_()]);
  JreStrongAssign(&self->articles_, articles);
}

OrgApacheLuceneAnalysisUtilElisionFilter *new_OrgApacheLuceneAnalysisUtilElisionFilter_initWithOrgApacheLuceneAnalysisTokenStream_withOrgApacheLuceneAnalysisUtilCharArraySet_(OrgApacheLuceneAnalysisTokenStream *input, OrgApacheLuceneAnalysisUtilCharArraySet *articles) {
  J2OBJC_NEW_IMPL(OrgApacheLuceneAnalysisUtilElisionFilter, initWithOrgApacheLuceneAnalysisTokenStream_withOrgApacheLuceneAnalysisUtilCharArraySet_, input, articles)
}

OrgApacheLuceneAnalysisUtilElisionFilter *create_OrgApacheLuceneAnalysisUtilElisionFilter_initWithOrgApacheLuceneAnalysisTokenStream_withOrgApacheLuceneAnalysisUtilCharArraySet_(OrgApacheLuceneAnalysisTokenStream *input, OrgApacheLuceneAnalysisUtilCharArraySet *articles) {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneAnalysisUtilElisionFilter, initWithOrgApacheLuceneAnalysisTokenStream_withOrgApacheLuceneAnalysisUtilCharArraySet_, input, articles)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneAnalysisUtilElisionFilter)
