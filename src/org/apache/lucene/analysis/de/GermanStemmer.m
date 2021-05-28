//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./analysis/common/src/java/org/apache/lucene/analysis/de/GermanStemmer.java
//

#include "IOSPrimitiveArray.h"
#include "J2ObjC_source.h"
#include "java/lang/Character.h"
#include "java/lang/StringBuilder.h"
#include "java/util/Locale.h"
#include "org/apache/lucene/analysis/de/GermanStemmer.h"

#if __has_feature(objc_arc)
#error "org/apache/lucene/analysis/de/GermanStemmer must not be compiled with ARC (-fobjc-arc)"
#endif

@interface OrgApacheLuceneAnalysisDeGermanStemmer () {
 @public
  /*!
   @brief Buffer for the terms while stemming them.
   */
  JavaLangStringBuilder *sb_;
  /*!
   @brief Amount of characters that are removed with <tt>substitute()</tt> while stemming.
   */
  jint substCount_;
}

/*!
 @brief Checks if a term could be stemmed.
 @return true if, and only if, the given term consists in letters.
 */
- (jboolean)isStemmableWithNSString:(NSString *)term;

/*!
 @brief suffix stripping (stemming) on the current term.The stripping is reduced
  to the seven "base" suffixes "e", "s", "n", "t", "em", "er" and * "nd",
  from which all regular suffixes are build of.
 The simplification causes
  some overstemming, and way more irregular stems, but still provides unique.
  discriminators in the most of those cases.
  The algorithm is context free, except of the length restrictions.
 */
- (void)stripWithJavaLangStringBuilder:(JavaLangStringBuilder *)buffer;

/*!
 @brief Does some optimizations on the term.This optimisations are
  contextual.
 */
- (void)optimizeWithJavaLangStringBuilder:(JavaLangStringBuilder *)buffer;

/*!
 @brief Removes a particle denotion ("ge") from a term.
 */
- (void)removeParticleDenotionWithJavaLangStringBuilder:(JavaLangStringBuilder *)buffer;

/*!
 @brief Do some substitutions for the term to reduce overstemming:
  - Substitute Umlauts with their corresponding vowel:<code>äöü -> aou</code>,
    "ß" is substituted by "ss"
  - Substitute a second char of a pair of equal characters with
    an asterisk: <code>??
 -> ?*</code>
  - Substitute some common character combinations with a token:
    <code>sch/ch/ei/ie/ig/st -> $/§/%/&/#/!</code>
 */
- (void)substituteWithJavaLangStringBuilder:(JavaLangStringBuilder *)buffer;

/*!
 @brief Undoes the changes made by substitute().That are character pairs and
  character combinations.
 Umlauts will remain as their corresponding vowel,
  as "ß" remains as "ss".
 */
- (void)resubstituteWithJavaLangStringBuilder:(JavaLangStringBuilder *)buffer;

@end

J2OBJC_FIELD_SETTER(OrgApacheLuceneAnalysisDeGermanStemmer, sb_, JavaLangStringBuilder *)

inline JavaUtilLocale *OrgApacheLuceneAnalysisDeGermanStemmer_get_locale(void);
static JavaUtilLocale *OrgApacheLuceneAnalysisDeGermanStemmer_locale;
J2OBJC_STATIC_FIELD_OBJ_FINAL(OrgApacheLuceneAnalysisDeGermanStemmer, locale, JavaUtilLocale *)

__attribute__((unused)) static jboolean OrgApacheLuceneAnalysisDeGermanStemmer_isStemmableWithNSString_(OrgApacheLuceneAnalysisDeGermanStemmer *self, NSString *term);

__attribute__((unused)) static void OrgApacheLuceneAnalysisDeGermanStemmer_stripWithJavaLangStringBuilder_(OrgApacheLuceneAnalysisDeGermanStemmer *self, JavaLangStringBuilder *buffer);

__attribute__((unused)) static void OrgApacheLuceneAnalysisDeGermanStemmer_optimizeWithJavaLangStringBuilder_(OrgApacheLuceneAnalysisDeGermanStemmer *self, JavaLangStringBuilder *buffer);

