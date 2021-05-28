//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./sandbox/src/java/org/apache/lucene/search/DocTermOrdsRangeFilter.java
//

#include "IOSClass.h"
#include "IOSObjectArray.h"
#include "J2ObjC_source.h"
#include "java/lang/Deprecated.h"
#include "java/lang/Long.h"
#include "java/lang/Math.h"
#include "java/lang/StringBuilder.h"
#include "java/lang/annotation/Annotation.h"
#include "org/apache/lucene/index/DocValues.h"
#include "org/apache/lucene/index/LeafReader.h"
#include "org/apache/lucene/index/LeafReaderContext.h"
#include "org/apache/lucene/index/SortedSetDocValues.h"
#include "org/apache/lucene/search/DocIdSet.h"
#include "org/apache/lucene/search/DocTermOrdsRangeFilter.h"
#include "org/apache/lucene/search/DocValuesDocIdSet.h"
#include "org/apache/lucene/search/Filter.h"
#include "org/apache/lucene/util/Bits.h"
#include "org/apache/lucene/util/BytesRef.h"

#if __has_feature(objc_arc)
#error "org/apache/lucene/search/DocTermOrdsRangeFilter must not be compiled with ARC (-fobjc-arc)"
#endif

@interface OrgApacheLuceneSearchDocTermOrdsRangeFilter ()

- (instancetype)initWithNSString:(NSString *)field
 withOrgApacheLuceneUtilBytesRef:(OrgApacheLuceneUtilBytesRef *)lowerVal
 withOrgApacheLuceneUtilBytesRef:(OrgApacheLuceneUtilBytesRef *)upperVal
                     withBoolean:(jboolean)includeLower
                     withBoolean:(jboolean)includeUpper;

@end

__attribute__((unused)) static void OrgApacheLuceneSearchDocTermOrdsRangeFilter_initWithNSString_withOrgApacheLuceneUtilBytesRef_withOrgApacheLuceneUtilBytesRef_withBoolean_withBoolean_(OrgApacheLuceneSearchDocTermOrdsRangeFilter *self, NSString *field, OrgApacheLuceneUtilBytesRef *lowerVal, OrgApacheLuceneUtilBytesRef *upperVal, jboolean includeLower, jboolean includeUpper);

__attribute__((unused)) static IOSObjectArray *OrgApacheLuceneSearchDocTermOrdsRangeFilter__Annotations$0(void);

@interface OrgApacheLuceneSearchDocTermOrdsRangeFilter_1 : OrgApacheLuceneSearchDocTermOrdsRangeFilter

- (instancetype)initWithNSString:(NSString *)field
 withOrgApacheLuceneUtilBytesRef:(OrgApacheLuceneUtilBytesRef *)lowerVal
 withOrgApacheLuceneUtilBytesRef:(OrgApacheLuceneUtilBytesRef *)upperVal
                     withBoolean:(jboolean)includeLower
                     withBoolean:(jboolean)includeUpper;

- (OrgApacheLuceneSearchDocIdSet *)getDocIdSetWithOrgApacheLuceneIndexLeafReaderContext:(OrgApacheLuceneIndexLeafReaderContext *)context
                                                            withOrgApacheLuceneUtilBits:(id<OrgApacheLuceneUtilBits>)acceptDocs;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneSearchDocTermOrdsRangeFilter_1)

__attribute__((unused)) static void OrgApacheLuceneSearchDocTermOrdsRangeFilter_1_initWithNSString_withOrgApacheLuceneUtilBytesRef_withOrgApacheLuceneUtilBytesRef_withBoolean_withBoolean_(OrgApacheLuceneSearchDocTermOrdsRangeFilter_1 *self, NSString *field, OrgApacheLuceneUtilBytesRef *lowerVal, OrgApacheLuceneUtilBytesRef *upperVal, jboolean includeLower, jboolean includeUpper);

__attribute__((unused)) static OrgApacheLuceneSearchDocTermOrdsRangeFilter_1 *new_OrgApacheLuceneSearchDocTermOrdsRangeFilter_1_initWithNSString_withOrgApacheLuceneUtilBytesRef_withOrgApacheLuceneUtilBytesRef_withBoolean_withBoolean_(NSString *field, OrgApacheLuceneUtilBytesRef *lowerVal, OrgApacheLuceneUtilBytesRef *upperVal, jboolean includeLower, jboolean includeUpper) NS_RETURNS_RETAINED;

__attribute__((unused)) static OrgApacheLuceneSearchDocTermOrdsRangeFilter_1 *create_OrgApacheLuceneSearchDocTermOrdsRangeFilter_1_initWithNSString_withOrgApacheLuceneUtilBytesRef_withOrgApacheLuceneUtilBytesRef_withBoolean_withBoolean_(NSString *field, OrgApacheLuceneUtilBytesRef *lowerVal, OrgApacheLuceneUtilBytesRef *upperVal, jboolean includeLower, jboolean includeUpper);

@interface OrgApacheLuceneSearchDocTermOrdsRangeFilter_1_1 : OrgApacheLuceneSearchDocValuesDocIdSet {
 @public
  OrgApacheLuceneIndexSortedSetDocValues *val$docTermOrds_;
  jlong val$inclusiveUpperPoint_;
  jlong val$inclusiveLowerPoint_;
}

- (instancetype)initWithOrgApacheLuceneIndexSortedSetDocValues:(OrgApacheLuceneIndexSortedSetDocValues *)capture$0
                                                      withLong:(jlong)capture$1
                                                      withLong:(jlong)capture$2
                                                       withInt:(jint)maxDoc
                                   withOrgApacheLuceneUtilBits:(id<OrgApacheLuceneUtilBits>)acceptDocs;

- (jboolean)matchDocWithInt:(jint)doc;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneSearchDocTermOrdsRangeFilter_1_1)

__attribute__((unused)) static void OrgApacheLuceneSearchDocTermOrdsRangeFilter_1_1_initWithOrgApacheLuceneIndexSortedSetDocValues_withLong_withLong_withInt_withOrgApacheLuceneUtilBits_(OrgApacheLuceneSearchDocTermOrdsRangeFilter_1_1 *self, OrgApacheLuceneIndexSortedSetDocValues *capture$0, jlong capture$1, jlong capture$2, jint maxDoc, id<OrgApacheLuceneUtilBits> acceptDocs);

__attribute__((unused)) static OrgApacheLuceneSearchDocTermOrdsRangeFilter_1_1 *new_OrgApacheLuceneSearchDocTermOrdsRangeFilter_1_1_initWithOrgApacheLuceneIndexSortedSetDocValues_withLong_withLong_withInt_withOrgApacheLuceneUtilBits_(OrgApacheLuceneIndexSortedSetDocValues *capture$0, jlong capture$1, jlong capture$2, jint maxDoc, id<OrgApacheLuceneUtilBits> acceptDocs) NS_RETURNS_RETAINED;

__attribute__((unused)) static OrgApacheLuceneSearchDocTermOrdsRangeFilter_1_1 *create_OrgApacheLuceneSearchDocTermOrdsRangeFilter_1_1_initWithOrgApacheLuceneIndexSortedSetDocValues_withLong_withLong_withInt_withOrgApacheLuceneUtilBits_(OrgApacheLuceneIndexSortedSetDocValues *capture$0, jlong capture$1, jlong capture$2, jint maxDoc, id<OrgApacheLuceneUtilBits> acceptDocs);

@implementation OrgApacheLuceneSearchDocTermOrdsRangeFilter

- (instancetype)initWithNSString:(NSString *)field
 withOrgApacheLuceneUtilBytesRef:(OrgApacheLuceneUtilBytesRef *)lowerVal
 withOrgApacheLuceneUtilBytesRef:(OrgApacheLuceneUtilBytesRef *)upperVal
                     withBoolean:(jboolean)includeLower
                     withBoolean:(jboolean)includeUpper {
  OrgApacheLuceneSearchDocTermOrdsRangeFilter_initWithNSString_withOrgApacheLuceneUtilBytesRef_withOrgApacheLuceneUtilBytesRef_withBoolean_withBoolean_(self, field, lowerVal, upperVal, includeLower, includeUpper);
  return self;
}

- (OrgApacheLuceneSearchDocIdSet *)getDocIdSetWithOrgApacheLuceneIndexLeafReaderContext:(OrgApacheLuceneIndexLeafReaderContext *)context
                                                            withOrgApacheLuceneUtilBits:(id<OrgApacheLuceneUtilBits>)acceptDocs {
  // can't call an abstract method
  [self doesNotRecognizeSelector:_cmd];
  return 0;
}

+ (OrgApacheLuceneSearchDocTermOrdsRangeFilter *)newBytesRefRangeWithNSString:(NSString *)field
                                              withOrgApacheLuceneUtilBytesRef:(OrgApacheLuceneUtilBytesRef *)lowerVal
                                              withOrgApacheLuceneUtilBytesRef:(OrgApacheLuceneUtilBytesRef *)upperVal
                                                                  withBoolean:(jboolean)includeLower
                                                                  withBoolean:(jboolean)includeUpper {
  return OrgApacheLuceneSearchDocTermOrdsRangeFilter_newBytesRefRangeWithNSString_withOrgApacheLuceneUtilBytesRef_withOrgApacheLuceneUtilBytesRef_withBoolean_withBoolean_(field, lowerVal, upperVal, includeLower, includeUpper);
}

- (NSString *)toStringWithNSString:(NSString *)defaultField {
  JavaLangStringBuilder *sb = [create_JavaLangStringBuilder_initWithNSString_(field_) appendWithNSString:@":"];
  return [((JavaLangStringBuilder *) nil_chk([((JavaLangStringBuilder *) nil_chk([((JavaLangStringBuilder *) nil_chk([((JavaLangStringBuilder *) nil_chk([((JavaLangStringBuilder *) nil_chk([((JavaLangStringBuilder *) nil_chk(sb)) appendWithChar:includeLower_ ? '[' : '{'])) appendWithNSString:(lowerVal_ == nil) ? @"*" : [((OrgApacheLuceneUtilBytesRef *) nil_chk(lowerVal_)) description]])) appendWithNSString:@" TO "])) appendWithNSString:(upperVal_ == nil) ? @"*" : [((OrgApacheLuceneUtilBytesRef *) nil_chk(upperVal_)) description]])) appendWithChar:includeUpper_ ? ']' : '}'])) description];
}

- (jboolean)isEqual:(id)o {
  if (JreObjectEqualsEquals(self, o)) return true;
  if ([super isEqual:o] == false) return false;
  OrgApacheLuceneSearchDocTermOrdsRangeFilter *other = (OrgApacheLuceneSearchDocTermOrdsRangeFilter *) cast_chk(o, [OrgApacheLuceneSearchDocTermOrdsRangeFilter class]);
  if (![((NSString *) nil_chk(self->field_)) isEqual:((OrgApacheLuceneSearchDocTermOrdsRangeFilter *) nil_chk(other))->field_] || self->includeLower_ != other->includeLower_ || self->includeUpper_ != other->includeUpper_) {
    return false;
  }
  if (self->lowerVal_ != nil ? ![self->lowerVal_ isEqual:other->lowerVal_] : other->lowerVal_ != nil) return false;
  if (self->upperVal_ != nil ? ![self->upperVal_ isEqual:other->upperVal_] : other->upperVal_ != nil) return false;
  return true;
}

- (NSUInteger)hash {
  jint h = ((jint) [super hash]);
  h = 31 * h + ((jint) [((NSString *) nil_chk(field_)) hash]);
  h ^= (lowerVal_ != nil) ? ((jint) [((OrgApacheLuceneUtilBytesRef *) nil_chk(lowerVal_)) hash]) : 550356204;
  h = (JreLShift32(h, 1)) | (JreURShift32(h, 31));
  h ^= (upperVal_ != nil) ? ((jint) [((OrgApacheLuceneUtilBytesRef *) nil_chk(upperVal_)) hash]) : -1674416163;
  h ^= (includeLower_ ? 1549299360 : -365038026) ^ (includeUpper_ ? 1721088258 : 1948649653);
  return h;
}

- (NSString *)getField {
  return field_;
}

- (jboolean)includesLower {
  return includeLower_;
}

- (jboolean)includesUpper {
  return includeUpper_;
}

- (OrgApacheLuceneUtilBytesRef *)getLowerVal {
  return lowerVal_;
}

- (OrgApacheLuceneUtilBytesRef *)getUpperVal {
  return upperVal_;
}

- (void)dealloc {
  RELEASE_(field_);
  RELEASE_(lowerVal_);
  RELEASE_(upperVal_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x2, -1, 0, -1, -1, -1, -1 },
    { NULL, "LOrgApacheLuceneSearchDocIdSet;", 0x401, 1, 2, 3, -1, -1, -1 },
    { NULL, "LOrgApacheLuceneSearchDocTermOrdsRangeFilter;", 0x9, 4, 0, -1, -1, -1, -1 },
    { NULL, "LNSString;", 0x11, 5, 6, -1, -1, -1, -1 },
    { NULL, "Z", 0x11, 7, 8, -1, -1, -1, -1 },
    { NULL, "I", 0x11, 9, -1, -1, -1, -1, -1 },
    { NULL, "LNSString;", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "Z", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "Z", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "LOrgApacheLuceneUtilBytesRef;", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "LOrgApacheLuceneUtilBytesRef;", 0x1, -1, -1, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  #pragma clang diagnostic ignored "-Wundeclared-selector"
  methods[0].selector = @selector(initWithNSString:withOrgApacheLuceneUtilBytesRef:withOrgApacheLuceneUtilBytesRef:withBoolean:withBoolean:);
  methods[1].selector = @selector(getDocIdSetWithOrgApacheLuceneIndexLeafReaderContext:withOrgApacheLuceneUtilBits:);
  methods[2].selector = @selector(newBytesRefRangeWithNSString:withOrgApacheLuceneUtilBytesRef:withOrgApacheLuceneUtilBytesRef:withBoolean:withBoolean:);
  methods[3].selector = @selector(toStringWithNSString:);
  methods[4].selector = @selector(isEqual:);
  methods[5].selector = @selector(hash);
  methods[6].selector = @selector(getField);
  methods[7].selector = @selector(includesLower);
  methods[8].selector = @selector(includesUpper);
  methods[9].selector = @selector(getLowerVal);
  methods[10].selector = @selector(getUpperVal);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "field_", "LNSString;", .constantValue.asLong = 0, 0x10, -1, -1, -1, -1 },
    { "lowerVal_", "LOrgApacheLuceneUtilBytesRef;", .constantValue.asLong = 0, 0x10, -1, -1, -1, -1 },
    { "upperVal_", "LOrgApacheLuceneUtilBytesRef;", .constantValue.asLong = 0, 0x10, -1, -1, -1, -1 },
    { "includeLower_", "Z", .constantValue.asLong = 0, 0x10, -1, -1, -1, -1 },
    { "includeUpper_", "Z", .constantValue.asLong = 0, 0x10, -1, -1, -1, -1 },
  };
  static const void *ptrTable[] = { "LNSString;LOrgApacheLuceneUtilBytesRef;LOrgApacheLuceneUtilBytesRef;ZZ", "getDocIdSet", "LOrgApacheLuceneIndexLeafReaderContext;LOrgApacheLuceneUtilBits;", "LJavaIoIOException;", "newBytesRefRange", "toString", "LNSString;", "equals", "LNSObject;", "hashCode", (void *)&OrgApacheLuceneSearchDocTermOrdsRangeFilter__Annotations$0 };
  static const J2ObjcClassInfo _OrgApacheLuceneSearchDocTermOrdsRangeFilter = { "DocTermOrdsRangeFilter", "org.apache.lucene.search", ptrTable, methods, fields, 7, 0x401, 11, 5, -1, -1, -1, -1, 10 };
  return &_OrgApacheLuceneSearchDocTermOrdsRangeFilter;
}

@end

void OrgApacheLuceneSearchDocTermOrdsRangeFilter_initWithNSString_withOrgApacheLuceneUtilBytesRef_withOrgApacheLuceneUtilBytesRef_withBoolean_withBoolean_(OrgApacheLuceneSearchDocTermOrdsRangeFilter *self, NSString *field, OrgApacheLuceneUtilBytesRef *lowerVal, OrgApacheLuceneUtilBytesRef *upperVal, jboolean includeLower, jboolean includeUpper) {
  OrgApacheLuceneSearchFilter_init(self);
  JreStrongAssign(&self->field_, field);
  JreStrongAssign(&self->lowerVal_, lowerVal);
  JreStrongAssign(&self->upperVal_, upperVal);
  self->includeLower_ = includeLower;
  self->includeUpper_ = includeUpper;
}

OrgApacheLuceneSearchDocTermOrdsRangeFilter *OrgApacheLuceneSearchDocTermOrdsRangeFilter_newBytesRefRangeWithNSString_withOrgApacheLuceneUtilBytesRef_withOrgApacheLuceneUtilBytesRef_withBoolean_withBoolean_(NSString *field, OrgApacheLuceneUtilBytesRef *lowerVal, OrgApacheLuceneUtilBytesRef *upperVal, jboolean includeLower, jboolean includeUpper) {
  OrgApacheLuceneSearchDocTermOrdsRangeFilter_initialize();
  return create_OrgApacheLuceneSearchDocTermOrdsRangeFilter_1_initWithNSString_withOrgApacheLuceneUtilBytesRef_withOrgApacheLuceneUtilBytesRef_withBoolean_withBoolean_(field, lowerVal, upperVal, includeLower, includeUpper);
}

IOSObjectArray *OrgApacheLuceneSearchDocTermOrdsRangeFilter__Annotations$0() {
  return [IOSObjectArray arrayWithObjects:(id[]){ create_JavaLangDeprecated() } count:1 type:JavaLangAnnotationAnnotation_class_()];
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneSearchDocTermOrdsRangeFilter)

@implementation OrgApacheLuceneSearchDocTermOrdsRangeFilter_1

- (instancetype)initWithNSString:(NSString *)field
 withOrgApacheLuceneUtilBytesRef:(OrgApacheLuceneUtilBytesRef *)lowerVal
 withOrgApacheLuceneUtilBytesRef:(OrgApacheLuceneUtilBytesRef *)upperVal
                     withBoolean:(jboolean)includeLower
                     withBoolean:(jboolean)includeUpper {
  OrgApacheLuceneSearchDocTermOrdsRangeFilter_1_initWithNSString_withOrgApacheLuceneUtilBytesRef_withOrgApacheLuceneUtilBytesRef_withBoolean_withBoolean_(self, field, lowerVal, upperVal, includeLower, includeUpper);
  return self;
}

- (OrgApacheLuceneSearchDocIdSet *)getDocIdSetWithOrgApacheLuceneIndexLeafReaderContext:(OrgApacheLuceneIndexLeafReaderContext *)context
                                                            withOrgApacheLuceneUtilBits:(id<OrgApacheLuceneUtilBits>)acceptDocs {
  OrgApacheLuceneIndexSortedSetDocValues *docTermOrds = OrgApacheLuceneIndexDocValues_getSortedSetWithOrgApacheLuceneIndexLeafReader_withNSString_([((OrgApacheLuceneIndexLeafReaderContext *) nil_chk(context)) reader], field_);
  jlong lowerPoint = lowerVal_ == nil ? -1 : [((OrgApacheLuceneIndexSortedSetDocValues *) nil_chk(docTermOrds)) lookupTermWithOrgApacheLuceneUtilBytesRef:lowerVal_];
  jlong upperPoint = upperVal_ == nil ? -1 : [((OrgApacheLuceneIndexSortedSetDocValues *) nil_chk(docTermOrds)) lookupTermWithOrgApacheLuceneUtilBytesRef:upperVal_];
  jlong inclusiveLowerPoint;
  jlong inclusiveUpperPoint;
  if (lowerPoint == -1 && lowerVal_ == nil) {
    inclusiveLowerPoint = 0;
  }
  else if (includeLower_ && lowerPoint >= 0) {
    inclusiveLowerPoint = lowerPoint;
  }
  else if (lowerPoint >= 0) {
    inclusiveLowerPoint = lowerPoint + 1;
  }
  else {
    inclusiveLowerPoint = JavaLangMath_maxWithLong_withLong_(0, -lowerPoint - 1);
  }
  if (upperPoint == -1 && upperVal_ == nil) {
    inclusiveUpperPoint = JavaLangLong_MAX_VALUE;
  }
  else if (includeUpper_ && upperPoint >= 0) {
    inclusiveUpperPoint = upperPoint;
  }
  else if (upperPoint >= 0) {
    inclusiveUpperPoint = upperPoint - 1;
  }
  else {
    inclusiveUpperPoint = -upperPoint - 2;
  }
  if (inclusiveUpperPoint < 0 || inclusiveLowerPoint > inclusiveUpperPoint) {
    return JreRetainedLocalValue(nil);
  }
  JreAssert(inclusiveLowerPoint >= 0 && inclusiveUpperPoint >= 0, @"org/apache/lucene/search/DocTermOrdsRangeFilter.java:98 condition failed: assert inclusiveLowerPoint >= 0 && inclusiveUpperPoint >= 0;");
  return create_OrgApacheLuceneSearchDocTermOrdsRangeFilter_1_1_initWithOrgApacheLuceneIndexSortedSetDocValues_withLong_withLong_withInt_withOrgApacheLuceneUtilBits_(docTermOrds, inclusiveUpperPoint, inclusiveLowerPoint, [((OrgApacheLuceneIndexLeafReader *) nil_chk([context reader])) maxDoc], acceptDocs);
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x0, -1, 0, -1, -1, -1, -1 },
    { NULL, "LOrgApacheLuceneSearchDocIdSet;", 0x1, 1, 2, 3, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  #pragma clang diagnostic ignored "-Wundeclared-selector"
  methods[0].selector = @selector(initWithNSString:withOrgApacheLuceneUtilBytesRef:withOrgApacheLuceneUtilBytesRef:withBoolean:withBoolean:);
  methods[1].selector = @selector(getDocIdSetWithOrgApacheLuceneIndexLeafReaderContext:withOrgApacheLuceneUtilBits:);
  #pragma clang diagnostic pop
  static const void *ptrTable[] = { "LNSString;LOrgApacheLuceneUtilBytesRef;LOrgApacheLuceneUtilBytesRef;ZZ", "getDocIdSet", "LOrgApacheLuceneIndexLeafReaderContext;LOrgApacheLuceneUtilBits;", "LJavaIoIOException;", "LOrgApacheLuceneSearchDocTermOrdsRangeFilter;", "newBytesRefRangeWithNSString:withOrgApacheLuceneUtilBytesRef:withOrgApacheLuceneUtilBytesRef:withBoolean:withBoolean:" };
  static const J2ObjcClassInfo _OrgApacheLuceneSearchDocTermOrdsRangeFilter_1 = { "", "org.apache.lucene.search", ptrTable, methods, NULL, 7, 0x8018, 2, 0, 4, -1, 5, -1, -1 };
  return &_OrgApacheLuceneSearchDocTermOrdsRangeFilter_1;
}

@end

void OrgApacheLuceneSearchDocTermOrdsRangeFilter_1_initWithNSString_withOrgApacheLuceneUtilBytesRef_withOrgApacheLuceneUtilBytesRef_withBoolean_withBoolean_(OrgApacheLuceneSearchDocTermOrdsRangeFilter_1 *self, NSString *field, OrgApacheLuceneUtilBytesRef *lowerVal, OrgApacheLuceneUtilBytesRef *upperVal, jboolean includeLower, jboolean includeUpper) {
  OrgApacheLuceneSearchDocTermOrdsRangeFilter_initWithNSString_withOrgApacheLuceneUtilBytesRef_withOrgApacheLuceneUtilBytesRef_withBoolean_withBoolean_(self, field, lowerVal, upperVal, includeLower, includeUpper);
}

OrgApacheLuceneSearchDocTermOrdsRangeFilter_1 *new_OrgApacheLuceneSearchDocTermOrdsRangeFilter_1_initWithNSString_withOrgApacheLuceneUtilBytesRef_withOrgApacheLuceneUtilBytesRef_withBoolean_withBoolean_(NSString *field, OrgApacheLuceneUtilBytesRef *lowerVal, OrgApacheLuceneUtilBytesRef *upperVal, jboolean includeLower, jboolean includeUpper) {
  J2OBJC_NEW_IMPL(OrgApacheLuceneSearchDocTermOrdsRangeFilter_1, initWithNSString_withOrgApacheLuceneUtilBytesRef_withOrgApacheLuceneUtilBytesRef_withBoolean_withBoolean_, field, lowerVal, upperVal, includeLower, includeUpper)
}

OrgApacheLuceneSearchDocTermOrdsRangeFilter_1 *create_OrgApacheLuceneSearchDocTermOrdsRangeFilter_1_initWithNSString_withOrgApacheLuceneUtilBytesRef_withOrgApacheLuceneUtilBytesRef_withBoolean_withBoolean_(NSString *field, OrgApacheLuceneUtilBytesRef *lowerVal, OrgApacheLuceneUtilBytesRef *upperVal, jboolean includeLower, jboolean includeUpper) {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneSearchDocTermOrdsRangeFilter_1, initWithNSString_withOrgApacheLuceneUtilBytesRef_withOrgApacheLuceneUtilBytesRef_withBoolean_withBoolean_, field, lowerVal, upperVal, includeLower, includeUpper)
}

@implementation OrgApacheLuceneSearchDocTermOrdsRangeFilter_1_1

- (instancetype)initWithOrgApacheLuceneIndexSortedSetDocValues:(OrgApacheLuceneIndexSortedSetDocValues *)capture$0
                                                      withLong:(jlong)capture$1
                                                      withLong:(jlong)capture$2
                                                       withInt:(jint)maxDoc
                                   withOrgApacheLuceneUtilBits:(id<OrgApacheLuceneUtilBits>)acceptDocs {
  OrgApacheLuceneSearchDocTermOrdsRangeFilter_1_1_initWithOrgApacheLuceneIndexSortedSetDocValues_withLong_withLong_withInt_withOrgApacheLuceneUtilBits_(self, capture$0, capture$1, capture$2, maxDoc, acceptDocs);
  return self;
}

- (jboolean)matchDocWithInt:(jint)doc {
  [((OrgApacheLuceneIndexSortedSetDocValues *) nil_chk(val$docTermOrds_)) setDocumentWithInt:doc];
  jlong ord;
  while ((ord = [val$docTermOrds_ nextOrd]) != OrgApacheLuceneIndexSortedSetDocValues_NO_MORE_ORDS) {
    if (ord > val$inclusiveUpperPoint_) {
      return false;
    }
    else if (ord >= val$inclusiveLowerPoint_) {
      return true;
    }
  }
  return false;
}

- (void)dealloc {
  RELEASE_(val$docTermOrds_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x0, -1, 0, -1, -1, -1, -1 },
    { NULL, "Z", 0x14, 1, 2, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  #pragma clang diagnostic ignored "-Wundeclared-selector"
  methods[0].selector = @selector(initWithOrgApacheLuceneIndexSortedSetDocValues:withLong:withLong:withInt:withOrgApacheLuceneUtilBits:);
  methods[1].selector = @selector(matchDocWithInt:);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "val$docTermOrds_", "LOrgApacheLuceneIndexSortedSetDocValues;", .constantValue.asLong = 0, 0x1012, -1, -1, -1, -1 },
    { "val$inclusiveUpperPoint_", "J", .constantValue.asLong = 0, 0x1012, -1, -1, -1, -1 },
    { "val$inclusiveLowerPoint_", "J", .constantValue.asLong = 0, 0x1012, -1, -1, -1, -1 },
  };
  static const void *ptrTable[] = { "LOrgApacheLuceneIndexSortedSetDocValues;JJILOrgApacheLuceneUtilBits;", "matchDoc", "I", "LOrgApacheLuceneSearchDocTermOrdsRangeFilter_1;", "getDocIdSetWithOrgApacheLuceneIndexLeafReaderContext:withOrgApacheLuceneUtilBits:" };
  static const J2ObjcClassInfo _OrgApacheLuceneSearchDocTermOrdsRangeFilter_1_1 = { "", "org.apache.lucene.search", ptrTable, methods, fields, 7, 0x8010, 2, 3, 3, -1, 4, -1, -1 };
  return &_OrgApacheLuceneSearchDocTermOrdsRangeFilter_1_1;
}

@end

void OrgApacheLuceneSearchDocTermOrdsRangeFilter_1_1_initWithOrgApacheLuceneIndexSortedSetDocValues_withLong_withLong_withInt_withOrgApacheLuceneUtilBits_(OrgApacheLuceneSearchDocTermOrdsRangeFilter_1_1 *self, OrgApacheLuceneIndexSortedSetDocValues *capture$0, jlong capture$1, jlong capture$2, jint maxDoc, id<OrgApacheLuceneUtilBits> acceptDocs) {
  JreStrongAssign(&self->val$docTermOrds_, capture$0);
  self->val$inclusiveUpperPoint_ = capture$1;
  self->val$inclusiveLowerPoint_ = capture$2;
  OrgApacheLuceneSearchDocValuesDocIdSet_initWithInt_withOrgApacheLuceneUtilBits_(self, maxDoc, acceptDocs);
}

OrgApacheLuceneSearchDocTermOrdsRangeFilter_1_1 *new_OrgApacheLuceneSearchDocTermOrdsRangeFilter_1_1_initWithOrgApacheLuceneIndexSortedSetDocValues_withLong_withLong_withInt_withOrgApacheLuceneUtilBits_(OrgApacheLuceneIndexSortedSetDocValues *capture$0, jlong capture$1, jlong capture$2, jint maxDoc, id<OrgApacheLuceneUtilBits> acceptDocs) {
  J2OBJC_NEW_IMPL(OrgApacheLuceneSearchDocTermOrdsRangeFilter_1_1, initWithOrgApacheLuceneIndexSortedSetDocValues_withLong_withLong_withInt_withOrgApacheLuceneUtilBits_, capture$0, capture$1, capture$2, maxDoc, acceptDocs)
}

OrgApacheLuceneSearchDocTermOrdsRangeFilter_1_1 *create_OrgApacheLuceneSearchDocTermOrdsRangeFilter_1_1_initWithOrgApacheLuceneIndexSortedSetDocValues_withLong_withLong_withInt_withOrgApacheLuceneUtilBits_(OrgApacheLuceneIndexSortedSetDocValues *capture$0, jlong capture$1, jlong capture$2, jint maxDoc, id<OrgApacheLuceneUtilBits> acceptDocs) {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneSearchDocTermOrdsRangeFilter_1_1, initWithOrgApacheLuceneIndexSortedSetDocValues_withLong_withLong_withInt_withOrgApacheLuceneUtilBits_, capture$0, capture$1, capture$2, maxDoc, acceptDocs)
}
