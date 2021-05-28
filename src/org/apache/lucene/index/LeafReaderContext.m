//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./core/src/java/org/apache/lucene/index/LeafReaderContext.java
//

#include "J2ObjC_source.h"
#include "java/lang/UnsupportedOperationException.h"
#include "java/util/Collections.h"
#include "java/util/List.h"
#include "org/apache/lucene/index/CompositeReaderContext.h"
#include "org/apache/lucene/index/IndexReaderContext.h"
#include "org/apache/lucene/index/LeafReader.h"
#include "org/apache/lucene/index/LeafReaderContext.h"

#if __has_feature(objc_arc)
#error "org/apache/lucene/index/LeafReaderContext must not be compiled with ARC (-fobjc-arc)"
#endif

@interface OrgApacheLuceneIndexLeafReaderContext () {
 @public
  OrgApacheLuceneIndexLeafReader *reader_;
}

@end

J2OBJC_FIELD_SETTER(OrgApacheLuceneIndexLeafReaderContext, reader_, OrgApacheLuceneIndexLeafReader *)

@implementation OrgApacheLuceneIndexLeafReaderContext

- (instancetype)initWithOrgApacheLuceneIndexCompositeReaderContext:(OrgApacheLuceneIndexCompositeReaderContext *)parent
                                withOrgApacheLuceneIndexLeafReader:(OrgApacheLuceneIndexLeafReader *)reader
                                                           withInt:(jint)ord
                                                           withInt:(jint)docBase
                                                           withInt:(jint)leafOrd
                                                           withInt:(jint)leafDocBase {
  OrgApacheLuceneIndexLeafReaderContext_initWithOrgApacheLuceneIndexCompositeReaderContext_withOrgApacheLuceneIndexLeafReader_withInt_withInt_withInt_withInt_(self, parent, reader, ord, docBase, leafOrd, leafDocBase);
  return self;
}

- (instancetype)initWithOrgApacheLuceneIndexLeafReader:(OrgApacheLuceneIndexLeafReader *)leafReader {
  OrgApacheLuceneIndexLeafReaderContext_initWithOrgApacheLuceneIndexLeafReader_(self, leafReader);
  return self;
}

- (id<JavaUtilList>)leaves {
  if (!isTopLevel_) {
    @throw create_JavaLangUnsupportedOperationException_initWithNSString_(@"This is not a top-level context.");
  }
  return JavaUtilCollections_singletonListWithId_(self);
}

- (id<JavaUtilList>)children {
  return nil;
}

- (OrgApacheLuceneIndexLeafReader *)reader {
  return reader_;
}

- (NSString *)description {
  return JreStrcat("$@$I$IC", @"LeafReaderContext(", reader_, @" docBase=", docBase_, @" ord=", ord_, ')');
}

- (void)dealloc {
  RELEASE_(reader_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x0, -1, 0, -1, -1, -1, -1 },
    { NULL, NULL, 0x0, -1, 1, -1, -1, -1, -1 },
    { NULL, "LJavaUtilList;", 0x1, -1, -1, -1, 2, -1, -1 },
    { NULL, "LJavaUtilList;", 0x1, -1, -1, -1, 3, -1, -1 },
    { NULL, "LOrgApacheLuceneIndexLeafReader;", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "LNSString;", 0x1, 4, -1, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  #pragma clang diagnostic ignored "-Wundeclared-selector"
  methods[0].selector = @selector(initWithOrgApacheLuceneIndexCompositeReaderContext:withOrgApacheLuceneIndexLeafReader:withInt:withInt:withInt:withInt:);
  methods[1].selector = @selector(initWithOrgApacheLuceneIndexLeafReader:);
  methods[2].selector = @selector(leaves);
  methods[3].selector = @selector(children);
  methods[4].selector = @selector(reader);
  methods[5].selector = @selector(description);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "ord_", "I", .constantValue.asLong = 0, 0x11, -1, -1, -1, -1 },
    { "docBase_", "I", .constantValue.asLong = 0, 0x11, -1, -1, -1, -1 },
    { "reader_", "LOrgApacheLuceneIndexLeafReader;", .constantValue.asLong = 0, 0x12, -1, -1, -1, -1 },
  };
  static const void *ptrTable[] = { "LOrgApacheLuceneIndexCompositeReaderContext;LOrgApacheLuceneIndexLeafReader;IIII", "LOrgApacheLuceneIndexLeafReader;", "()Ljava/util/List<Lorg/apache/lucene/index/LeafReaderContext;>;", "()Ljava/util/List<Lorg/apache/lucene/index/IndexReaderContext;>;", "toString" };
  static const J2ObjcClassInfo _OrgApacheLuceneIndexLeafReaderContext = { "LeafReaderContext", "org.apache.lucene.index", ptrTable, methods, fields, 7, 0x11, 6, 3, -1, -1, -1, -1, -1 };
  return &_OrgApacheLuceneIndexLeafReaderContext;
}