__attribute__((unused)) static void OrgApacheLuceneAnalysisDeGermanStemmer_removeParticleDenotionWithJavaLangStringBuilder_(OrgApacheLuceneAnalysisDeGermanStemmer *self, JavaLangStringBuilder *buffer);

__attribute__((unused)) static void OrgApacheLuceneAnalysisDeGermanStemmer_substituteWithJavaLangStringBuilder_(OrgApacheLuceneAnalysisDeGermanStemmer *self, JavaLangStringBuilder *buffer);

__attribute__((unused)) static void OrgApacheLuceneAnalysisDeGermanStemmer_resubstituteWithJavaLangStringBuilder_(OrgApacheLuceneAnalysisDeGermanStemmer *self, JavaLangStringBuilder *buffer);

J2OBJC_INITIALIZED_DEFN(OrgApacheLuceneAnalysisDeGermanStemmer)

@implementation OrgApacheLuceneAnalysisDeGermanStemmer

J2OBJC_IGNORE_DESIGNATED_BEGIN
- (instancetype)init {
  OrgApacheLuceneAnalysisDeGermanStemmer_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END

- (NSString *)stemWithNSString:(NSString *)term {
  term = [((NSString *) nil_chk(term)) java_lowercaseStringWithJRELocale:OrgApacheLuceneAnalysisDeGermanStemmer_locale];
  if (!OrgApacheLuceneAnalysisDeGermanStemmer_isStemmableWithNSString_(self, term)) return term;
  [((JavaLangStringBuilder *) nil_chk(sb_)) delete__WithInt:0 withInt:[sb_ java_length]];
  [((JavaLangStringBuilder *) nil_chk(sb_)) insertWithInt:0 withNSString:term];
  OrgApacheLuceneAnalysisDeGermanStemmer_substituteWithJavaLangStringBuilder_(self, sb_);
  OrgApacheLuceneAnalysisDeGermanStemmer_stripWithJavaLangStringBuilder_(self, sb_);
  OrgApacheLuceneAnalysisDeGermanStemmer_optimizeWithJavaLangStringBuilder_(self, sb_);
  OrgApacheLuceneAnalysisDeGermanStemmer_resubstituteWithJavaLangStringBuilder_(self, sb_);
  OrgApacheLuceneAnalysisDeGermanStemmer_removeParticleDenotionWithJavaLangStringBuilder_(self, sb_);
  return [((JavaLangStringBuilder *) nil_chk(sb_)) description];
}

- (jboolean)isStemmableWithNSString:(NSString *)term {
  return OrgApacheLuceneAnalysisDeGermanStemmer_isStemmableWithNSString_(self, term);
}

- (void)stripWithJavaLangStringBuilder:(JavaLangStringBuilder *)buffer {
  OrgApacheLuceneAnalysisDeGermanStemmer_stripWithJavaLangStringBuilder_(self, buffer);
}

- (void)optimizeWithJavaLangStringBuilder:(JavaLangStringBuilder *)buffer {
  OrgApacheLuceneAnalysisDeGermanStemmer_optimizeWithJavaLangStringBuilder_(self, buffer);
}

- (void)removeParticleDenotionWithJavaLangStringBuilder:(JavaLangStringBuilder *)buffer {
  OrgApacheLuceneAnalysisDeGermanStemmer_removeParticleDenotionWithJavaLangStringBuilder_(self, buffer);
}

- (void)substituteWithJavaLangStringBuilder:(JavaLangStringBuilder *)buffer {
  OrgApacheLuceneAnalysisDeGermanStemmer_substituteWithJavaLangStringBuilder_(self, buffer);
}

- (void)resubstituteWithJavaLangStringBuilder:(JavaLangStringBuilder *)buffer {
  OrgApacheLuceneAnalysisDeGermanStemmer_resubstituteWithJavaLangStringBuilder_(self, buffer);
}

- (void)dealloc {
  RELEASE_(sb_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "LNSString;", 0x4, 0, 1, -1, -1, -1, -1 },
    { NULL, "Z", 0x2, 2, 1, -1, -1, -1, -1 },
    { NULL, "V", 0x2, 3, 4, -1, -1, -1, -1 },
    { NULL, "V", 0x2, 5, 4, -1, -1, -1, -1 },
    { NULL, "V", 0x2, 6, 4, -1, -1, -1, -1 },
    { NULL, "V", 0x2, 7, 4, -1, -1, -1, -1 },
    { NULL, "V", 0x2, 8, 4, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  #pragma clang diagnostic ignored "-Wundeclared-selector"
  methods[0].selector = @selector(init);
  methods[1].selector = @selector(stemWithNSString:);
  methods[2].selector = @selector(isStemmableWithNSString:);
  methods[3].selector = @selector(stripWithJavaLangStringBuilder:);
  methods[4].selector = @selector(optimizeWithJavaLangStringBuilder:);
  methods[5].selector = @selector(removeParticleDenotionWithJavaLangStringBuilder:);
  methods[6].selector = @selector(substituteWithJavaLangStringBuilder:);
  methods[7].selector = @selector(resubstituteWithJavaLangStringBuilder:);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "sb_", "LJavaLangStringBuilder;", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
    { "substCount_", "I", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
    { "locale", "LJavaUtilLocale;", .constantValue.asLong = 0, 0x1a, -1, 9, -1, -1 },
  };
  static const void *ptrTable[] = { "stem", "LNSString;", "isStemmable", "strip", "LJavaLangStringBuilder;", "optimize", "removeParticleDenotion", "substitute", "resubstitute", &OrgApacheLuceneAnalysisDeGermanStemmer_locale };
  static const J2ObjcClassInfo _OrgApacheLuceneAnalysisDeGermanStemmer = { "GermanStemmer", "org.apache.lucene.analysis.de", ptrTable, methods, fields, 7, 0x1, 8, 3, -1, -1, -1, -1, -1 };
  return &_OrgApacheLuceneAnalysisDeGermanStemmer;
}

+ (void)initialize {
  if (self == [OrgApacheLuceneAnalysisDeGermanStemmer class]) {
    JreStrongAssignAndConsume(&OrgApacheLuceneAnalysisDeGermanStemmer_locale, new_JavaUtilLocale_initWithNSString_withNSString_(@"de", @"DE"));
    J2OBJC_SET_INITIALIZED(OrgApacheLuceneAnalysisDeGermanStemmer)
  }
}

@end

void OrgApacheLuceneAnalysisDeGermanStemmer_init(OrgApacheLuceneAnalysisDeGermanStemmer *self) {
  NSObject_init(self);
  JreStrongAssignAndConsume(&self->sb_, new_JavaLangStringBuilder_init());
  self->substCount_ = 0;
}

OrgApacheLuceneAnalysisDeGermanStemmer *new_OrgApacheLuceneAnalysisDeGermanStemmer_init() {
  J2OBJC_NEW_IMPL(OrgApacheLuceneAnalysisDeGermanStemmer, init)
}

OrgApacheLuceneAnalysisDeGermanStemmer *create_OrgApacheLuceneAnalysisDeGermanStemmer_init() {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneAnalysisDeGermanStemmer, init)
}

jboolean OrgApacheLuceneAnalysisDeGermanStemmer_isStemmableWithNSString_(OrgApacheLuceneAnalysisDeGermanStemmer *self, NSString *term) {
  for (jint c = 0; c < [((NSString *) nil_chk(term)) java_length]; c++) {
    if (!JavaLangCharacter_isLetterWithChar_([term charAtWithInt:c])) return false;
  }
  return true;
}

void OrgApacheLuceneAnalysisDeGermanStemmer_stripWithJavaLangStringBuilder_(OrgApacheLuceneAnalysisDeGermanStemmer *self, JavaLangStringBuilder *buffer) {
  jboolean doMore = true;
  while (doMore && [((JavaLangStringBuilder *) nil_chk(buffer)) java_length] > 3) {
    if (([((JavaLangStringBuilder *) nil_chk(buffer)) java_length] + self->substCount_ > 5) && [((NSString *) nil_chk([buffer substringWithInt:[buffer java_length] - 2 withInt:[buffer java_length]])) isEqual:@"nd"]) {
      [buffer delete__WithInt:[buffer java_length] - 2 withInt:[buffer java_length]];
    }
    else if (([buffer java_length] + self->substCount_ > 4) && [((NSString *) nil_chk([buffer substringWithInt:[buffer java_length] - 2 withInt:[buffer java_length]])) isEqual:@"em"]) {
      [buffer delete__WithInt:[buffer java_length] - 2 withInt:[buffer java_length]];
    }
    else if (([buffer java_length] + self->substCount_ > 4) && [((NSString *) nil_chk([buffer substringWithInt:[buffer java_length] - 2 withInt:[buffer java_length]])) isEqual:@"er"]) {
      [buffer delete__WithInt:[buffer java_length] - 2 withInt:[buffer java_length]];
    }
    else if ([buffer charAtWithInt:[buffer java_length] - 1] == 'e') {
      [buffer deleteCharAtWithInt:[buffer java_length] - 1];
    }
    else if ([buffer charAtWithInt:[buffer java_length] - 1] == 's') {
      [buffer deleteCharAtWithInt:[buffer java_length] - 1];
    }
    else if ([buffer charAtWithInt:[buffer java_length] - 1] == 'n') {
      [buffer deleteCharAtWithInt:[buffer java_length] - 1];
    }
    else if ([buffer charAtWithInt:[buffer java_length] - 1] == 't') {
      [buffer deleteCharAtWithInt:[buffer java_length] - 1];
    }
    else {
      doMore = false;
    }
  }
}

void OrgApacheLuceneAnalysisDeGermanStemmer_optimizeWithJavaLangStringBuilder_(OrgApacheLuceneAnalysisDeGermanStemmer *self, JavaLangStringBuilder *buffer) {
  if ([((JavaLangStringBuilder *) nil_chk(buffer)) java_length] > 5 && [((NSString *) nil_chk([buffer substringWithInt:[buffer java_length] - 5 withInt:[buffer java_length]])) isEqual:@"erin*"]) {
    [buffer deleteCharAtWithInt:[buffer java_length] - 1];
    OrgApacheLuceneAnalysisDeGermanStemmer_stripWithJavaLangStringBuilder_(self, buffer);
  }
  if ([buffer java_length] > 0 && [buffer charAtWithInt:[buffer java_length] - 1] == ('z')) {
    [buffer setCharAtWithInt:[buffer java_length] - 1 withChar:'x'];
  }
}

void OrgApacheLuceneAnalysisDeGermanStemmer_removeParticleDenotionWithJavaLangStringBuilder_(OrgApacheLuceneAnalysisDeGermanStemmer *self, JavaLangStringBuilder *buffer) {
  if ([((JavaLangStringBuilder *) nil_chk(buffer)) java_length] > 4) {
    for (jint c = 0; c < [buffer java_length] - 3; c++) {
      if ([((NSString *) nil_chk([buffer substringWithInt:c withInt:c + 4])) isEqual:@"gege"]) {
        [buffer delete__WithInt:c withInt:c + 2];
        return;
      }
    }
  }
}

void OrgApacheLuceneAnalysisDeGermanStemmer_substituteWithJavaLangStringBuilder_(OrgApacheLuceneAnalysisDeGermanStemmer *self, JavaLangStringBuilder *buffer) {
  self->substCount_ = 0;
  for (jint c = 0; c < [((JavaLangStringBuilder *) nil_chk(buffer)) java_length]; c++) {
    if (c > 0 && [buffer charAtWithInt:c] == [buffer charAtWithInt:c - 1]) {
      [buffer setCharAtWithInt:c withChar:'*'];
    }
    else if ([buffer charAtWithInt:c] == 0x00e4) {
      [buffer setCharAtWithInt:c withChar:'a'];
    }
    else if ([buffer charAtWithInt:c] == 0x00f6) {
      [buffer setCharAtWithInt:c withChar:'o'];
    }
    else if ([buffer charAtWithInt:c] == 0x00fc) {
      [buffer setCharAtWithInt:c withChar:'u'];
    }
    else if ([buffer charAtWithInt:c] == 0x00df) {
      [buffer setCharAtWithInt:c withChar:'s'];
      [buffer insertWithInt:c + 1 withChar:'s'];
      self->substCount_++;
    }
    if (c < [buffer java_length] - 1) {
      if ((c < [buffer java_length] - 2) && [buffer charAtWithInt:c] == 's' && [buffer charAtWithInt:c + 1] == 'c' && [buffer charAtWithInt:c + 2] == 'h') {
        [buffer setCharAtWithInt:c withChar:'$'];
        [buffer delete__WithInt:c + 1 withInt:c + 3];
        self->substCount_ += 2;
      }
      else if ([buffer charAtWithInt:c] == 'c' && [buffer charAtWithInt:c + 1] == 'h') {
        [buffer setCharAtWithInt:c withChar:0x00a7];
        [buffer deleteCharAtWithInt:c + 1];
        self->substCount_++;
      }
      else if ([buffer charAtWithInt:c] == 'e' && [buffer charAtWithInt:c + 1] == 'i') {
        [buffer setCharAtWithInt:c withChar:'%'];
        [buffer deleteCharAtWithInt:c + 1];
        self->substCount_++;
      }
      else if ([buffer charAtWithInt:c] == 'i' && [buffer charAtWithInt:c + 1] == 'e') {
        [buffer setCharAtWithInt:c withChar:'&'];
        [buffer deleteCharAtWithInt:c + 1];
        self->substCount_++;
      }
      else if ([buffer charAtWithInt:c] == 'i' && [buffer charAtWithInt:c + 1] == 'g') {
        [buffer setCharAtWithInt:c withChar:'#'];
        [buffer deleteCharAtWithInt:c + 1];
        self->substCount_++;
      }
      else if ([buffer charAtWithInt:c] == 's' && [buffer charAtWithInt:c + 1] == 't') {
        [buffer setCharAtWithInt:c withChar:'!'];
        [buffer deleteCharAtWithInt:c + 1];
        self->substCount_++;
      }
    }
  }
}

void OrgApacheLuceneAnalysisDeGermanStemmer_resubstituteWithJavaLangStringBuilder_(OrgApacheLuceneAnalysisDeGermanStemmer *self, JavaLangStringBuilder *buffer) {
  for (jint c = 0; c < [((JavaLangStringBuilder *) nil_chk(buffer)) java_length]; c++) {
    if ([buffer charAtWithInt:c] == '*') {
      jchar x = [buffer charAtWithInt:c - 1];
      [buffer setCharAtWithInt:c withChar:x];
    }
    else if ([buffer charAtWithInt:c] == '$') {
      [buffer setCharAtWithInt:c withChar:'s'];
      [buffer insertWithInt:c + 1 withCharArray:[IOSCharArray arrayWithChars:(jchar[]){ 'c', 'h' } count:2] withInt:0 withInt:2];
    }
    else if ([buffer charAtWithInt:c] == 0x00a7) {
      [buffer setCharAtWithInt:c withChar:'c'];
      [buffer insertWithInt:c + 1 withChar:'h'];
    }
    else if ([buffer charAtWithInt:c] == '%') {
      [buffer setCharAtWithInt:c withChar:'e'];
      [buffer insertWithInt:c + 1 withChar:'i'];
    }
    else if ([buffer charAtWithInt:c] == '&') {
      [buffer setCharAtWithInt:c withChar:'i'];
      [buffer insertWithInt:c + 1 withChar:'e'];
    }
    else if ([buffer charAtWithInt:c] == '#') {
      [buffer setCharAtWithInt:c withChar:'i'];
      [buffer insertWithInt:c + 1 withChar:'g'];
    }
    else if ([buffer charAtWithInt:c] == '!') {
      [buffer setCharAtWithInt:c withChar:'s'];
      [buffer insertWithInt:c + 1 withChar:'t'];
    }
  }
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneAnalysisDeGermanStemmer)
