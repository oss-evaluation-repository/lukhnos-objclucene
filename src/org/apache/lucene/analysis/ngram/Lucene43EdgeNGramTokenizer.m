//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./analysis/common/src/java/org/apache/lucene/analysis/ngram/Lucene43EdgeNGramTokenizer.java
//

#include "IOSClass.h"
#include "IOSObjectArray.h"
#include "IOSPrimitiveArray.h"
#include "J2ObjC_source.h"
#include "java/io/Reader.h"
#include "java/lang/Deprecated.h"
#include "java/lang/Enum.h"
#include "java/lang/IllegalArgumentException.h"
#include "java/lang/Math.h"
#include "java/lang/annotation/Annotation.h"
#include "org/apache/lucene/analysis/Tokenizer.h"
#include "org/apache/lucene/analysis/ngram/Lucene43EdgeNGramTokenizer.h"
#include "org/apache/lucene/analysis/tokenattributes/CharTermAttribute.h"
#include "org/apache/lucene/analysis/tokenattributes/OffsetAttribute.h"
#include "org/apache/lucene/analysis/tokenattributes/PositionIncrementAttribute.h"
#include "org/apache/lucene/util/ArrayUtil.h"
#include "org/apache/lucene/util/AttributeFactory.h"

#if __has_feature(objc_arc)
#error "org/apache/lucene/analysis/ngram/Lucene43EdgeNGramTokenizer must not be compiled with ARC (-fobjc-arc)"
#endif

@interface OrgApacheLuceneAnalysisNgramLucene43EdgeNGramTokenizer () {
 @public
  id<OrgApacheLuceneAnalysisTokenattributesCharTermAttribute> termAtt_;
  id<OrgApacheLuceneAnalysisTokenattributesOffsetAttribute> offsetAtt_;
  id<OrgApacheLuceneAnalysisTokenattributesPositionIncrementAttribute> posIncrAtt_;
  jint minGram_;
  jint maxGram_;
  jint gramSize_;
  OrgApacheLuceneAnalysisNgramLucene43EdgeNGramTokenizer_Side *side_;
  jboolean started_;
  jint inLen_;
  jint charsRead_;
  NSString *inStr_;
}

- (void)init__WithOrgApacheLuceneAnalysisNgramLucene43EdgeNGramTokenizer_Side:(OrgApacheLuceneAnalysisNgramLucene43EdgeNGramTokenizer_Side *)side
                                                                      withInt:(jint)minGram
                                                                      withInt:(jint)maxGram OBJC_METHOD_FAMILY_NONE;

@end

J2OBJC_FIELD_SETTER(OrgApacheLuceneAnalysisNgramLucene43EdgeNGramTokenizer, termAtt_, id<OrgApacheLuceneAnalysisTokenattributesCharTermAttribute>)
J2OBJC_FIELD_SETTER(OrgApacheLuceneAnalysisNgramLucene43EdgeNGramTokenizer, offsetAtt_, id<OrgApacheLuceneAnalysisTokenattributesOffsetAttribute>)
J2OBJC_FIELD_SETTER(OrgApacheLuceneAnalysisNgramLucene43EdgeNGramTokenizer, posIncrAtt_, id<OrgApacheLuceneAnalysisTokenattributesPositionIncrementAttribute>)
J2OBJC_FIELD_SETTER(OrgApacheLuceneAnalysisNgramLucene43EdgeNGramTokenizer, side_, OrgApacheLuceneAnalysisNgramLucene43EdgeNGramTokenizer_Side *)
J2OBJC_FIELD_SETTER(OrgApacheLuceneAnalysisNgramLucene43EdgeNGramTokenizer, inStr_, NSString *)

__attribute__((unused)) static void OrgApacheLuceneAnalysisNgramLucene43EdgeNGramTokenizer_init__WithOrgApacheLuceneAnalysisNgramLucene43EdgeNGramTokenizer_Side_withInt_withInt_(OrgApacheLuceneAnalysisNgramLucene43EdgeNGramTokenizer *self, OrgApacheLuceneAnalysisNgramLucene43EdgeNGramTokenizer_Side *side, jint minGram, jint maxGram);

__attribute__((unused)) static IOSObjectArray *OrgApacheLuceneAnalysisNgramLucene43EdgeNGramTokenizer__Annotations$0(void);

__attribute__((unused)) static IOSObjectArray *OrgApacheLuceneAnalysisNgramLucene43EdgeNGramTokenizer__Annotations$1(void);

__attribute__((unused)) static void OrgApacheLuceneAnalysisNgramLucene43EdgeNGramTokenizer_Side_initWithNSString_withInt_(OrgApacheLuceneAnalysisNgramLucene43EdgeNGramTokenizer_Side *self, NSString *__name, jint __ordinal);

@interface OrgApacheLuceneAnalysisNgramLucene43EdgeNGramTokenizer_Side_1 : OrgApacheLuceneAnalysisNgramLucene43EdgeNGramTokenizer_Side

- (NSString *)getLabel;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneAnalysisNgramLucene43EdgeNGramTokenizer_Side_1)

__attribute__((unused)) static void OrgApacheLuceneAnalysisNgramLucene43EdgeNGramTokenizer_Side_1_initWithNSString_withInt_(OrgApacheLuceneAnalysisNgramLucene43EdgeNGramTokenizer_Side_1 *self, NSString *__name, jint __ordinal);

@interface OrgApacheLuceneAnalysisNgramLucene43EdgeNGramTokenizer_Side_2 : OrgApacheLuceneAnalysisNgramLucene43EdgeNGramTokenizer_Side

- (NSString *)getLabel;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneAnalysisNgramLucene43EdgeNGramTokenizer_Side_2)

__attribute__((unused)) static void OrgApacheLuceneAnalysisNgramLucene43EdgeNGramTokenizer_Side_2_initWithNSString_withInt_(OrgApacheLuceneAnalysisNgramLucene43EdgeNGramTokenizer_Side_2 *self, NSString *__name, jint __ordinal);

J2OBJC_INITIALIZED_DEFN(OrgApacheLuceneAnalysisNgramLucene43EdgeNGramTokenizer)

OrgApacheLuceneAnalysisNgramLucene43EdgeNGramTokenizer_Side *OrgApacheLuceneAnalysisNgramLucene43EdgeNGramTokenizer_DEFAULT_SIDE;

@implementation OrgApacheLuceneAnalysisNgramLucene43EdgeNGramTokenizer

+ (OrgApacheLuceneAnalysisNgramLucene43EdgeNGramTokenizer_Side *)DEFAULT_SIDE {
  return OrgApacheLuceneAnalysisNgramLucene43EdgeNGramTokenizer_DEFAULT_SIDE;
}

+ (jint)DEFAULT_MAX_GRAM_SIZE {
  return OrgApacheLuceneAnalysisNgramLucene43EdgeNGramTokenizer_DEFAULT_MAX_GRAM_SIZE;
}

+ (jint)DEFAULT_MIN_GRAM_SIZE {
  return OrgApacheLuceneAnalysisNgramLucene43EdgeNGramTokenizer_DEFAULT_MIN_GRAM_SIZE;
}

- (instancetype)initWithOrgApacheLuceneAnalysisNgramLucene43EdgeNGramTokenizer_Side:(OrgApacheLuceneAnalysisNgramLucene43EdgeNGramTokenizer_Side *)side
                                                                            withInt:(jint)minGram
                                                                            withInt:(jint)maxGram {
  OrgApacheLuceneAnalysisNgramLucene43EdgeNGramTokenizer_initWithOrgApacheLuceneAnalysisNgramLucene43EdgeNGramTokenizer_Side_withInt_withInt_(self, side, minGram, maxGram);
  return self;
}

- (instancetype)initWithOrgApacheLuceneUtilAttributeFactory:(OrgApacheLuceneUtilAttributeFactory *)factory
withOrgApacheLuceneAnalysisNgramLucene43EdgeNGramTokenizer_Side:(OrgApacheLuceneAnalysisNgramLucene43EdgeNGramTokenizer_Side *)side
                                                    withInt:(jint)minGram
                                                    withInt:(jint)maxGram {
  OrgApacheLuceneAnalysisNgramLucene43EdgeNGramTokenizer_initWithOrgApacheLuceneUtilAttributeFactory_withOrgApacheLuceneAnalysisNgramLucene43EdgeNGramTokenizer_Side_withInt_withInt_(self, factory, side, minGram, maxGram);
  return self;
}

- (instancetype)initWithOrgApacheLuceneUtilAttributeFactory:(OrgApacheLuceneUtilAttributeFactory *)factory
                                               withNSString:(NSString *)sideLabel
                                                    withInt:(jint)minGram
                                                    withInt:(jint)maxGram {
  OrgApacheLuceneAnalysisNgramLucene43EdgeNGramTokenizer_initWithOrgApacheLuceneUtilAttributeFactory_withNSString_withInt_withInt_(self, factory, sideLabel, minGram, maxGram);
  return self;
}

- (instancetype)initWithInt:(jint)minGram
                    withInt:(jint)maxGram {
  OrgApacheLuceneAnalysisNgramLucene43EdgeNGramTokenizer_initWithInt_withInt_(self, minGram, maxGram);
  return self;
}

- (instancetype)initWithNSString:(NSString *)sideLabel
                         withInt:(jint)minGram
                         withInt:(jint)maxGram {
  OrgApacheLuceneAnalysisNgramLucene43EdgeNGramTokenizer_initWithNSString_withInt_withInt_(self, sideLabel, minGram, maxGram);
  return self;
}

- (instancetype)initWithOrgApacheLuceneUtilAttributeFactory:(OrgApacheLuceneUtilAttributeFactory *)factory
                                                    withInt:(jint)minGram
                                                    withInt:(jint)maxGram {
  OrgApacheLuceneAnalysisNgramLucene43EdgeNGramTokenizer_initWithOrgApacheLuceneUtilAttributeFactory_withInt_withInt_(self, factory, minGram, maxGram);
  return self;
}

- (void)init__WithOrgApacheLuceneAnalysisNgramLucene43EdgeNGramTokenizer_Side:(OrgApacheLuceneAnalysisNgramLucene43EdgeNGramTokenizer_Side *)side
                                                                      withInt:(jint)minGram
                                                                      withInt:(jint)maxGram {
  OrgApacheLuceneAnalysisNgramLucene43EdgeNGramTokenizer_init__WithOrgApacheLuceneAnalysisNgramLucene43EdgeNGramTokenizer_Side_withInt_withInt_(self, side, minGram, maxGram);
}

- (jboolean)incrementToken {
  [self clearAttributes];
  if (!started_) {
    started_ = true;
    gramSize_ = minGram_;
    jint limit = side_ == JreLoadEnum(OrgApacheLuceneAnalysisNgramLucene43EdgeNGramTokenizer_Side, FRONT) ? maxGram_ : 1024;
    IOSCharArray *chars = [IOSCharArray arrayWithLength:JavaLangMath_minWithInt_withInt_(1024, limit)];
    charsRead_ = 0;
    jboolean exhausted = false;
    while (charsRead_ < limit) {
      jint inc = [((JavaIoReader *) nil_chk(input_)) readWithCharArray:chars withInt:charsRead_ withInt:((IOSCharArray *) nil_chk(chars))->size_ - charsRead_];
      if (inc == -1) {
        exhausted = true;
        break;
      }
      charsRead_ += inc;
      if (charsRead_ == chars->size_ && charsRead_ < limit) {
        chars = OrgApacheLuceneUtilArrayUtil_growWithCharArray_(chars);
      }
    }
    JreStrongAssign(&inStr_, [NSString java_stringWithCharacters:chars offset:0 length:charsRead_]);
    JreStrongAssign(&inStr_, [inStr_ java_trim]);
    if (!exhausted) {
      IOSCharArray *throwaway = [IOSCharArray arrayWithLength:1024];
      while (true) {
        jint inc = [((JavaIoReader *) nil_chk(input_)) readWithCharArray:throwaway withInt:0 withInt:throwaway->size_];
        if (inc == -1) {
          break;
        }
        charsRead_ += inc;
      }
    }
    inLen_ = [((NSString *) nil_chk(inStr_)) java_length];
    if (inLen_ == 0) {
      return false;
    }
    [((id<OrgApacheLuceneAnalysisTokenattributesPositionIncrementAttribute>) nil_chk(posIncrAtt_)) setPositionIncrementWithInt:1];
  }
  else {
    [((id<OrgApacheLuceneAnalysisTokenattributesPositionIncrementAttribute>) nil_chk(posIncrAtt_)) setPositionIncrementWithInt:0];
  }
  if (gramSize_ > inLen_) {
    return false;
  }
  if (gramSize_ > maxGram_ || gramSize_ > inLen_) {
    return false;
  }
  jint start = side_ == JreLoadEnum(OrgApacheLuceneAnalysisNgramLucene43EdgeNGramTokenizer_Side, FRONT) ? 0 : inLen_ - gramSize_;
  jint end = start + gramSize_;
  [((id<OrgApacheLuceneAnalysisTokenattributesCharTermAttribute>) nil_chk([((id<OrgApacheLuceneAnalysisTokenattributesCharTermAttribute>) nil_chk(termAtt_)) setEmpty])) appendWithJavaLangCharSequence:inStr_ withInt:start withInt:end];
  [((id<OrgApacheLuceneAnalysisTokenattributesOffsetAttribute>) nil_chk(offsetAtt_)) setOffsetWithInt:[self correctOffsetWithInt:start] withInt:[self correctOffsetWithInt:end]];
  gramSize_++;
  return true;
}

- (void)end {
  [super end];
  jint finalOffset = [self correctOffsetWithInt:charsRead_];
  [((id<OrgApacheLuceneAnalysisTokenattributesOffsetAttribute>) nil_chk(self->offsetAtt_)) setOffsetWithInt:finalOffset withInt:finalOffset];
}

- (void)reset {
  [super reset];
  started_ = false;
}

- (void)dealloc {
  RELEASE_(termAtt_);
  RELEASE_(offsetAtt_);
  RELEASE_(posIncrAtt_);
  RELEASE_(side_);
  RELEASE_(inStr_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x1, -1, 0, -1, -1, -1, -1 },
    { NULL, NULL, 0x1, -1, 1, -1, -1, -1, -1 },
    { NULL, NULL, 0x1, -1, 2, -1, -1, -1, -1 },
    { NULL, NULL, 0x1, -1, 3, -1, -1, -1, -1 },
    { NULL, NULL, 0x1, -1, 4, -1, -1, 5, -1 },
    { NULL, NULL, 0x1, -1, 6, -1, -1, -1, -1 },
    { NULL, "V", 0x2, 7, 0, -1, -1, -1, -1 },
    { NULL, "Z", 0x1, -1, -1, 8, -1, -1, -1 },
    { NULL, "V", 0x1, -1, -1, 8, -1, -1, -1 },
    { NULL, "V", 0x1, -1, -1, 8, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  #pragma clang diagnostic ignored "-Wundeclared-selector"
  methods[0].selector = @selector(initWithOrgApacheLuceneAnalysisNgramLucene43EdgeNGramTokenizer_Side:withInt:withInt:);
  methods[1].selector = @selector(initWithOrgApacheLuceneUtilAttributeFactory:withOrgApacheLuceneAnalysisNgramLucene43EdgeNGramTokenizer_Side:withInt:withInt:);
  methods[2].selector = @selector(initWithOrgApacheLuceneUtilAttributeFactory:withNSString:withInt:withInt:);
  methods[3].selector = @selector(initWithInt:withInt:);
  methods[4].selector = @selector(initWithNSString:withInt:withInt:);
  methods[5].selector = @selector(initWithOrgApacheLuceneUtilAttributeFactory:withInt:withInt:);
  methods[6].selector = @selector(init__WithOrgApacheLuceneAnalysisNgramLucene43EdgeNGramTokenizer_Side:withInt:withInt:);
  methods[7].selector = @selector(incrementToken);
  methods[8].selector = @selector(end);
  methods[9].selector = @selector(reset);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "DEFAULT_SIDE", "LOrgApacheLuceneAnalysisNgramLucene43EdgeNGramTokenizer_Side;", .constantValue.asLong = 0, 0x19, -1, 9, -1, -1 },
    { "DEFAULT_MAX_GRAM_SIZE", "I", .constantValue.asInt = OrgApacheLuceneAnalysisNgramLucene43EdgeNGramTokenizer_DEFAULT_MAX_GRAM_SIZE, 0x19, -1, -1, -1, -1 },
    { "DEFAULT_MIN_GRAM_SIZE", "I", .constantValue.asInt = OrgApacheLuceneAnalysisNgramLucene43EdgeNGramTokenizer_DEFAULT_MIN_GRAM_SIZE, 0x19, -1, -1, -1, -1 },
    { "termAtt_", "LOrgApacheLuceneAnalysisTokenattributesCharTermAttribute;", .constantValue.asLong = 0, 0x12, -1, -1, -1, -1 },
    { "offsetAtt_", "LOrgApacheLuceneAnalysisTokenattributesOffsetAttribute;", .constantValue.asLong = 0, 0x12, -1, -1, -1, -1 },
    { "posIncrAtt_", "LOrgApacheLuceneAnalysisTokenattributesPositionIncrementAttribute;", .constantValue.asLong = 0, 0x12, -1, -1, -1, -1 },
    { "minGram_", "I", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
    { "maxGram_", "I", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
    { "gramSize_", "I", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
    { "side_", "LOrgApacheLuceneAnalysisNgramLucene43EdgeNGramTokenizer_Side;", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
    { "started_", "Z", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
    { "inLen_", "I", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
    { "charsRead_", "I", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
    { "inStr_", "LNSString;", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
  };
  static const void *ptrTable[] = { "LOrgApacheLuceneAnalysisNgramLucene43EdgeNGramTokenizer_Side;II", "LOrgApacheLuceneUtilAttributeFactory;LOrgApacheLuceneAnalysisNgramLucene43EdgeNGramTokenizer_Side;II", "LOrgApacheLuceneUtilAttributeFactory;LNSString;II", "II", "LNSString;II", (void *)&OrgApacheLuceneAnalysisNgramLucene43EdgeNGramTokenizer__Annotations$0, "LOrgApacheLuceneUtilAttributeFactory;II", "init", "LJavaIoIOException;", &OrgApacheLuceneAnalysisNgramLucene43EdgeNGramTokenizer_DEFAULT_SIDE, "LOrgApacheLuceneAnalysisNgramLucene43EdgeNGramTokenizer_Side;", (void *)&OrgApacheLuceneAnalysisNgramLucene43EdgeNGramTokenizer__Annotations$1 };
  static const J2ObjcClassInfo _OrgApacheLuceneAnalysisNgramLucene43EdgeNGramTokenizer = { "Lucene43EdgeNGramTokenizer", "org.apache.lucene.analysis.ngram", ptrTable, methods, fields, 7, 0x11, 10, 14, -1, 10, -1, -1, 11 };
  return &_OrgApacheLuceneAnalysisNgramLucene43EdgeNGramTokenizer;
}

+ (void)initialize {
  if (self == [OrgApacheLuceneAnalysisNgramLucene43EdgeNGramTokenizer class]) {
    JreStrongAssign(&OrgApacheLuceneAnalysisNgramLucene43EdgeNGramTokenizer_DEFAULT_SIDE, JreLoadEnum(OrgApacheLuceneAnalysisNgramLucene43EdgeNGramTokenizer_Side, FRONT));
    J2OBJC_SET_INITIALIZED(OrgApacheLuceneAnalysisNgramLucene43EdgeNGramTokenizer)
  }
}

@end

void OrgApacheLuceneAnalysisNgramLucene43EdgeNGramTokenizer_initWithOrgApacheLuceneAnalysisNgramLucene43EdgeNGramTokenizer_Side_withInt_withInt_(OrgApacheLuceneAnalysisNgramLucene43EdgeNGramTokenizer *self, OrgApacheLuceneAnalysisNgramLucene43EdgeNGramTokenizer_Side *side, jint minGram, jint maxGram) {
  OrgApacheLuceneAnalysisTokenizer_init(self);
  JreStrongAssign(&self->termAtt_, [self addAttributeWithIOSClass:OrgApacheLuceneAnalysisTokenattributesCharTermAttribute_class_()]);
  JreStrongAssign(&self->offsetAtt_, [self addAttributeWithIOSClass:OrgApacheLuceneAnalysisTokenattributesOffsetAttribute_class_()]);
  JreStrongAssign(&self->posIncrAtt_, [self addAttributeWithIOSClass:OrgApacheLuceneAnalysisTokenattributesPositionIncrementAttribute_class_()]);
  OrgApacheLuceneAnalysisNgramLucene43EdgeNGramTokenizer_init__WithOrgApacheLuceneAnalysisNgramLucene43EdgeNGramTokenizer_Side_withInt_withInt_(self, side, minGram, maxGram);
}

OrgApacheLuceneAnalysisNgramLucene43EdgeNGramTokenizer *new_OrgApacheLuceneAnalysisNgramLucene43EdgeNGramTokenizer_initWithOrgApacheLuceneAnalysisNgramLucene43EdgeNGramTokenizer_Side_withInt_withInt_(OrgApacheLuceneAnalysisNgramLucene43EdgeNGramTokenizer_Side *side, jint minGram, jint maxGram) {
  J2OBJC_NEW_IMPL(OrgApacheLuceneAnalysisNgramLucene43EdgeNGramTokenizer, initWithOrgApacheLuceneAnalysisNgramLucene43EdgeNGramTokenizer_Side_withInt_withInt_, side, minGram, maxGram)
}

OrgApacheLuceneAnalysisNgramLucene43EdgeNGramTokenizer *create_OrgApacheLuceneAnalysisNgramLucene43EdgeNGramTokenizer_initWithOrgApacheLuceneAnalysisNgramLucene43EdgeNGramTokenizer_Side_withInt_withInt_(OrgApacheLuceneAnalysisNgramLucene43EdgeNGramTokenizer_Side *side, jint minGram, jint maxGram) {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneAnalysisNgramLucene43EdgeNGramTokenizer, initWithOrgApacheLuceneAnalysisNgramLucene43EdgeNGramTokenizer_Side_withInt_withInt_, side, minGram, maxGram)
}

void OrgApacheLuceneAnalysisNgramLucene43EdgeNGramTokenizer_initWithOrgApacheLuceneUtilAttributeFactory_withOrgApacheLuceneAnalysisNgramLucene43EdgeNGramTokenizer_Side_withInt_withInt_(OrgApacheLuceneAnalysisNgramLucene43EdgeNGramTokenizer *self, OrgApacheLuceneUtilAttributeFactory *factory, OrgApacheLuceneAnalysisNgramLucene43EdgeNGramTokenizer_Side *side, jint minGram, jint maxGram) {
  OrgApacheLuceneAnalysisTokenizer_initWithOrgApacheLuceneUtilAttributeFactory_(self, factory);
  JreStrongAssign(&self->termAtt_, [self addAttributeWithIOSClass:OrgApacheLuceneAnalysisTokenattributesCharTermAttribute_class_()]);
  JreStrongAssign(&self->offsetAtt_, [self addAttributeWithIOSClass:OrgApacheLuceneAnalysisTokenattributesOffsetAttribute_class_()]);
  JreStrongAssign(&self->posIncrAtt_, [self addAttributeWithIOSClass:OrgApacheLuceneAnalysisTokenattributesPositionIncrementAttribute_class_()]);
  OrgApacheLuceneAnalysisNgramLucene43EdgeNGramTokenizer_init__WithOrgApacheLuceneAnalysisNgramLucene43EdgeNGramTokenizer_Side_withInt_withInt_(self, side, minGram, maxGram);
}

OrgApacheLuceneAnalysisNgramLucene43EdgeNGramTokenizer *new_OrgApacheLuceneAnalysisNgramLucene43EdgeNGramTokenizer_initWithOrgApacheLuceneUtilAttributeFactory_withOrgApacheLuceneAnalysisNgramLucene43EdgeNGramTokenizer_Side_withInt_withInt_(OrgApacheLuceneUtilAttributeFactory *factory, OrgApacheLuceneAnalysisNgramLucene43EdgeNGramTokenizer_Side *side, jint minGram, jint maxGram) {
  J2OBJC_NEW_IMPL(OrgApacheLuceneAnalysisNgramLucene43EdgeNGramTokenizer, initWithOrgApacheLuceneUtilAttributeFactory_withOrgApacheLuceneAnalysisNgramLucene43EdgeNGramTokenizer_Side_withInt_withInt_, factory, side, minGram, maxGram)
}

OrgApacheLuceneAnalysisNgramLucene43EdgeNGramTokenizer *create_OrgApacheLuceneAnalysisNgramLucene43EdgeNGramTokenizer_initWithOrgApacheLuceneUtilAttributeFactory_withOrgApacheLuceneAnalysisNgramLucene43EdgeNGramTokenizer_Side_withInt_withInt_(OrgApacheLuceneUtilAttributeFactory *factory, OrgApacheLuceneAnalysisNgramLucene43EdgeNGramTokenizer_Side *side, jint minGram, jint maxGram) {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneAnalysisNgramLucene43EdgeNGramTokenizer, initWithOrgApacheLuceneUtilAttributeFactory_withOrgApacheLuceneAnalysisNgramLucene43EdgeNGramTokenizer_Side_withInt_withInt_, factory, side, minGram, maxGram)
}

void OrgApacheLuceneAnalysisNgramLucene43EdgeNGramTokenizer_initWithOrgApacheLuceneUtilAttributeFactory_withNSString_withInt_withInt_(OrgApacheLuceneAnalysisNgramLucene43EdgeNGramTokenizer *self, OrgApacheLuceneUtilAttributeFactory *factory, NSString *sideLabel, jint minGram, jint maxGram) {
  OrgApacheLuceneAnalysisNgramLucene43EdgeNGramTokenizer_initWithOrgApacheLuceneUtilAttributeFactory_withOrgApacheLuceneAnalysisNgramLucene43EdgeNGramTokenizer_Side_withInt_withInt_(self, factory, OrgApacheLuceneAnalysisNgramLucene43EdgeNGramTokenizer_Side_getSideWithNSString_(sideLabel), minGram, maxGram);
}

OrgApacheLuceneAnalysisNgramLucene43EdgeNGramTokenizer *new_OrgApacheLuceneAnalysisNgramLucene43EdgeNGramTokenizer_initWithOrgApacheLuceneUtilAttributeFactory_withNSString_withInt_withInt_(OrgApacheLuceneUtilAttributeFactory *factory, NSString *sideLabel, jint minGram, jint maxGram) {
  J2OBJC_NEW_IMPL(OrgApacheLuceneAnalysisNgramLucene43EdgeNGramTokenizer, initWithOrgApacheLuceneUtilAttributeFactory_withNSString_withInt_withInt_, factory, sideLabel, minGram, maxGram)
}

OrgApacheLuceneAnalysisNgramLucene43EdgeNGramTokenizer *create_OrgApacheLuceneAnalysisNgramLucene43EdgeNGramTokenizer_initWithOrgApacheLuceneUtilAttributeFactory_withNSString_withInt_withInt_(OrgApacheLuceneUtilAttributeFactory *factory, NSString *sideLabel, jint minGram, jint maxGram) {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneAnalysisNgramLucene43EdgeNGramTokenizer, initWithOrgApacheLuceneUtilAttributeFactory_withNSString_withInt_withInt_, factory, sideLabel, minGram, maxGram)
}

void OrgApacheLuceneAnalysisNgramLucene43EdgeNGramTokenizer_initWithInt_withInt_(OrgApacheLuceneAnalysisNgramLucene43EdgeNGramTokenizer *self, jint minGram, jint maxGram) {
  OrgApacheLuceneAnalysisNgramLucene43EdgeNGramTokenizer_initWithOrgApacheLuceneAnalysisNgramLucene43EdgeNGramTokenizer_Side_withInt_withInt_(self, JreLoadEnum(OrgApacheLuceneAnalysisNgramLucene43EdgeNGramTokenizer_Side, FRONT), minGram, maxGram);
}

OrgApacheLuceneAnalysisNgramLucene43EdgeNGramTokenizer *new_OrgApacheLuceneAnalysisNgramLucene43EdgeNGramTokenizer_initWithInt_withInt_(jint minGram, jint maxGram) {
  J2OBJC_NEW_IMPL(OrgApacheLuceneAnalysisNgramLucene43EdgeNGramTokenizer, initWithInt_withInt_, minGram, maxGram)
}

OrgApacheLuceneAnalysisNgramLucene43EdgeNGramTokenizer *create_OrgApacheLuceneAnalysisNgramLucene43EdgeNGramTokenizer_initWithInt_withInt_(jint minGram, jint maxGram) {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneAnalysisNgramLucene43EdgeNGramTokenizer, initWithInt_withInt_, minGram, maxGram)
}

void OrgApacheLuceneAnalysisNgramLucene43EdgeNGramTokenizer_initWithNSString_withInt_withInt_(OrgApacheLuceneAnalysisNgramLucene43EdgeNGramTokenizer *self, NSString *sideLabel, jint minGram, jint maxGram) {
  OrgApacheLuceneAnalysisNgramLucene43EdgeNGramTokenizer_initWithOrgApacheLuceneAnalysisNgramLucene43EdgeNGramTokenizer_Side_withInt_withInt_(self, OrgApacheLuceneAnalysisNgramLucene43EdgeNGramTokenizer_Side_getSideWithNSString_(sideLabel), minGram, maxGram);
}

OrgApacheLuceneAnalysisNgramLucene43EdgeNGramTokenizer *new_OrgApacheLuceneAnalysisNgramLucene43EdgeNGramTokenizer_initWithNSString_withInt_withInt_(NSString *sideLabel, jint minGram, jint maxGram) {
  J2OBJC_NEW_IMPL(OrgApacheLuceneAnalysisNgramLucene43EdgeNGramTokenizer, initWithNSString_withInt_withInt_, sideLabel, minGram, maxGram)
}

OrgApacheLuceneAnalysisNgramLucene43EdgeNGramTokenizer *create_OrgApacheLuceneAnalysisNgramLucene43EdgeNGramTokenizer_initWithNSString_withInt_withInt_(NSString *sideLabel, jint minGram, jint maxGram) {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneAnalysisNgramLucene43EdgeNGramTokenizer, initWithNSString_withInt_withInt_, sideLabel, minGram, maxGram)
}

void OrgApacheLuceneAnalysisNgramLucene43EdgeNGramTokenizer_initWithOrgApacheLuceneUtilAttributeFactory_withInt_withInt_(OrgApacheLuceneAnalysisNgramLucene43EdgeNGramTokenizer *self, OrgApacheLuceneUtilAttributeFactory *factory, jint minGram, jint maxGram) {
  OrgApacheLuceneAnalysisNgramLucene43EdgeNGramTokenizer_initWithOrgApacheLuceneUtilAttributeFactory_withOrgApacheLuceneAnalysisNgramLucene43EdgeNGramTokenizer_Side_withInt_withInt_(self, factory, JreLoadEnum(OrgApacheLuceneAnalysisNgramLucene43EdgeNGramTokenizer_Side, FRONT), minGram, maxGram);
}

OrgApacheLuceneAnalysisNgramLucene43EdgeNGramTokenizer *new_OrgApacheLuceneAnalysisNgramLucene43EdgeNGramTokenizer_initWithOrgApacheLuceneUtilAttributeFactory_withInt_withInt_(OrgApacheLuceneUtilAttributeFactory *factory, jint minGram, jint maxGram) {
  J2OBJC_NEW_IMPL(OrgApacheLuceneAnalysisNgramLucene43EdgeNGramTokenizer, initWithOrgApacheLuceneUtilAttributeFactory_withInt_withInt_, factory, minGram, maxGram)
}

OrgApacheLuceneAnalysisNgramLucene43EdgeNGramTokenizer *create_OrgApacheLuceneAnalysisNgramLucene43EdgeNGramTokenizer_initWithOrgApacheLuceneUtilAttributeFactory_withInt_withInt_(OrgApacheLuceneUtilAttributeFactory *factory, jint minGram, jint maxGram) {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneAnalysisNgramLucene43EdgeNGramTokenizer, initWithOrgApacheLuceneUtilAttributeFactory_withInt_withInt_, factory, minGram, maxGram)
}

void OrgApacheLuceneAnalysisNgramLucene43EdgeNGramTokenizer_init__WithOrgApacheLuceneAnalysisNgramLucene43EdgeNGramTokenizer_Side_withInt_withInt_(OrgApacheLuceneAnalysisNgramLucene43EdgeNGramTokenizer *self, OrgApacheLuceneAnalysisNgramLucene43EdgeNGramTokenizer_Side *side, jint minGram, jint maxGram) {
  if (side == nil) {
    @throw create_JavaLangIllegalArgumentException_initWithNSString_(@"sideLabel must be either front or back");
  }
  if (minGram < 1) {
    @throw create_JavaLangIllegalArgumentException_initWithNSString_(@"minGram must be greater than zero");
  }
  if (minGram > maxGram) {
    @throw create_JavaLangIllegalArgumentException_initWithNSString_(@"minGram must not be greater than maxGram");
  }
  maxGram = JavaLangMath_minWithInt_withInt_(maxGram, 1024);
  self->minGram_ = minGram;
  self->maxGram_ = maxGram;
  JreStrongAssign(&self->side_, side);
}

IOSObjectArray *OrgApacheLuceneAnalysisNgramLucene43EdgeNGramTokenizer__Annotations$0() {
  return [IOSObjectArray arrayWithObjects:(id[]){ create_JavaLangDeprecated() } count:1 type:JavaLangAnnotationAnnotation_class_()];
}

IOSObjectArray *OrgApacheLuceneAnalysisNgramLucene43EdgeNGramTokenizer__Annotations$1() {
  return [IOSObjectArray arrayWithObjects:(id[]){ create_JavaLangDeprecated() } count:1 type:JavaLangAnnotationAnnotation_class_()];
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneAnalysisNgramLucene43EdgeNGramTokenizer)

J2OBJC_INITIALIZED_DEFN(OrgApacheLuceneAnalysisNgramLucene43EdgeNGramTokenizer_Side)

OrgApacheLuceneAnalysisNgramLucene43EdgeNGramTokenizer_Side *OrgApacheLuceneAnalysisNgramLucene43EdgeNGramTokenizer_Side_values_[2];

@implementation OrgApacheLuceneAnalysisNgramLucene43EdgeNGramTokenizer_Side

+ (OrgApacheLuceneAnalysisNgramLucene43EdgeNGramTokenizer_Side *)FRONT {
  return JreEnum(OrgApacheLuceneAnalysisNgramLucene43EdgeNGramTokenizer_Side, FRONT);
}

+ (OrgApacheLuceneAnalysisNgramLucene43EdgeNGramTokenizer_Side *)BACK {
  return JreEnum(OrgApacheLuceneAnalysisNgramLucene43EdgeNGramTokenizer_Side, BACK);
}

- (NSString *)getLabel {
  // can't call an abstract method
  [self doesNotRecognizeSelector:_cmd];
  return 0;
}

+ (OrgApacheLuceneAnalysisNgramLucene43EdgeNGramTokenizer_Side *)getSideWithNSString:(NSString *)sideName {
  return OrgApacheLuceneAnalysisNgramLucene43EdgeNGramTokenizer_Side_getSideWithNSString_(sideName);
}

+ (IOSObjectArray *)values {
  return OrgApacheLuceneAnalysisNgramLucene43EdgeNGramTokenizer_Side_values();
}

+ (OrgApacheLuceneAnalysisNgramLucene43EdgeNGramTokenizer_Side *)valueOfWithNSString:(NSString *)name {
  return OrgApacheLuceneAnalysisNgramLucene43EdgeNGramTokenizer_Side_valueOfWithNSString_(name);
}

- (OrgApacheLuceneAnalysisNgramLucene43EdgeNGramTokenizer_Side_Enum)toNSEnum {
  return (OrgApacheLuceneAnalysisNgramLucene43EdgeNGramTokenizer_Side_Enum)[self ordinal];
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, "LNSString;", 0x401, -1, -1, -1, -1, -1, -1 },
    { NULL, "LOrgApacheLuceneAnalysisNgramLucene43EdgeNGramTokenizer_Side;", 0x9, 0, 1, -1, -1, -1, -1 },
    { NULL, "[LOrgApacheLuceneAnalysisNgramLucene43EdgeNGramTokenizer_Side;", 0x9, -1, -1, -1, -1, -1, -1 },
    { NULL, "LOrgApacheLuceneAnalysisNgramLucene43EdgeNGramTokenizer_Side;", 0x9, 2, 1, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  #pragma clang diagnostic ignored "-Wundeclared-selector"
  methods[0].selector = @selector(getLabel);
  methods[1].selector = @selector(getSideWithNSString:);
  methods[2].selector = @selector(values);
  methods[3].selector = @selector(valueOfWithNSString:);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "FRONT", "LOrgApacheLuceneAnalysisNgramLucene43EdgeNGramTokenizer_Side;", .constantValue.asLong = 0, 0x4019, -1, 3, -1, -1 },
    { "BACK", "LOrgApacheLuceneAnalysisNgramLucene43EdgeNGramTokenizer_Side;", .constantValue.asLong = 0, 0x4019, -1, 4, -1, -1 },
  };
  static const void *ptrTable[] = { "getSide", "LNSString;", "valueOf", &JreEnum(OrgApacheLuceneAnalysisNgramLucene43EdgeNGramTokenizer_Side, FRONT), &JreEnum(OrgApacheLuceneAnalysisNgramLucene43EdgeNGramTokenizer_Side, BACK), "LOrgApacheLuceneAnalysisNgramLucene43EdgeNGramTokenizer;", "Ljava/lang/Enum<Lorg/apache/lucene/analysis/ngram/Lucene43EdgeNGramTokenizer$Side;>;" };
  static const J2ObjcClassInfo _OrgApacheLuceneAnalysisNgramLucene43EdgeNGramTokenizer_Side = { "Side", "org.apache.lucene.analysis.ngram", ptrTable, methods, fields, 7, 0x4409, 4, 2, 5, -1, -1, 6, -1 };
  return &_OrgApacheLuceneAnalysisNgramLucene43EdgeNGramTokenizer_Side;
}

+ (void)initialize {
  if (self == [OrgApacheLuceneAnalysisNgramLucene43EdgeNGramTokenizer_Side class]) {
    size_t allocSize = 0;
    size_t objSize_FRONT = class_getInstanceSize([OrgApacheLuceneAnalysisNgramLucene43EdgeNGramTokenizer_Side_1 class]);
    allocSize += objSize_FRONT;
    size_t objSize_BACK = class_getInstanceSize([OrgApacheLuceneAnalysisNgramLucene43EdgeNGramTokenizer_Side_2 class]);
    allocSize += objSize_BACK;
    uintptr_t ptr = (uintptr_t)calloc(allocSize, 1);
    id e;
    ((void) (JreEnum(OrgApacheLuceneAnalysisNgramLucene43EdgeNGramTokenizer_Side, FRONT) = e = objc_constructInstance([OrgApacheLuceneAnalysisNgramLucene43EdgeNGramTokenizer_Side_1 class], (void *)ptr)), ptr += objSize_FRONT);
    OrgApacheLuceneAnalysisNgramLucene43EdgeNGramTokenizer_Side_1_initWithNSString_withInt_(e, @"FRONT", 0);
    ((void) (JreEnum(OrgApacheLuceneAnalysisNgramLucene43EdgeNGramTokenizer_Side, BACK) = e = objc_constructInstance([OrgApacheLuceneAnalysisNgramLucene43EdgeNGramTokenizer_Side_2 class], (void *)ptr)), ptr += objSize_BACK);
    OrgApacheLuceneAnalysisNgramLucene43EdgeNGramTokenizer_Side_2_initWithNSString_withInt_(e, @"BACK", 1);
    J2OBJC_SET_INITIALIZED(OrgApacheLuceneAnalysisNgramLucene43EdgeNGramTokenizer_Side)
  }
}

@end

void OrgApacheLuceneAnalysisNgramLucene43EdgeNGramTokenizer_Side_initWithNSString_withInt_(OrgApacheLuceneAnalysisNgramLucene43EdgeNGramTokenizer_Side *self, NSString *__name, jint __ordinal) {
  JavaLangEnum_initWithNSString_withInt_(self, __name, __ordinal);
}

OrgApacheLuceneAnalysisNgramLucene43EdgeNGramTokenizer_Side *OrgApacheLuceneAnalysisNgramLucene43EdgeNGramTokenizer_Side_getSideWithNSString_(NSString *sideName) {
  OrgApacheLuceneAnalysisNgramLucene43EdgeNGramTokenizer_Side_initialize();
  if ([((NSString *) nil_chk([((OrgApacheLuceneAnalysisNgramLucene43EdgeNGramTokenizer_Side *) nil_chk(JreEnum(OrgApacheLuceneAnalysisNgramLucene43EdgeNGramTokenizer_Side, FRONT))) getLabel])) isEqual:sideName]) {
    return JreEnum(OrgApacheLuceneAnalysisNgramLucene43EdgeNGramTokenizer_Side, FRONT);
  }
  if ([((NSString *) nil_chk([((OrgApacheLuceneAnalysisNgramLucene43EdgeNGramTokenizer_Side *) nil_chk(JreEnum(OrgApacheLuceneAnalysisNgramLucene43EdgeNGramTokenizer_Side, BACK))) getLabel])) isEqual:sideName]) {
    return JreEnum(OrgApacheLuceneAnalysisNgramLucene43EdgeNGramTokenizer_Side, BACK);
  }
  return nil;
}

IOSObjectArray *OrgApacheLuceneAnalysisNgramLucene43EdgeNGramTokenizer_Side_values() {
  OrgApacheLuceneAnalysisNgramLucene43EdgeNGramTokenizer_Side_initialize();
  return [IOSObjectArray arrayWithObjects:OrgApacheLuceneAnalysisNgramLucene43EdgeNGramTokenizer_Side_values_ count:2 type:OrgApacheLuceneAnalysisNgramLucene43EdgeNGramTokenizer_Side_class_()];
}

OrgApacheLuceneAnalysisNgramLucene43EdgeNGramTokenizer_Side *OrgApacheLuceneAnalysisNgramLucene43EdgeNGramTokenizer_Side_valueOfWithNSString_(NSString *name) {
  OrgApacheLuceneAnalysisNgramLucene43EdgeNGramTokenizer_Side_initialize();
  for (int i = 0; i < 2; i++) {
    OrgApacheLuceneAnalysisNgramLucene43EdgeNGramTokenizer_Side *e = OrgApacheLuceneAnalysisNgramLucene43EdgeNGramTokenizer_Side_values_[i];
    if ([name isEqual:[e name]]) {
      return e;
    }
  }
  @throw create_JavaLangIllegalArgumentException_initWithNSString_(name);
  return nil;
}

OrgApacheLuceneAnalysisNgramLucene43EdgeNGramTokenizer_Side *OrgApacheLuceneAnalysisNgramLucene43EdgeNGramTokenizer_Side_fromOrdinal(NSUInteger ordinal) {
  OrgApacheLuceneAnalysisNgramLucene43EdgeNGramTokenizer_Side_initialize();
  if (ordinal >= 2) {
    return nil;
  }
  return OrgApacheLuceneAnalysisNgramLucene43EdgeNGramTokenizer_Side_values_[ordinal];
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneAnalysisNgramLucene43EdgeNGramTokenizer_Side)

@implementation OrgApacheLuceneAnalysisNgramLucene43EdgeNGramTokenizer_Side_1

- (NSString *)getLabel {
  return @"front";
}

- (void)dealloc {
  JreCheckFinalize(self, [OrgApacheLuceneAnalysisNgramLucene43EdgeNGramTokenizer_Side_1 class]);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, "LNSString;", 0x1, -1, -1, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  #pragma clang diagnostic ignored "-Wundeclared-selector"
  methods[0].selector = @selector(getLabel);
  #pragma clang diagnostic pop
  static const void *ptrTable[] = { "LOrgApacheLuceneAnalysisNgramLucene43EdgeNGramTokenizer_Side;" };
  static const J2ObjcClassInfo _OrgApacheLuceneAnalysisNgramLucene43EdgeNGramTokenizer_Side_1 = { "", "org.apache.lucene.analysis.ngram", ptrTable, methods, NULL, 7, 0xc018, 1, 0, 0, -1, -1, -1, -1 };
  return &_OrgApacheLuceneAnalysisNgramLucene43EdgeNGramTokenizer_Side_1;
}

@end

void OrgApacheLuceneAnalysisNgramLucene43EdgeNGramTokenizer_Side_1_initWithNSString_withInt_(OrgApacheLuceneAnalysisNgramLucene43EdgeNGramTokenizer_Side_1 *self, NSString *__name, jint __ordinal) {
  OrgApacheLuceneAnalysisNgramLucene43EdgeNGramTokenizer_Side_initWithNSString_withInt_(self, __name, __ordinal);
}

@implementation OrgApacheLuceneAnalysisNgramLucene43EdgeNGramTokenizer_Side_2

- (NSString *)getLabel {
  return @"back";
}

- (void)dealloc {
  JreCheckFinalize(self, [OrgApacheLuceneAnalysisNgramLucene43EdgeNGramTokenizer_Side_2 class]);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, "LNSString;", 0x1, -1, -1, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  #pragma clang diagnostic ignored "-Wundeclared-selector"
  methods[0].selector = @selector(getLabel);
  #pragma clang diagnostic pop
  static const void *ptrTable[] = { "LOrgApacheLuceneAnalysisNgramLucene43EdgeNGramTokenizer_Side;" };
  static const J2ObjcClassInfo _OrgApacheLuceneAnalysisNgramLucene43EdgeNGramTokenizer_Side_2 = { "", "org.apache.lucene.analysis.ngram", ptrTable, methods, NULL, 7, 0xc018, 1, 0, 0, -1, -1, -1, -1 };
  return &_OrgApacheLuceneAnalysisNgramLucene43EdgeNGramTokenizer_Side_2;
}

@end

void OrgApacheLuceneAnalysisNgramLucene43EdgeNGramTokenizer_Side_2_initWithNSString_withInt_(OrgApacheLuceneAnalysisNgramLucene43EdgeNGramTokenizer_Side_2 *self, NSString *__name, jint __ordinal) {
  OrgApacheLuceneAnalysisNgramLucene43EdgeNGramTokenizer_Side_initWithNSString_withInt_(self, __name, __ordinal);
}