@end

void OrgApacheLuceneIndexLeafReaderContext_initWithOrgApacheLuceneIndexCompositeReaderContext_withOrgApacheLuceneIndexLeafReader_withInt_withInt_withInt_withInt_(OrgApacheLuceneIndexLeafReaderContext *self, OrgApacheLuceneIndexCompositeReaderContext *parent, OrgApacheLuceneIndexLeafReader *reader, jint ord, jint docBase, jint leafOrd, jint leafDocBase) {
  OrgApacheLuceneIndexIndexReaderContext_initWithOrgApacheLuceneIndexCompositeReaderContext_withInt_withInt_(self, parent, ord, docBase);
  self->ord_ = leafOrd;
  self->docBase_ = leafDocBase;
  JreStrongAssign(&self->reader_, reader);
}

OrgApacheLuceneIndexLeafReaderContext *new_OrgApacheLuceneIndexLeafReaderContext_initWithOrgApacheLuceneIndexCompositeReaderContext_withOrgApacheLuceneIndexLeafReader_withInt_withInt_withInt_withInt_(OrgApacheLuceneIndexCompositeReaderContext *parent, OrgApacheLuceneIndexLeafReader *reader, jint ord, jint docBase, jint leafOrd, jint leafDocBase) {
  J2OBJC_NEW_IMPL(OrgApacheLuceneIndexLeafReaderContext, initWithOrgApacheLuceneIndexCompositeReaderContext_withOrgApacheLuceneIndexLeafReader_withInt_withInt_withInt_withInt_, parent, reader, ord, docBase, leafOrd, leafDocBase)
}

OrgApacheLuceneIndexLeafReaderContext *create_OrgApacheLuceneIndexLeafReaderContext_initWithOrgApacheLuceneIndexCompositeReaderContext_withOrgApacheLuceneIndexLeafReader_withInt_withInt_withInt_withInt_(OrgApacheLuceneIndexCompositeReaderContext *parent, OrgApacheLuceneIndexLeafReader *reader, jint ord, jint docBase, jint leafOrd, jint leafDocBase) {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneIndexLeafReaderContext, initWithOrgApacheLuceneIndexCompositeReaderContext_withOrgApacheLuceneIndexLeafReader_withInt_withInt_withInt_withInt_, parent, reader, ord, docBase, leafOrd, leafDocBase)
}

void OrgApacheLuceneIndexLeafReaderContext_initWithOrgApacheLuceneIndexLeafReader_(OrgApacheLuceneIndexLeafReaderContext *self, OrgApacheLuceneIndexLeafReader *leafReader) {
  OrgApacheLuceneIndexLeafReaderContext_initWithOrgApacheLuceneIndexCompositeReaderContext_withOrgApacheLuceneIndexLeafReader_withInt_withInt_withInt_withInt_(self, nil, leafReader, 0, 0, 0, 0);
}

OrgApacheLuceneIndexLeafReaderContext *new_OrgApacheLuceneIndexLeafReaderContext_initWithOrgApacheLuceneIndexLeafReader_(OrgApacheLuceneIndexLeafReader *leafReader) {
  J2OBJC_NEW_IMPL(OrgApacheLuceneIndexLeafReaderContext, initWithOrgApacheLuceneIndexLeafReader_, leafReader)
}

OrgApacheLuceneIndexLeafReaderContext *create_OrgApacheLuceneIndexLeafReaderContext_initWithOrgApacheLuceneIndexLeafReader_(OrgApacheLuceneIndexLeafReader *leafReader) {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneIndexLeafReaderContext, initWithOrgApacheLuceneIndexLeafReader_, leafReader)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneIndexLeafReaderContext)
