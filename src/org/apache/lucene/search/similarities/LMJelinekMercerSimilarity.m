//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./core/src/java/org/apache/lucene/search/similarities/LMJelinekMercerSimilarity.java
//

#include "IOSClass.h"
#include "IOSObjectArray.h"
#include "J2ObjC_source.h"
#include "java/lang/Float.h"
#include "java/lang/Math.h"
#include "java/util/List.h"
#include "java/util/Locale.h"
#include "org/apache/lucene/search/Explanation.h"
#include "org/apache/lucene/search/similarities/BasicStats.h"
#include "org/apache/lucene/search/similarities/LMJelinekMercerSimilarity.h"
#include "org/apache/lucene/search/similarities/LMSimilarity.h"

#if __has_feature(objc_arc)
#error "org/apache/lucene/search/similarities/LMJelinekMercerSimilarity must not be compiled with ARC (-fobjc-arc)"
#endif

@interface OrgApacheLuceneSearchSimilaritiesLMJelinekMercerSimilarity () {
 @public
  /*!
   @brief The &lambda; parameter.
   */
  jfloat lambda_;
}

@end

@implementation OrgApacheLuceneSearchSimilaritiesLMJelinekMercerSimilarity

- (instancetype)initWithOrgApacheLuceneSearchSimilaritiesLMSimilarity_CollectionModel:(id<OrgApacheLuceneSearchSimilaritiesLMSimilarity_CollectionModel>)collectionModel
                                                                            withFloat:(jfloat)lambda {
  OrgApacheLuceneSearchSimilaritiesLMJelinekMercerSimilarity_initWithOrgApacheLuceneSearchSimilaritiesLMSimilarity_CollectionModel_withFloat_(self, collectionModel, lambda);
  return self;
}

- (instancetype)initWithFloat:(jfloat)lambda {
  OrgApacheLuceneSearchSimilaritiesLMJelinekMercerSimilarity_initWithFloat_(self, lambda);
  return self;
}

- (jfloat)scoreWithOrgApacheLuceneSearchSimilaritiesBasicStats:(OrgApacheLuceneSearchSimilaritiesBasicStats *)stats
                                                     withFloat:(jfloat)freq
                                                     withFloat:(jfloat)docLen {
  return [((OrgApacheLuceneSearchSimilaritiesBasicStats *) nil_chk(stats)) getTotalBoost] * (jfloat) JavaLangMath_logWithDouble_(1 + ((1 - lambda_) * freq / docLen) / (lambda_ * [((OrgApacheLuceneSearchSimilaritiesLMSimilarity_LMStats *) cast_chk(stats, [OrgApacheLuceneSearchSimilaritiesLMSimilarity_LMStats class])) getCollectionProbability]));
}

- (void)explainWithJavaUtilList:(id<JavaUtilList>)subs
withOrgApacheLuceneSearchSimilaritiesBasicStats:(OrgApacheLuceneSearchSimilaritiesBasicStats *)stats
                        withInt:(jint)doc
                      withFloat:(jfloat)freq
                      withFloat:(jfloat)docLen {
  if ([((OrgApacheLuceneSearchSimilaritiesBasicStats *) nil_chk(stats)) getTotalBoost] != 1.0f) {
    [((id<JavaUtilList>) nil_chk(subs)) addWithId:OrgApacheLuceneSearchExplanation_matchWithFloat_withNSString_withOrgApacheLuceneSearchExplanationArray_([stats getTotalBoost], @"boost", [IOSObjectArray arrayWithLength:0 type:OrgApacheLuceneSearchExplanation_class_()])];
  }
  [((id<JavaUtilList>) nil_chk(subs)) addWithId:OrgApacheLuceneSearchExplanation_matchWithFloat_withNSString_withOrgApacheLuceneSearchExplanationArray_(lambda_, @"lambda", [IOSObjectArray arrayWithLength:0 type:OrgApacheLuceneSearchExplanation_class_()])];
  [super explainWithJavaUtilList:subs withOrgApacheLuceneSearchSimilaritiesBasicStats:stats withInt:doc withFloat:freq withFloat:docLen];
}

- (jfloat)getLambda {
  return lambda_;
}

- (NSString *)getName {
  return NSString_java_formatWithJavaUtilLocale_withNSString_withNSObjectArray_(JreLoadStatic(JavaUtilLocale, ROOT), @"Jelinek-Mercer(%f)", [IOSObjectArray arrayWithObjects:(id[]){ JavaLangFloat_valueOfWithFloat_([self getLambda]) } count:1 type:NSObject_class_()]);
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x1, -1, 0, -1, -1, -1, -1 },
    { NULL, NULL, 0x1, -1, 1, -1, -1, -1, -1 },
    { NULL, "F", 0x4, 2, 3, -1, -1, -1, -1 },
    { NULL, "V", 0x4, 4, 5, -1, 6, -1, -1 },
    { NULL, "F", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "LNSString;", 0x1, -1, -1, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  #pragma clang diagnostic ignored "-Wundeclared-selector"
  methods[0].selector = @selector(initWithOrgApacheLuceneSearchSimilaritiesLMSimilarity_CollectionModel:withFloat:);
  methods[1].selector = @selector(initWithFloat:);
  methods[2].selector = @selector(scoreWithOrgApacheLuceneSearchSimilaritiesBasicStats:withFloat:withFloat:);
  methods[3].selector = @selector(explainWithJavaUtilList:withOrgApacheLuceneSearchSimilaritiesBasicStats:withInt:withFloat:withFloat:);
  methods[4].selector = @selector(getLambda);
  methods[5].selector = @selector(getName);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "lambda_", "F", .constantValue.asLong = 0, 0x12, -1, -1, -1, -1 },
  };
  static const void *ptrTable[] = { "LOrgApacheLuceneSearchSimilaritiesLMSimilarity_CollectionModel;F", "F", "score", "LOrgApacheLuceneSearchSimilaritiesBasicStats;FF", "explain", "LJavaUtilList;LOrgApacheLuceneSearchSimilaritiesBasicStats;IFF", "(Ljava/util/List<Lorg/apache/lucene/search/Explanation;>;Lorg/apache/lucene/search/similarities/BasicStats;IFF)V" };
  static const J2ObjcClassInfo _OrgApacheLuceneSearchSimilaritiesLMJelinekMercerSimilarity = { "LMJelinekMercerSimilarity", "org.apache.lucene.search.similarities", ptrTable, methods, fields, 7, 0x1, 6, 1, -1, -1, -1, -1, -1 };
  return &_OrgApacheLuceneSearchSimilaritiesLMJelinekMercerSimilarity;
}

@end

void OrgApacheLuceneSearchSimilaritiesLMJelinekMercerSimilarity_initWithOrgApacheLuceneSearchSimilaritiesLMSimilarity_CollectionModel_withFloat_(OrgApacheLuceneSearchSimilaritiesLMJelinekMercerSimilarity *self, id<OrgApacheLuceneSearchSimilaritiesLMSimilarity_CollectionModel> collectionModel, jfloat lambda) {
  OrgApacheLuceneSearchSimilaritiesLMSimilarity_initWithOrgApacheLuceneSearchSimilaritiesLMSimilarity_CollectionModel_(self, collectionModel);
  self->lambda_ = lambda;
}

OrgApacheLuceneSearchSimilaritiesLMJelinekMercerSimilarity *new_OrgApacheLuceneSearchSimilaritiesLMJelinekMercerSimilarity_initWithOrgApacheLuceneSearchSimilaritiesLMSimilarity_CollectionModel_withFloat_(id<OrgApacheLuceneSearchSimilaritiesLMSimilarity_CollectionModel> collectionModel, jfloat lambda) {
  J2OBJC_NEW_IMPL(OrgApacheLuceneSearchSimilaritiesLMJelinekMercerSimilarity, initWithOrgApacheLuceneSearchSimilaritiesLMSimilarity_CollectionModel_withFloat_, collectionModel, lambda)
}

OrgApacheLuceneSearchSimilaritiesLMJelinekMercerSimilarity *create_OrgApacheLuceneSearchSimilaritiesLMJelinekMercerSimilarity_initWithOrgApacheLuceneSearchSimilaritiesLMSimilarity_CollectionModel_withFloat_(id<OrgApacheLuceneSearchSimilaritiesLMSimilarity_CollectionModel> collectionModel, jfloat lambda) {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneSearchSimilaritiesLMJelinekMercerSimilarity, initWithOrgApacheLuceneSearchSimilaritiesLMSimilarity_CollectionModel_withFloat_, collectionModel, lambda)
}

void OrgApacheLuceneSearchSimilaritiesLMJelinekMercerSimilarity_initWithFloat_(OrgApacheLuceneSearchSimilaritiesLMJelinekMercerSimilarity *self, jfloat lambda) {
  OrgApacheLuceneSearchSimilaritiesLMSimilarity_init(self);
  self->lambda_ = lambda;
}

OrgApacheLuceneSearchSimilaritiesLMJelinekMercerSimilarity *new_OrgApacheLuceneSearchSimilaritiesLMJelinekMercerSimilarity_initWithFloat_(jfloat lambda) {
  J2OBJC_NEW_IMPL(OrgApacheLuceneSearchSimilaritiesLMJelinekMercerSimilarity, initWithFloat_, lambda)
}

OrgApacheLuceneSearchSimilaritiesLMJelinekMercerSimilarity *create_OrgApacheLuceneSearchSimilaritiesLMJelinekMercerSimilarity_initWithFloat_(jfloat lambda) {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneSearchSimilaritiesLMJelinekMercerSimilarity, initWithFloat_, lambda)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneSearchSimilaritiesLMJelinekMercerSimilarity)
