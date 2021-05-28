//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./sandbox/src/java/org/apache/lucene/bkdtree/BKDTreeReader.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_OrgApacheLuceneBkdtreeBKDTreeReader")
#ifdef RESTRICT_OrgApacheLuceneBkdtreeBKDTreeReader
#define INCLUDE_ALL_OrgApacheLuceneBkdtreeBKDTreeReader 0
#else
#define INCLUDE_ALL_OrgApacheLuceneBkdtreeBKDTreeReader 1
#endif
#undef RESTRICT_OrgApacheLuceneBkdtreeBKDTreeReader

#if __has_feature(nullability)
#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wnullability"
#pragma GCC diagnostic ignored "-Wnullability-completeness"
#endif

#if !defined (OrgApacheLuceneBkdtreeBKDTreeReader_) && (INCLUDE_ALL_OrgApacheLuceneBkdtreeBKDTreeReader || defined(INCLUDE_OrgApacheLuceneBkdtreeBKDTreeReader))
#define OrgApacheLuceneBkdtreeBKDTreeReader_

#define RESTRICT_OrgApacheLuceneUtilAccountable 1
#define INCLUDE_OrgApacheLuceneUtilAccountable 1
#include "org/apache/lucene/util/Accountable.h"

@class OrgApacheLuceneIndexSortedNumericDocValues;
@class OrgApacheLuceneSearchDocIdSet;
@class OrgApacheLuceneStoreIndexInput;
@protocol JavaUtilCollection;
@protocol OrgApacheLuceneBkdtreeBKDTreeReader_LatLonFilter;

/*!
 @brief Handles intersection of a shape with a BKD tree previously written with <code>BKDTreeWriter</code>.
 */
@interface OrgApacheLuceneBkdtreeBKDTreeReader : NSObject < OrgApacheLuceneUtilAccountable > {
 @public
  jint maxDoc_;
  OrgApacheLuceneStoreIndexInput *in_;
}

#pragma mark Public

- (instancetype __nonnull)initPackagePrivateWithOrgApacheLuceneStoreIndexInput:(OrgApacheLuceneStoreIndexInput *)inArg
                                                                       withInt:(jint)maxDoc;

- (id<JavaUtilCollection>)getChildResources;

- (OrgApacheLuceneSearchDocIdSet *)intersectWithDouble:(jdouble)latMin
                                            withDouble:(jdouble)latMax
                                            withDouble:(jdouble)lonMin
                                            withDouble:(jdouble)lonMax
  withOrgApacheLuceneBkdtreeBKDTreeReader_LatLonFilter:(id<OrgApacheLuceneBkdtreeBKDTreeReader_LatLonFilter>)filter
        withOrgApacheLuceneIndexSortedNumericDocValues:(OrgApacheLuceneIndexSortedNumericDocValues *)sndv;

- (OrgApacheLuceneSearchDocIdSet *)intersectWithDouble:(jdouble)latMin
                                            withDouble:(jdouble)latMax
                                            withDouble:(jdouble)lonMin
                                            withDouble:(jdouble)lonMax
        withOrgApacheLuceneIndexSortedNumericDocValues:(OrgApacheLuceneIndexSortedNumericDocValues *)sndv;

- (jlong)ramBytesUsed;

// Disallowed inherited constructors, do not use.

- (instancetype __nonnull)init NS_UNAVAILABLE;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneBkdtreeBKDTreeReader)

J2OBJC_FIELD_SETTER(OrgApacheLuceneBkdtreeBKDTreeReader, in_, OrgApacheLuceneStoreIndexInput *)

FOUNDATION_EXPORT void OrgApacheLuceneBkdtreeBKDTreeReader_initPackagePrivateWithOrgApacheLuceneStoreIndexInput_withInt_(OrgApacheLuceneBkdtreeBKDTreeReader *self, OrgApacheLuceneStoreIndexInput *inArg, jint maxDoc);

FOUNDATION_EXPORT OrgApacheLuceneBkdtreeBKDTreeReader *new_OrgApacheLuceneBkdtreeBKDTreeReader_initPackagePrivateWithOrgApacheLuceneStoreIndexInput_withInt_(OrgApacheLuceneStoreIndexInput *inArg, jint maxDoc) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgApacheLuceneBkdtreeBKDTreeReader *create_OrgApacheLuceneBkdtreeBKDTreeReader_initPackagePrivateWithOrgApacheLuceneStoreIndexInput_withInt_(OrgApacheLuceneStoreIndexInput *inArg, jint maxDoc);

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneBkdtreeBKDTreeReader)

#endif

#if !defined (OrgApacheLuceneBkdtreeBKDTreeReader_Relation_) && (INCLUDE_ALL_OrgApacheLuceneBkdtreeBKDTreeReader || defined(INCLUDE_OrgApacheLuceneBkdtreeBKDTreeReader_Relation))
#define OrgApacheLuceneBkdtreeBKDTreeReader_Relation_

#define RESTRICT_JavaLangEnum 1
#define INCLUDE_JavaLangEnum 1
#include "java/lang/Enum.h"

@class IOSObjectArray;

typedef NS_ENUM(NSUInteger, OrgApacheLuceneBkdtreeBKDTreeReader_Relation_Enum) {
  OrgApacheLuceneBkdtreeBKDTreeReader_Relation_Enum_INSIDE = 0,
  OrgApacheLuceneBkdtreeBKDTreeReader_Relation_Enum_CROSSES = 1,
  OrgApacheLuceneBkdtreeBKDTreeReader_Relation_Enum_OUTSIDE = 2,
};

@interface OrgApacheLuceneBkdtreeBKDTreeReader_Relation : JavaLangEnum

@property (readonly, class, nonnull) OrgApacheLuceneBkdtreeBKDTreeReader_Relation *INSIDE NS_SWIFT_NAME(INSIDE);
@property (readonly, class, nonnull) OrgApacheLuceneBkdtreeBKDTreeReader_Relation *CROSSES NS_SWIFT_NAME(CROSSES);
@property (readonly, class, nonnull) OrgApacheLuceneBkdtreeBKDTreeReader_Relation *OUTSIDE NS_SWIFT_NAME(OUTSIDE);
#pragma mark Public

+ (OrgApacheLuceneBkdtreeBKDTreeReader_Relation *)valueOfWithNSString:(NSString *)name;

+ (IOSObjectArray *)values;

#pragma mark Package-Private

- (OrgApacheLuceneBkdtreeBKDTreeReader_Relation_Enum)toNSEnum;

@end

J2OBJC_STATIC_INIT(OrgApacheLuceneBkdtreeBKDTreeReader_Relation)

/*! INTERNAL ONLY - Use enum accessors declared below. */
FOUNDATION_EXPORT OrgApacheLuceneBkdtreeBKDTreeReader_Relation *OrgApacheLuceneBkdtreeBKDTreeReader_Relation_values_[];

inline OrgApacheLuceneBkdtreeBKDTreeReader_Relation *OrgApacheLuceneBkdtreeBKDTreeReader_Relation_get_INSIDE(void);
J2OBJC_ENUM_CONSTANT(OrgApacheLuceneBkdtreeBKDTreeReader_Relation, INSIDE)

inline OrgApacheLuceneBkdtreeBKDTreeReader_Relation *OrgApacheLuceneBkdtreeBKDTreeReader_Relation_get_CROSSES(void);
J2OBJC_ENUM_CONSTANT(OrgApacheLuceneBkdtreeBKDTreeReader_Relation, CROSSES)

inline OrgApacheLuceneBkdtreeBKDTreeReader_Relation *OrgApacheLuceneBkdtreeBKDTreeReader_Relation_get_OUTSIDE(void);
J2OBJC_ENUM_CONSTANT(OrgApacheLuceneBkdtreeBKDTreeReader_Relation, OUTSIDE)

FOUNDATION_EXPORT IOSObjectArray *OrgApacheLuceneBkdtreeBKDTreeReader_Relation_values(void);

FOUNDATION_EXPORT OrgApacheLuceneBkdtreeBKDTreeReader_Relation *OrgApacheLuceneBkdtreeBKDTreeReader_Relation_valueOfWithNSString_(NSString *name);

FOUNDATION_EXPORT OrgApacheLuceneBkdtreeBKDTreeReader_Relation *OrgApacheLuceneBkdtreeBKDTreeReader_Relation_fromOrdinal(NSUInteger ordinal);

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneBkdtreeBKDTreeReader_Relation)

#endif

#if !defined (OrgApacheLuceneBkdtreeBKDTreeReader_LatLonFilter_) && (INCLUDE_ALL_OrgApacheLuceneBkdtreeBKDTreeReader || defined(INCLUDE_OrgApacheLuceneBkdtreeBKDTreeReader_LatLonFilter))
#define OrgApacheLuceneBkdtreeBKDTreeReader_LatLonFilter_

@class OrgApacheLuceneBkdtreeBKDTreeReader_Relation;

@protocol OrgApacheLuceneBkdtreeBKDTreeReader_LatLonFilter < JavaObject >

- (jboolean)acceptWithDouble:(jdouble)lat
                  withDouble:(jdouble)lon;

- (OrgApacheLuceneBkdtreeBKDTreeReader_Relation *)compareWithDouble:(jdouble)latMin
                                                         withDouble:(jdouble)latMax
                                                         withDouble:(jdouble)lonMin
                                                         withDouble:(jdouble)lonMax;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneBkdtreeBKDTreeReader_LatLonFilter)

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneBkdtreeBKDTreeReader_LatLonFilter)

#endif


#if __has_feature(nullability)
#pragma clang diagnostic pop
#endif
#pragma pop_macro("INCLUDE_ALL_OrgApacheLuceneBkdtreeBKDTreeReader")
