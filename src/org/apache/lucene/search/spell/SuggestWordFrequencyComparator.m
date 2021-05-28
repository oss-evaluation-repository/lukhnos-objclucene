//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./suggest/src/java/org/apache/lucene/search/spell/SuggestWordFrequencyComparator.java
//

#include "J2ObjC_source.h"
#include "java/util/Comparator.h"
#include "java/util/function/Function.h"
#include "java/util/function/ToDoubleFunction.h"
#include "java/util/function/ToIntFunction.h"
#include "java/util/function/ToLongFunction.h"
#include "org/apache/lucene/search/spell/SuggestWord.h"
#include "org/apache/lucene/search/spell/SuggestWordFrequencyComparator.h"

#if __has_feature(objc_arc)
#error "org/apache/lucene/search/spell/SuggestWordFrequencyComparator must not be compiled with ARC (-fobjc-arc)"
#endif

#pragma clang diagnostic ignored "-Wprotocol"

@implementation OrgApacheLuceneSearchSpellSuggestWordFrequencyComparator

J2OBJC_IGNORE_DESIGNATED_BEGIN
- (instancetype)init {
  OrgApacheLuceneSearchSpellSuggestWordFrequencyComparator_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END

- (jint)compareWithId:(OrgApacheLuceneSearchSpellSuggestWord *)first
               withId:(OrgApacheLuceneSearchSpellSuggestWord *)second {
  if (((OrgApacheLuceneSearchSpellSuggestWord *) nil_chk(first))->freq_ > ((OrgApacheLuceneSearchSpellSuggestWord *) nil_chk(second))->freq_) {
    return 1;
  }
  if (first->freq_ < second->freq_) {
    return -1;
  }
  if (first->score_ > second->score_) {
    return 1;
  }
  if (first->score_ < second->score_) {
    return -1;
  }
  return [((NSString *) nil_chk(second->string_)) compareToWithId:first->string_];
}

- (id<JavaUtilComparator>)reversed {
  return JavaUtilComparator_reversed(self);
}

- (id<JavaUtilComparator>)thenComparingWithJavaUtilComparator:(id<JavaUtilComparator>)arg0 {
  return JavaUtilComparator_thenComparingWithJavaUtilComparator_(self, arg0);
}

- (id<JavaUtilComparator>)thenComparingWithJavaUtilFunctionFunction:(id<JavaUtilFunctionFunction>)arg0
                                             withJavaUtilComparator:(id<JavaUtilComparator>)arg1 {
  return JavaUtilComparator_thenComparingWithJavaUtilFunctionFunction_withJavaUtilComparator_(self, arg0, arg1);
}

- (id<JavaUtilComparator>)thenComparingWithJavaUtilFunctionFunction:(id<JavaUtilFunctionFunction>)arg0 {
  return JavaUtilComparator_thenComparingWithJavaUtilFunctionFunction_(self, arg0);
}

- (id<JavaUtilComparator>)thenComparingIntWithJavaUtilFunctionToIntFunction:(id<JavaUtilFunctionToIntFunction>)arg0 {
  return JavaUtilComparator_thenComparingIntWithJavaUtilFunctionToIntFunction_(self, arg0);
}

- (id<JavaUtilComparator>)thenComparingLongWithJavaUtilFunctionToLongFunction:(id<JavaUtilFunctionToLongFunction>)arg0 {
  return JavaUtilComparator_thenComparingLongWithJavaUtilFunctionToLongFunction_(self, arg0);
}

- (id<JavaUtilComparator>)thenComparingDoubleWithJavaUtilFunctionToDoubleFunction:(id<JavaUtilFunctionToDoubleFunction>)arg0 {
  return JavaUtilComparator_thenComparingDoubleWithJavaUtilFunctionToDoubleFunction_(self, arg0);
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "I", 0x1, 0, 1, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  #pragma clang diagnostic ignored "-Wundeclared-selector"
  methods[0].selector = @selector(init);
  methods[1].selector = @selector(compareWithId:withId:);
  #pragma clang diagnostic pop
  static const void *ptrTable[] = { "compare", "LOrgApacheLuceneSearchSpellSuggestWord;LOrgApacheLuceneSearchSpellSuggestWord;", "Ljava/lang/Object;Ljava/util/Comparator<Lorg/apache/lucene/search/spell/SuggestWord;>;" };
  static const J2ObjcClassInfo _OrgApacheLuceneSearchSpellSuggestWordFrequencyComparator = { "SuggestWordFrequencyComparator", "org.apache.lucene.search.spell", ptrTable, methods, NULL, 7, 0x1, 2, 0, -1, -1, -1, 2, -1 };
  return &_OrgApacheLuceneSearchSpellSuggestWordFrequencyComparator;
}

@end

void OrgApacheLuceneSearchSpellSuggestWordFrequencyComparator_init(OrgApacheLuceneSearchSpellSuggestWordFrequencyComparator *self) {
  NSObject_init(self);
}

OrgApacheLuceneSearchSpellSuggestWordFrequencyComparator *new_OrgApacheLuceneSearchSpellSuggestWordFrequencyComparator_init() {
  J2OBJC_NEW_IMPL(OrgApacheLuceneSearchSpellSuggestWordFrequencyComparator, init)
}

OrgApacheLuceneSearchSpellSuggestWordFrequencyComparator *create_OrgApacheLuceneSearchSpellSuggestWordFrequencyComparator_init() {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneSearchSpellSuggestWordFrequencyComparator, init)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneSearchSpellSuggestWordFrequencyComparator)
