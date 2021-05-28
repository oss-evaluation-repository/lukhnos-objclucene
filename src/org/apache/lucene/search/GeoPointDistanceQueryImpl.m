//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./sandbox/src/java/org/apache/lucene/search/GeoPointDistanceQueryImpl.java
//

#include "J2ObjC_source.h"
#include "java/lang/UnsupportedOperationException.h"
#include "org/apache/lucene/index/Terms.h"
#include "org/apache/lucene/index/TermsEnum.h"
#include "org/apache/lucene/search/GeoBoundingBox.h"
#include "org/apache/lucene/search/GeoPointDistanceQuery.h"
#include "org/apache/lucene/search/GeoPointDistanceQueryImpl.h"
#include "org/apache/lucene/search/GeoPointInBBoxQueryImpl.h"
#include "org/apache/lucene/search/GeoPointTermsEnum.h"
#include "org/apache/lucene/search/MultiTermQuery.h"
#include "org/apache/lucene/util/AttributeSource.h"
#include "org/apache/lucene/util/GeoUtils.h"
#include "org/apache/lucene/util/SloppyMath.h"

#if __has_feature(objc_arc)
#error "org/apache/lucene/search/GeoPointDistanceQueryImpl must not be compiled with ARC (-fobjc-arc)"
#endif

@interface OrgApacheLuceneSearchGeoPointDistanceQueryImpl () {
 @public
  OrgApacheLuceneSearchGeoPointDistanceQuery *query_;
}

@end

J2OBJC_FIELD_SETTER(OrgApacheLuceneSearchGeoPointDistanceQueryImpl, query_, OrgApacheLuceneSearchGeoPointDistanceQuery *)

@interface OrgApacheLuceneSearchGeoPointDistanceQueryImpl_GeoPointRadiusTermsEnum : OrgApacheLuceneSearchGeoPointTermsEnum {
 @public
  OrgApacheLuceneSearchGeoPointDistanceQueryImpl *this$0_;
}

- (instancetype)initWithOrgApacheLuceneSearchGeoPointDistanceQueryImpl:(OrgApacheLuceneSearchGeoPointDistanceQueryImpl *)outer$
                                     withOrgApacheLuceneIndexTermsEnum:(OrgApacheLuceneIndexTermsEnum *)tenum
                                                            withDouble:(jdouble)minLon
                                                            withDouble:(jdouble)minLat
                                                            withDouble:(jdouble)maxLon
                                                            withDouble:(jdouble)maxLat;

- (jboolean)cellCrossesWithDouble:(jdouble)minLon
                       withDouble:(jdouble)minLat
                       withDouble:(jdouble)maxLon
                       withDouble:(jdouble)maxLat;

- (jboolean)cellWithinWithDouble:(jdouble)minLon
                      withDouble:(jdouble)minLat
                      withDouble:(jdouble)maxLon
                      withDouble:(jdouble)maxLat;

- (jboolean)cellIntersectsShapeWithDouble:(jdouble)minLon
                               withDouble:(jdouble)minLat
                               withDouble:(jdouble)maxLon
                               withDouble:(jdouble)maxLat;

/*!
 @brief The two-phase query approach.The parent <code>org.apache.lucene.search.GeoPointTermsEnum</code> class matches
  encoded terms that fall within the minimum bounding box of the point-radius circle.
 Those documents that pass
  the initial bounding box filter are then post filter compared to the provided distance using the 
 <code>org.apache.lucene.util.SloppyMath.haversin</code> method.
 */
- (jboolean)postFilterWithDouble:(jdouble)lon
                      withDouble:(jdouble)lat;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneSearchGeoPointDistanceQueryImpl_GeoPointRadiusTermsEnum)

__attribute__((unused)) static void OrgApacheLuceneSearchGeoPointDistanceQueryImpl_GeoPointRadiusTermsEnum_initWithOrgApacheLuceneSearchGeoPointDistanceQueryImpl_withOrgApacheLuceneIndexTermsEnum_withDouble_withDouble_withDouble_withDouble_(OrgApacheLuceneSearchGeoPointDistanceQueryImpl_GeoPointRadiusTermsEnum *self, OrgApacheLuceneSearchGeoPointDistanceQueryImpl *outer$, OrgApacheLuceneIndexTermsEnum *tenum, jdouble minLon, jdouble minLat, jdouble maxLon, jdouble maxLat);

__attribute__((unused)) static OrgApacheLuceneSearchGeoPointDistanceQueryImpl_GeoPointRadiusTermsEnum *new_OrgApacheLuceneSearchGeoPointDistanceQueryImpl_GeoPointRadiusTermsEnum_initWithOrgApacheLuceneSearchGeoPointDistanceQueryImpl_withOrgApacheLuceneIndexTermsEnum_withDouble_withDouble_withDouble_withDouble_(OrgApacheLuceneSearchGeoPointDistanceQueryImpl *outer$, OrgApacheLuceneIndexTermsEnum *tenum, jdouble minLon, jdouble minLat, jdouble maxLon, jdouble maxLat) NS_RETURNS_RETAINED;

__attribute__((unused)) static OrgApacheLuceneSearchGeoPointDistanceQueryImpl_GeoPointRadiusTermsEnum *create_OrgApacheLuceneSearchGeoPointDistanceQueryImpl_GeoPointRadiusTermsEnum_initWithOrgApacheLuceneSearchGeoPointDistanceQueryImpl_withOrgApacheLuceneIndexTermsEnum_withDouble_withDouble_withDouble_withDouble_(OrgApacheLuceneSearchGeoPointDistanceQueryImpl *outer$, OrgApacheLuceneIndexTermsEnum *tenum, jdouble minLon, jdouble minLat, jdouble maxLon, jdouble maxLat);

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneSearchGeoPointDistanceQueryImpl_GeoPointRadiusTermsEnum)

@implementation OrgApacheLuceneSearchGeoPointDistanceQueryImpl

- (instancetype)initPackagePrivateWithNSString:(NSString *)field
withOrgApacheLuceneSearchGeoPointDistanceQuery:(OrgApacheLuceneSearchGeoPointDistanceQuery *)q
       withOrgApacheLuceneSearchGeoBoundingBox:(OrgApacheLuceneSearchGeoBoundingBox *)bbox {
  OrgApacheLuceneSearchGeoPointDistanceQueryImpl_initPackagePrivateWithNSString_withOrgApacheLuceneSearchGeoPointDistanceQuery_withOrgApacheLuceneSearchGeoBoundingBox_(self, field, q, bbox);
  return self;
}

- (OrgApacheLuceneIndexTermsEnum *)getTermsEnumWithOrgApacheLuceneIndexTerms:(OrgApacheLuceneIndexTerms *)terms
                                      withOrgApacheLuceneUtilAttributeSource:(OrgApacheLuceneUtilAttributeSource *)atts {
  return create_OrgApacheLuceneSearchGeoPointDistanceQueryImpl_GeoPointRadiusTermsEnum_initWithOrgApacheLuceneSearchGeoPointDistanceQueryImpl_withOrgApacheLuceneIndexTermsEnum_withDouble_withDouble_withDouble_withDouble_(self, [((OrgApacheLuceneIndexTerms *) nil_chk(terms)) iterator], self->minLon_, self->minLat_, self->maxLon_, self->maxLat_);
}

- (void)setRewriteMethodWithOrgApacheLuceneSearchMultiTermQuery_RewriteMethod:(OrgApacheLuceneSearchMultiTermQuery_RewriteMethod *)method {
  @throw create_JavaLangUnsupportedOperationException_initWithNSString_(@"cannot change rewrite method");
}

- (jboolean)isEqual:(id)o {
  if (JreObjectEqualsEquals(self, o)) return true;
  if (!([o isKindOfClass:[OrgApacheLuceneSearchGeoPointDistanceQueryImpl class]])) return false;
  if (![super isEqual:o]) return false;
  OrgApacheLuceneSearchGeoPointDistanceQueryImpl *that = (OrgApacheLuceneSearchGeoPointDistanceQueryImpl *) cast_chk(o, [OrgApacheLuceneSearchGeoPointDistanceQueryImpl class]);
  if (![((OrgApacheLuceneSearchGeoPointDistanceQuery *) nil_chk(query_)) isEqual:((OrgApacheLuceneSearchGeoPointDistanceQueryImpl *) nil_chk(that))->query_]) return false;
  return true;
}

- (NSUInteger)hash {
  jint result = ((jint) [super hash]);
  result = 31 * result + ((jint) [((OrgApacheLuceneSearchGeoPointDistanceQuery *) nil_chk(query_)) hash]);
  return result;
}

- (void)dealloc {
  RELEASE_(query_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x0, -1, 0, -1, -1, -1, -1 },
    { NULL, "LOrgApacheLuceneIndexTermsEnum;", 0x4, 1, 2, 3, -1, -1, -1 },
    { NULL, "V", 0x1, 4, 5, -1, -1, -1, -1 },
    { NULL, "Z", 0x1, 6, 7, -1, -1, -1, -1 },
    { NULL, "I", 0x1, 8, -1, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  #pragma clang diagnostic ignored "-Wundeclared-selector"
  methods[0].selector = @selector(initPackagePrivateWithNSString:withOrgApacheLuceneSearchGeoPointDistanceQuery:withOrgApacheLuceneSearchGeoBoundingBox:);
  methods[1].selector = @selector(getTermsEnumWithOrgApacheLuceneIndexTerms:withOrgApacheLuceneUtilAttributeSource:);
  methods[2].selector = @selector(setRewriteMethodWithOrgApacheLuceneSearchMultiTermQuery_RewriteMethod:);
  methods[3].selector = @selector(isEqual:);
  methods[4].selector = @selector(hash);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "query_", "LOrgApacheLuceneSearchGeoPointDistanceQuery;", .constantValue.asLong = 0, 0x12, -1, -1, -1, -1 },
  };
  static const void *ptrTable[] = { "LNSString;LOrgApacheLuceneSearchGeoPointDistanceQuery;LOrgApacheLuceneSearchGeoBoundingBox;", "getTermsEnum", "LOrgApacheLuceneIndexTerms;LOrgApacheLuceneUtilAttributeSource;", "LJavaIoIOException;", "setRewriteMethod", "LOrgApacheLuceneSearchMultiTermQuery_RewriteMethod;", "equals", "LNSObject;", "hashCode", "LOrgApacheLuceneSearchGeoPointDistanceQueryImpl_GeoPointRadiusTermsEnum;" };
  static const J2ObjcClassInfo _OrgApacheLuceneSearchGeoPointDistanceQueryImpl = { "GeoPointDistanceQueryImpl", "org.apache.lucene.search", ptrTable, methods, fields, 7, 0x10, 5, 1, -1, 9, -1, -1, -1 };
  return &_OrgApacheLuceneSearchGeoPointDistanceQueryImpl;
}

@end

void OrgApacheLuceneSearchGeoPointDistanceQueryImpl_initPackagePrivateWithNSString_withOrgApacheLuceneSearchGeoPointDistanceQuery_withOrgApacheLuceneSearchGeoBoundingBox_(OrgApacheLuceneSearchGeoPointDistanceQueryImpl *self, NSString *field, OrgApacheLuceneSearchGeoPointDistanceQuery *q, OrgApacheLuceneSearchGeoBoundingBox *bbox) {
  OrgApacheLuceneSearchGeoPointInBBoxQueryImpl_initPackagePrivateWithNSString_withDouble_withDouble_withDouble_withDouble_(self, field, ((OrgApacheLuceneSearchGeoBoundingBox *) nil_chk(bbox))->minLon_, bbox->minLat_, bbox->maxLon_, bbox->maxLat_);
  JreStrongAssign(&self->query_, q);
}

OrgApacheLuceneSearchGeoPointDistanceQueryImpl *new_OrgApacheLuceneSearchGeoPointDistanceQueryImpl_initPackagePrivateWithNSString_withOrgApacheLuceneSearchGeoPointDistanceQuery_withOrgApacheLuceneSearchGeoBoundingBox_(NSString *field, OrgApacheLuceneSearchGeoPointDistanceQuery *q, OrgApacheLuceneSearchGeoBoundingBox *bbox) {
  J2OBJC_NEW_IMPL(OrgApacheLuceneSearchGeoPointDistanceQueryImpl, initPackagePrivateWithNSString_withOrgApacheLuceneSearchGeoPointDistanceQuery_withOrgApacheLuceneSearchGeoBoundingBox_, field, q, bbox)
}

OrgApacheLuceneSearchGeoPointDistanceQueryImpl *create_OrgApacheLuceneSearchGeoPointDistanceQueryImpl_initPackagePrivateWithNSString_withOrgApacheLuceneSearchGeoPointDistanceQuery_withOrgApacheLuceneSearchGeoBoundingBox_(NSString *field, OrgApacheLuceneSearchGeoPointDistanceQuery *q, OrgApacheLuceneSearchGeoBoundingBox *bbox) {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneSearchGeoPointDistanceQueryImpl, initPackagePrivateWithNSString_withOrgApacheLuceneSearchGeoPointDistanceQuery_withOrgApacheLuceneSearchGeoBoundingBox_, field, q, bbox)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneSearchGeoPointDistanceQueryImpl)

@implementation OrgApacheLuceneSearchGeoPointDistanceQueryImpl_GeoPointRadiusTermsEnum

- (instancetype)initWithOrgApacheLuceneSearchGeoPointDistanceQueryImpl:(OrgApacheLuceneSearchGeoPointDistanceQueryImpl *)outer$
                                     withOrgApacheLuceneIndexTermsEnum:(OrgApacheLuceneIndexTermsEnum *)tenum
                                                            withDouble:(jdouble)minLon
                                                            withDouble:(jdouble)minLat
                                                            withDouble:(jdouble)maxLon
                                                            withDouble:(jdouble)maxLat {
  OrgApacheLuceneSearchGeoPointDistanceQueryImpl_GeoPointRadiusTermsEnum_initWithOrgApacheLuceneSearchGeoPointDistanceQueryImpl_withOrgApacheLuceneIndexTermsEnum_withDouble_withDouble_withDouble_withDouble_(self, outer$, tenum, minLon, minLat, maxLon, maxLat);
  return self;
}

- (jboolean)cellCrossesWithDouble:(jdouble)minLon
                       withDouble:(jdouble)minLat
                       withDouble:(jdouble)maxLon
                       withDouble:(jdouble)maxLat {
  return OrgApacheLuceneUtilGeoUtils_rectCrossesCircleWithDouble_withDouble_withDouble_withDouble_withDouble_withDouble_withDouble_(minLon, minLat, maxLon, maxLat, ((OrgApacheLuceneSearchGeoPointDistanceQuery *) nil_chk(this$0_->query_))->centerLon_, this$0_->query_->centerLat_, this$0_->query_->radius_);
}

- (jboolean)cellWithinWithDouble:(jdouble)minLon
                      withDouble:(jdouble)minLat
                      withDouble:(jdouble)maxLon
                      withDouble:(jdouble)maxLat {
  return OrgApacheLuceneUtilGeoUtils_rectWithinCircleWithDouble_withDouble_withDouble_withDouble_withDouble_withDouble_withDouble_(minLon, minLat, maxLon, maxLat, ((OrgApacheLuceneSearchGeoPointDistanceQuery *) nil_chk(this$0_->query_))->centerLon_, this$0_->query_->centerLat_, this$0_->query_->radius_);
}

- (jboolean)cellIntersectsShapeWithDouble:(jdouble)minLon
                               withDouble:(jdouble)minLat
                               withDouble:(jdouble)maxLon
                               withDouble:(jdouble)maxLat {
  return ([self cellContainsWithDouble:minLon withDouble:minLat withDouble:maxLon withDouble:maxLat] || [self cellWithinWithDouble:minLon withDouble:minLat withDouble:maxLon withDouble:maxLat] || [self cellCrossesWithDouble:minLon withDouble:minLat withDouble:maxLon withDouble:maxLat]);
}

- (jboolean)postFilterWithDouble:(jdouble)lon
                      withDouble:(jdouble)lat {
  return (OrgApacheLuceneUtilSloppyMath_haversinWithDouble_withDouble_withDouble_withDouble_(((OrgApacheLuceneSearchGeoPointDistanceQuery *) nil_chk(this$0_->query_))->centerLat_, this$0_->query_->centerLon_, lat, lon) * 1000.0 <= this$0_->query_->radius_);
}

- (void)dealloc {
  RELEASE_(this$0_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x0, -1, 0, -1, -1, -1, -1 },
    { NULL, "Z", 0x4, 1, 2, -1, -1, -1, -1 },
    { NULL, "Z", 0x4, 3, 2, -1, -1, -1, -1 },
    { NULL, "Z", 0x4, 4, 2, -1, -1, -1, -1 },
    { NULL, "Z", 0x4, 5, 6, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  #pragma clang diagnostic ignored "-Wundeclared-selector"
  methods[0].selector = @selector(initWithOrgApacheLuceneSearchGeoPointDistanceQueryImpl:withOrgApacheLuceneIndexTermsEnum:withDouble:withDouble:withDouble:withDouble:);
  methods[1].selector = @selector(cellCrossesWithDouble:withDouble:withDouble:withDouble:);
  methods[2].selector = @selector(cellWithinWithDouble:withDouble:withDouble:withDouble:);
  methods[3].selector = @selector(cellIntersectsShapeWithDouble:withDouble:withDouble:withDouble:);
  methods[4].selector = @selector(postFilterWithDouble:withDouble:);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "this$0_", "LOrgApacheLuceneSearchGeoPointDistanceQueryImpl;", .constantValue.asLong = 0, 0x1012, -1, -1, -1, -1 },
  };
  static const void *ptrTable[] = { "LOrgApacheLuceneSearchGeoPointDistanceQueryImpl;LOrgApacheLuceneIndexTermsEnum;DDDD", "cellCrosses", "DDDD", "cellWithin", "cellIntersectsShape", "postFilter", "DD", "LOrgApacheLuceneSearchGeoPointDistanceQueryImpl;" };
  static const J2ObjcClassInfo _OrgApacheLuceneSearchGeoPointDistanceQueryImpl_GeoPointRadiusTermsEnum = { "GeoPointRadiusTermsEnum", "org.apache.lucene.search", ptrTable, methods, fields, 7, 0x12, 5, 1, 7, -1, -1, -1, -1 };
  return &_OrgApacheLuceneSearchGeoPointDistanceQueryImpl_GeoPointRadiusTermsEnum;
}

@end

void OrgApacheLuceneSearchGeoPointDistanceQueryImpl_GeoPointRadiusTermsEnum_initWithOrgApacheLuceneSearchGeoPointDistanceQueryImpl_withOrgApacheLuceneIndexTermsEnum_withDouble_withDouble_withDouble_withDouble_(OrgApacheLuceneSearchGeoPointDistanceQueryImpl_GeoPointRadiusTermsEnum *self, OrgApacheLuceneSearchGeoPointDistanceQueryImpl *outer$, OrgApacheLuceneIndexTermsEnum *tenum, jdouble minLon, jdouble minLat, jdouble maxLon, jdouble maxLat) {
  JreStrongAssign(&self->this$0_, outer$);
  OrgApacheLuceneSearchGeoPointTermsEnum_initPackagePrivateWithOrgApacheLuceneIndexTermsEnum_withDouble_withDouble_withDouble_withDouble_(self, tenum, minLon, minLat, maxLon, maxLat);
}

OrgApacheLuceneSearchGeoPointDistanceQueryImpl_GeoPointRadiusTermsEnum *new_OrgApacheLuceneSearchGeoPointDistanceQueryImpl_GeoPointRadiusTermsEnum_initWithOrgApacheLuceneSearchGeoPointDistanceQueryImpl_withOrgApacheLuceneIndexTermsEnum_withDouble_withDouble_withDouble_withDouble_(OrgApacheLuceneSearchGeoPointDistanceQueryImpl *outer$, OrgApacheLuceneIndexTermsEnum *tenum, jdouble minLon, jdouble minLat, jdouble maxLon, jdouble maxLat) {
  J2OBJC_NEW_IMPL(OrgApacheLuceneSearchGeoPointDistanceQueryImpl_GeoPointRadiusTermsEnum, initWithOrgApacheLuceneSearchGeoPointDistanceQueryImpl_withOrgApacheLuceneIndexTermsEnum_withDouble_withDouble_withDouble_withDouble_, outer$, tenum, minLon, minLat, maxLon, maxLat)
}

OrgApacheLuceneSearchGeoPointDistanceQueryImpl_GeoPointRadiusTermsEnum *create_OrgApacheLuceneSearchGeoPointDistanceQueryImpl_GeoPointRadiusTermsEnum_initWithOrgApacheLuceneSearchGeoPointDistanceQueryImpl_withOrgApacheLuceneIndexTermsEnum_withDouble_withDouble_withDouble_withDouble_(OrgApacheLuceneSearchGeoPointDistanceQueryImpl *outer$, OrgApacheLuceneIndexTermsEnum *tenum, jdouble minLon, jdouble minLat, jdouble maxLon, jdouble maxLat) {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneSearchGeoPointDistanceQueryImpl_GeoPointRadiusTermsEnum, initWithOrgApacheLuceneSearchGeoPointDistanceQueryImpl_withOrgApacheLuceneIndexTermsEnum_withDouble_withDouble_withDouble_withDouble_, outer$, tenum, minLon, minLat, maxLon, maxLat)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneSearchGeoPointDistanceQueryImpl_GeoPointRadiusTermsEnum)
