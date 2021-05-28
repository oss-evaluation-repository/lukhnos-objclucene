//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./core/src/java/org/apache/lucene/search/FilteredDocIdSetIterator.java
//

#include "J2ObjC_source.h"
#include "java/lang/IllegalArgumentException.h"
#include "org/apache/lucene/search/DocIdSetIterator.h"
#include "org/apache/lucene/search/FilteredDocIdSetIterator.h"

#if __has_feature(objc_arc)
#error "org/apache/lucene/search/FilteredDocIdSetIterator must not be compiled with ARC (-fobjc-arc)"
#endif

@interface OrgApacheLuceneSearchFilteredDocIdSetIterator () {
 @public
  jint doc_;
}

@end

@implementation OrgApacheLuceneSearchFilteredDocIdSetIterator

- (instancetype)initWithOrgApacheLuceneSearchDocIdSetIterator:(OrgApacheLuceneSearchDocIdSetIterator *)innerIter {
  OrgApacheLuceneSearchFilteredDocIdSetIterator_initWithOrgApacheLuceneSearchDocIdSetIterator_(self, innerIter);
  return self;
}

- (OrgApacheLuceneSearchDocIdSetIterator *)getDelegate {
  return _innerIter_;
}

- (jboolean)matchWithInt:(jint)doc {
  // can't call an abstract method
  [self doesNotRecognizeSelector:_cmd];
  return 0;
}

- (jint)docID {
  return doc_;
}

- (jint)nextDoc {
  while ((doc_ = [((OrgApacheLuceneSearchDocIdSetIterator *) nil_chk(_innerIter_)) nextDoc]) != OrgApacheLuceneSearchDocIdSetIterator_NO_MORE_DOCS) {
    if ([self matchWithInt:doc_]) {
      return doc_;
    }
  }
  return doc_;
}

- (jint)advanceWithInt:(jint)target {
  doc_ = [((OrgApacheLuceneSearchDocIdSetIterator *) nil_chk(_innerIter_)) advanceWithInt:target];
  if (doc_ != OrgApacheLuceneSearchDocIdSetIterator_NO_MORE_DOCS) {
    if ([self matchWithInt:doc_]) {
      return doc_;
    }
    else {
      while ((doc_ = [((OrgApacheLuceneSearchDocIdSetIterator *) nil_chk(_innerIter_)) nextDoc]) != OrgApacheLuceneSearchDocIdSetIterator_NO_MORE_DOCS) {
        if ([self matchWithInt:doc_]) {
          return doc_;
        }
      }
      return doc_;
    }
  }
  return doc_;
}

- (jlong)cost {
  return [((OrgApacheLuceneSearchDocIdSetIterator *) nil_chk(_innerIter_)) cost];
}

- (void)dealloc {
  RELEASE_(_innerIter_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x1, -1, 0, -1, -1, -1, -1 },
    { NULL, "LOrgApacheLuceneSearchDocIdSetIterator;", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "Z", 0x404, 1, 2, -1, -1, -1, -1 },
    { NULL, "I", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "I", 0x1, -1, -1, 3, -1, -1, -1 },
    { NULL, "I", 0x1, 4, 2, 3, -1, -1, -1 },
    { NULL, "J", 0x1, -1, -1, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  #pragma clang diagnostic ignored "-Wundeclared-selector"
  methods[0].selector = @selector(initWithOrgApacheLuceneSearchDocIdSetIterator:);
  methods[1].selector = @selector(getDelegate);
  methods[2].selector = @selector(matchWithInt:);
  methods[3].selector = @selector(docID);
  methods[4].selector = @selector(nextDoc);
  methods[5].selector = @selector(advanceWithInt:);
  methods[6].selector = @selector(cost);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "_innerIter_", "LOrgApacheLuceneSearchDocIdSetIterator;", .constantValue.asLong = 0, 0x4, -1, -1, -1, -1 },
    { "doc_", "I", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
  };
  static const void *ptrTable[] = { "LOrgApacheLuceneSearchDocIdSetIterator;", "match", "I", "LJavaIoIOException;", "advance" };
  static const J2ObjcClassInfo _OrgApacheLuceneSearchFilteredDocIdSetIterator = { "FilteredDocIdSetIterator", "org.apache.lucene.search", ptrTable, methods, fields, 7, 0x401, 7, 2, -1, -1, -1, -1, -1 };
  return &_OrgApacheLuceneSearchFilteredDocIdSetIterator;
}

@end

void OrgApacheLuceneSearchFilteredDocIdSetIterator_initWithOrgApacheLuceneSearchDocIdSetIterator_(OrgApacheLuceneSearchFilteredDocIdSetIterator *self, OrgApacheLuceneSearchDocIdSetIterator *innerIter) {
  OrgApacheLuceneSearchDocIdSetIterator_init(self);
  if (innerIter == nil) {
    @throw create_JavaLangIllegalArgumentException_initWithNSString_(@"null iterator");
  }
  JreStrongAssign(&self->_innerIter_, innerIter);
  self->doc_ = -1;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneSearchFilteredDocIdSetIterator)
