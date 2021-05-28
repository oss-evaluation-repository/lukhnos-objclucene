//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./suggest/src/java/org/apache/lucene/search/suggest/InputIterator.java
//

#include "J2ObjC_source.h"
#include "java/util/Set.h"
#include "org/apache/lucene/search/suggest/InputIterator.h"
#include "org/apache/lucene/util/BytesRef.h"
#include "org/apache/lucene/util/BytesRefIterator.h"

#if __has_feature(objc_arc)
#error "org/apache/lucene/search/suggest/InputIterator must not be compiled with ARC (-fobjc-arc)"
#endif

@interface OrgApacheLuceneSearchSuggestInputIterator_InputIteratorWrapper () {
 @public
  id<OrgApacheLuceneUtilBytesRefIterator> wrapped_;
}

@end

J2OBJC_FIELD_SETTER(OrgApacheLuceneSearchSuggestInputIterator_InputIteratorWrapper, wrapped_, id<OrgApacheLuceneUtilBytesRefIterator>)

J2OBJC_INITIALIZED_DEFN(OrgApacheLuceneSearchSuggestInputIterator)

id<OrgApacheLuceneSearchSuggestInputIterator> OrgApacheLuceneSearchSuggestInputIterator_EMPTY;

@implementation OrgApacheLuceneSearchSuggestInputIterator

+ (id<OrgApacheLuceneSearchSuggestInputIterator>)EMPTY {
  return OrgApacheLuceneSearchSuggestInputIterator_EMPTY;
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, "J", 0x401, -1, -1, -1, -1, -1, -1 },
    { NULL, "LOrgApacheLuceneUtilBytesRef;", 0x401, -1, -1, -1, -1, -1, -1 },
    { NULL, "Z", 0x401, -1, -1, -1, -1, -1, -1 },
    { NULL, "LJavaUtilSet;", 0x401, -1, -1, -1, 0, -1, -1 },
    { NULL, "Z", 0x401, -1, -1, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  #pragma clang diagnostic ignored "-Wundeclared-selector"
  methods[0].selector = @selector(weight);
  methods[1].selector = @selector(payload);
  methods[2].selector = @selector(hasPayloads);
  methods[3].selector = @selector(contexts);
  methods[4].selector = @selector(hasContexts);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "EMPTY", "LOrgApacheLuceneSearchSuggestInputIterator;", .constantValue.asLong = 0, 0x19, -1, 1, -1, -1 },
  };
  static const void *ptrTable[] = { "()Ljava/util/Set<Lorg/apache/lucene/util/BytesRef;>;", &OrgApacheLuceneSearchSuggestInputIterator_EMPTY, "LOrgApacheLuceneSearchSuggestInputIterator_InputIteratorWrapper;" };
  static const J2ObjcClassInfo _OrgApacheLuceneSearchSuggestInputIterator = { "InputIterator", "org.apache.lucene.search.suggest", ptrTable, methods, fields, 7, 0x609, 5, 1, -1, 2, -1, -1, -1 };
  return &_OrgApacheLuceneSearchSuggestInputIterator;
}

+ (void)initialize {
  if (self == [OrgApacheLuceneSearchSuggestInputIterator class]) {
    JreStrongAssignAndConsume(&OrgApacheLuceneSearchSuggestInputIterator_EMPTY, new_OrgApacheLuceneSearchSuggestInputIterator_InputIteratorWrapper_initWithOrgApacheLuceneUtilBytesRefIterator_(JreLoadStatic(OrgApacheLuceneUtilBytesRefIterator, EMPTY)));
    J2OBJC_SET_INITIALIZED(OrgApacheLuceneSearchSuggestInputIterator)
  }
}

@end

J2OBJC_INTERFACE_TYPE_LITERAL_SOURCE(OrgApacheLuceneSearchSuggestInputIterator)

@implementation OrgApacheLuceneSearchSuggestInputIterator_InputIteratorWrapper

- (instancetype)initWithOrgApacheLuceneUtilBytesRefIterator:(id<OrgApacheLuceneUtilBytesRefIterator>)wrapped {
  OrgApacheLuceneSearchSuggestInputIterator_InputIteratorWrapper_initWithOrgApacheLuceneUtilBytesRefIterator_(self, wrapped);
  return self;
}

- (jlong)weight {
  return 1;
}

- (OrgApacheLuceneUtilBytesRef *)next {
  return [((id<OrgApacheLuceneUtilBytesRefIterator>) nil_chk(wrapped_)) next];
}

- (OrgApacheLuceneUtilBytesRef *)payload {
  return nil;
}

- (jboolean)hasPayloads {
  return false;
}

- (id<JavaUtilSet>)contexts {
  return nil;
}

- (jboolean)hasContexts {
  return false;
}

- (void)dealloc {
  RELEASE_(wrapped_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x1, -1, 0, -1, -1, -1, -1 },
    { NULL, "J", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "LOrgApacheLuceneUtilBytesRef;", 0x1, -1, -1, 1, -1, -1, -1 },
    { NULL, "LOrgApacheLuceneUtilBytesRef;", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "Z", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "LJavaUtilSet;", 0x1, -1, -1, -1, 2, -1, -1 },
    { NULL, "Z", 0x1, -1, -1, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  #pragma clang diagnostic ignored "-Wundeclared-selector"
  methods[0].selector = @selector(initWithOrgApacheLuceneUtilBytesRefIterator:);
  methods[1].selector = @selector(weight);
  methods[2].selector = @selector(next);
  methods[3].selector = @selector(payload);
  methods[4].selector = @selector(hasPayloads);
  methods[5].selector = @selector(contexts);
  methods[6].selector = @selector(hasContexts);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "wrapped_", "LOrgApacheLuceneUtilBytesRefIterator;", .constantValue.asLong = 0, 0x12, -1, -1, -1, -1 },
  };
  static const void *ptrTable[] = { "LOrgApacheLuceneUtilBytesRefIterator;", "LJavaIoIOException;", "()Ljava/util/Set<Lorg/apache/lucene/util/BytesRef;>;", "LOrgApacheLuceneSearchSuggestInputIterator;" };
  static const J2ObjcClassInfo _OrgApacheLuceneSearchSuggestInputIterator_InputIteratorWrapper = { "InputIteratorWrapper", "org.apache.lucene.search.suggest", ptrTable, methods, fields, 7, 0x9, 7, 1, 3, -1, -1, -1, -1 };
  return &_OrgApacheLuceneSearchSuggestInputIterator_InputIteratorWrapper;
}

@end

void OrgApacheLuceneSearchSuggestInputIterator_InputIteratorWrapper_initWithOrgApacheLuceneUtilBytesRefIterator_(OrgApacheLuceneSearchSuggestInputIterator_InputIteratorWrapper *self, id<OrgApacheLuceneUtilBytesRefIterator> wrapped) {
  NSObject_init(self);
  JreStrongAssign(&self->wrapped_, wrapped);
}

OrgApacheLuceneSearchSuggestInputIterator_InputIteratorWrapper *new_OrgApacheLuceneSearchSuggestInputIterator_InputIteratorWrapper_initWithOrgApacheLuceneUtilBytesRefIterator_(id<OrgApacheLuceneUtilBytesRefIterator> wrapped) {
  J2OBJC_NEW_IMPL(OrgApacheLuceneSearchSuggestInputIterator_InputIteratorWrapper, initWithOrgApacheLuceneUtilBytesRefIterator_, wrapped)
}

OrgApacheLuceneSearchSuggestInputIterator_InputIteratorWrapper *create_OrgApacheLuceneSearchSuggestInputIterator_InputIteratorWrapper_initWithOrgApacheLuceneUtilBytesRefIterator_(id<OrgApacheLuceneUtilBytesRefIterator> wrapped) {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneSearchSuggestInputIterator_InputIteratorWrapper, initWithOrgApacheLuceneUtilBytesRefIterator_, wrapped)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneSearchSuggestInputIterator_InputIteratorWrapper)
