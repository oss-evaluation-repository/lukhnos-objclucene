//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./core/src/java/org/apache/lucene/codecs/lucene50/Lucene50PostingsFormat.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_OrgApacheLuceneCodecsLucene50Lucene50PostingsFormat")
#ifdef RESTRICT_OrgApacheLuceneCodecsLucene50Lucene50PostingsFormat
#define INCLUDE_ALL_OrgApacheLuceneCodecsLucene50Lucene50PostingsFormat 0
#else
#define INCLUDE_ALL_OrgApacheLuceneCodecsLucene50Lucene50PostingsFormat 1
#endif
#undef RESTRICT_OrgApacheLuceneCodecsLucene50Lucene50PostingsFormat

#if __has_feature(nullability)
#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wnullability"
#pragma GCC diagnostic ignored "-Wnullability-completeness"
#endif

#if !defined (OrgApacheLuceneCodecsLucene50Lucene50PostingsFormat_) && (INCLUDE_ALL_OrgApacheLuceneCodecsLucene50Lucene50PostingsFormat || defined(INCLUDE_OrgApacheLuceneCodecsLucene50Lucene50PostingsFormat))
#define OrgApacheLuceneCodecsLucene50Lucene50PostingsFormat_

#define RESTRICT_OrgApacheLuceneCodecsPostingsFormat 1
#define INCLUDE_OrgApacheLuceneCodecsPostingsFormat 1
#include "org/apache/lucene/codecs/PostingsFormat.h"

@class OrgApacheLuceneCodecsFieldsConsumer;
@class OrgApacheLuceneCodecsFieldsProducer;
@class OrgApacheLuceneIndexSegmentReadState;
@class OrgApacheLuceneIndexSegmentWriteState;

/*!
 @brief Lucene 5.0 postings format, which encodes postings in packed integer blocks 
  for fast decode.
 <p>
  Basic idea: 
 <ul>
    <li>
    <b>Packed Blocks and VInt Blocks</b>: 
    <p>In packed blocks, integers are encoded with the same bit width (<code>packed format</code>):
       the block size (i.e. number of integers inside block) is fixed (currently 128). Additionally blocks
       that are all the same value are encoded in an optimized way.</p>
    <p>In VInt blocks, integers are encoded as <code>VInt</code>:
       the block size is variable.</p>
    </li>
    <li> 
    <b>Block structure</b>: 
    <p>When the postings are long enough, Lucene50PostingsFormat will try to encode most integer data 
       as a packed block.</p> 
    <p>Take a term with 259 documents as an example, the first 256 document ids are encoded as two packed 
       blocks, while the remaining 3 are encoded as one VInt block. </p>
    <p>Different kinds of data are always encoded separately into different packed blocks, but may 
       possibly be interleaved into the same VInt block. </p>
    <p>This strategy is applied to pairs: 
       &lt;document number, frequency&gt;,
       &lt;position, payload length&gt;, 
       &lt;position, offset start, offset length&gt;, and
       &lt;position, payload length, offsetstart, offset length&gt;.</p>
    </li>
    <li>
    <b>Skipdata settings</b>: 
    <p>The structure of skip table is quite similar to previous version of Lucene. Skip interval is the 
       same as block size, and each skip entry points to the beginning of each block. However, for 
       the first block, skip data is omitted.</p>
    </li>
    <li>
    <b>Positions, Payloads, and Offsets</b>: 
    <p>A position is an integer indicating where the term occurs within one document. 
       A payload is a blob of metadata associated with current position. 
       An offset is a pair of integers indicating the tokenized start/end offsets for given term 
       in current position: it is essentially a specialized payload. </p>
    <p>When payloads and offsets are not omitted, numPositions==numPayloads==numOffsets (assuming a 
       null payload contributes one count). As mentioned in block structure, it is possible to encode 
       these three either combined or separately.    
 <p>In all cases, payloads and offsets are stored together. When encoded as a packed block, 
       position data is separated out as .pos, while payloads and offsets are encoded in .pay (payload 
       metadata will also be stored directly in .pay). When encoded as VInt blocks, all these three are 
       stored interleaved into the .pos (so is payload metadata).</p>
    <p>With this strategy, the majority of payload and offset data will be outside .pos file. 
       So for queries that require only position data, running on a full index with payloads and offsets, 
       this reduces disk pre-fetches.</p>
    </li>
  </ul>
  
 <p>
  Files and detailed format: 
 <ul>
    <li><tt>.tim</tt>: <a href="#Termdictionary">Term Dictionary</a></li>
    <li><tt>.tip</tt>: <a href="#Termindex">Term Index</a></li>
    <li><tt>.doc</tt>: <a href="#Frequencies">Frequencies and Skip Data</a></li>
    <li><tt>.pos</tt>: <a href="#Positions">Positions</a></li>
    <li><tt>.pay</tt>: <a href="#Payloads">Payloads and Offsets</a></li>
  </ul>
  
 <a name="Termdictionary"></a>
  <dl>
  <dd>
  <b>Term Dictionary</b>
  
 <p>The .tim file contains the list of terms in each
  field along with per-term statistics (such as docfreq)
  and pointers to the frequencies, positions, payload and
  skip data in the .doc, .pos, and .pay files.
  See <code>BlockTreeTermsWriter</code> for more details on the format. 
 <p>NOTE: The term dictionary can plug into different postings implementations:
  the postings writer/reader are actually responsible for encoding 
  and decoding the PostingsHeader and TermMetadata sections described here: 
 <ul>
    <li>PostingsHeader --&gt; Header, PackedBlockSize</li>
    <li>TermMetadata --&gt; (DocFPDelta|SingletonDocID), PosFPDelta?, PosVIntBlockFPDelta?, PayFPDelta?, 
                             SkipFPDelta?</li>
    <li>Header, --&gt; <code>IndexHeader</code></li>
    <li>PackedBlockSize, SingletonDocID --&gt; <code>VInt</code></li>
    <li>DocFPDelta, PosFPDelta, PayFPDelta, PosVIntBlockFPDelta, SkipFPDelta --&gt; <code>VLong</code></li>
    <li>Footer --&gt; <code>CodecFooter</code></li>
  </ul>
  <p>Notes:
  <ul>
     <li>Header is a <code>IndexHeader</code> storing the version information
         for the postings.</li>
     <li>PackedBlockSize is the fixed block size for packed blocks. In packed block, bit width is 
         determined by the largest integer. Smaller block size result in smaller variance among width 
         of integers hence smaller indexes. Larger block size result in more efficient bulk i/o hence
         better acceleration. This value should always be a multiple of 64, currently fixed as 128 as 
         a tradeoff. It is also the skip interval used to accelerate <code>org.apache.lucene.index.PostingsEnum.advance(int)</code>.
     <li>DocFPDelta determines the position of this term's TermFreqs within the .doc file. 
         In particular, it is the difference of file offset between this term's
         data and previous term's data (or zero, for the first term in the block).On disk it is 
         stored as the difference from previous value in sequence. </li>
     <li>PosFPDelta determines the position of this term's TermPositions within the .pos file.
         While PayFPDelta determines the position of this term's &lt;TermPayloads, TermOffsets?&gt; within 
         the .pay file. Similar to DocFPDelta, it is the difference between two file positions (or 
         neglected, for fields that omit payloads and offsets).</li>
     <li>PosVIntBlockFPDelta determines the position of this term's last TermPosition in last pos packed
         block within the .pos file. It is synonym for PayVIntBlockFPDelta or OffsetVIntBlockFPDelta. 
         This is actually used to indicate whether it is necessary to load following
         payloads and offsets from .pos instead of .pay. Every time a new block of positions are to be 
         loaded, the PostingsReader will use this value to check whether current block is packed format
         or VInt. When packed format, payloads and offsets are fetched from .pay, otherwise from .pos. 
         (this value is neglected when total number of positions i.e. totalTermFreq is less or equal 
         to PackedBlockSize).    
 <li>SkipFPDelta determines the position of this term's SkipData within the .doc
         file. In particular, it is the length of the TermFreq data.
         SkipDelta is only stored if DocFreq is not smaller than SkipMinimum
         (i.e. 128 in Lucene50PostingsFormat).</li>
     <li>SingletonDocID is an optimization when a term only appears in one document. In this case, instead
         of writing a file pointer to the .doc file (DocFPDelta), and then a VIntBlock at that location, the 
         single document ID is written to the term dictionary.</li>
  </ul>
  </dd>
  </dl>
  
 <a name="Termindex"></a>
  <dl>
  <dd>
  <b>Term Index</b>
  <p>The .tip file contains an index into the term dictionary, so that it can be 
  accessed randomly.  See <code>BlockTreeTermsWriter</code> for more details on the format. 
 </dd>
  </dl>
  
 <a name="Frequencies"></a>
  <dl>
  <dd>
  <b>Frequencies and Skip Data</b>
  
 <p>The .doc file contains the lists of documents which contain each term, along
  with the frequency of the term in that document (except when frequencies are
  omitted: <code>IndexOptions.DOCS</code>). It also saves skip data to the beginning of 
  each packed or VInt block, when the length of document list is larger than packed block size.</p>
  
 <ul>
    <li>docFile(.doc) --&gt; Header, &lt;TermFreqs, SkipData?&gt;<sup>TermCount</sup>, Footer</li>
    <li>Header --&gt; <code>IndexHeader</code></li>
    <li>TermFreqs --&gt; &lt;PackedBlock&gt; <sup>PackedDocBlockNum</sup>,  
                         VIntBlock? </li>
    <li>PackedBlock --&gt; PackedDocDeltaBlock, PackedFreqBlock?
    <li>VIntBlock --&gt; &lt;DocDelta[, Freq?]&gt;<sup>DocFreq-PackedBlockSize*PackedDocBlockNum</sup>
    <li>SkipData --&gt; &lt;&lt;SkipLevelLength, SkipLevel&gt;
        <sup>NumSkipLevels-1</sup>, SkipLevel&gt;, SkipDatum?</li>
    <li>SkipLevel --&gt; &lt;SkipDatum&gt; <sup>TrimmedDocFreq/(PackedBlockSize^(Level + 1))</sup></li>
    <li>SkipDatum --&gt; DocSkip, DocFPSkip, &lt;PosFPSkip, PosBlockOffset, PayLength?, 
                         PayFPSkip?&gt;?, SkipChildLevelPointer?</li>
    <li>PackedDocDeltaBlock, PackedFreqBlock --&gt; <code>PackedInts</code></li>
    <li>DocDelta, Freq, DocSkip, DocFPSkip, PosFPSkip, PosBlockOffset, PayByteUpto, PayFPSkip 
        --&gt; 
    <code>VInt</code></li>
    <li>SkipChildLevelPointer --&gt; <code>VLong</code></li>
    <li>Footer --&gt; <code>CodecFooter</code></li>
  </ul>
  <p>Notes:
  <ul>
    <li>PackedDocDeltaBlock is theoretically generated from two steps: 
      <ol>
        <li>Calculate the difference between each document number and previous one, 
            and get a d-gaps list (for the first document, use absolute value); </li>
        <li>For those d-gaps from first one to PackedDocBlockNum*PackedBlockSize<sup>th</sup>, 
            separately encode as packed blocks.</li>
      </ol>
      If frequencies are not omitted, PackedFreqBlock will be generated without d-gap step.   
 </li>
    <li>VIntBlock stores remaining d-gaps (along with frequencies when possible) with a format 
        that encodes DocDelta and Freq:       
 <p>DocDelta: if frequencies are indexed, this determines both the document
        number and the frequency. In particular, DocDelta/2 is the difference between
        this document number and the previous document number (or zero when this is the
        first document in a TermFreqs). When DocDelta is odd, the frequency is one.
        When DocDelta is even, the frequency is read as another VInt. If frequencies
        are omitted, DocDelta contains the gap (not multiplied by 2) between document
        numbers and no frequency information is stored.</p>
        <p>For example, the TermFreqs for a term which occurs once in document seven
           and three times in document eleven, with frequencies indexed, would be the
           following sequence of VInts:</p>
        <p>15, 8, 3</p>
        <p>If frequencies were omitted (<code>IndexOptions.DOCS</code>) it would be this
           sequence of VInts instead:</p>
        <p>7,4</p>
    </li>
    <li>PackedDocBlockNum is the number of packed blocks for current term's docids or frequencies. 
        In particular, PackedDocBlockNum = floor(DocFreq/PackedBlockSize) </li>
    <li>TrimmedDocFreq = DocFreq % PackedBlockSize == 0 ? DocFreq - 1 : DocFreq. 
        We use this trick since the definition of skip entry is a little different from base interface.
        In <code>MultiLevelSkipListWriter</code>, skip data is assumed to be saved for
        skipInterval<sup>th</sup>, 2*skipInterval<sup>th</sup> ... posting in the list. However, 
        in Lucene50PostingsFormat, the skip data is saved for skipInterval+1<sup>th</sup>, 
        2*skipInterval+1<sup>th</sup> ... posting (skipInterval==PackedBlockSize in this case). 
        When DocFreq is multiple of PackedBlockSize, MultiLevelSkipListWriter will expect one 
        more skip data than Lucene50SkipWriter. </li>
    <li>SkipDatum is the metadata of one skip entry.
       For the first block (no matter packed or VInt), it is omitted.</li>
    <li>DocSkip records the document number of every PackedBlockSize<sup>th</sup> document number in
        the postings (i.e. last document number in each packed block). On disk it is stored as the 
        difference from previous value in the sequence. </li>
    <li>DocFPSkip records the file offsets of each block (excluding )posting at 
        PackedBlockSize+1<sup>th</sup>, 2*PackedBlockSize+1<sup>th</sup> ... , in DocFile. 
        The file offsets are relative to the start of current term's TermFreqs. 
        On disk it is also stored as the difference from previous SkipDatum in the sequence.</li>
    <li>Since positions and payloads are also block encoded, the skip should skip to related block first,
        then fetch the values according to in-block offset. PosFPSkip and PayFPSkip record the file 
        offsets of related block in .pos and .pay, respectively. While PosBlockOffset indicates
        which value to fetch inside the related block (PayBlockOffset is unnecessary since it is always
        equal to PosBlockOffset). Same as DocFPSkip, the file offsets are relative to the start of 
        current term's TermFreqs, and stored as a difference sequence.</li>
    <li>PayByteUpto indicates the start offset of the current payload. It is equivalent to
        the sum of the payload lengths in the current block up to PosBlockOffset</li>
  </ul>
  </dd>
  </dl>
  
 <a name="Positions"></a>
  <dl>
  <dd>
  <b>Positions</b>
  <p>The .pos file contains the lists of positions that each term occurs at within documents. It also
     sometimes stores part of payloads and offsets for speedup.</p>
  <ul>
    <li>PosFile(.pos) --&gt; Header, &lt;TermPositions&gt; <sup>TermCount</sup>, Footer</li>
    <li>Header --&gt; <code>IndexHeader</code></li>
    <li>TermPositions --&gt; &lt;PackedPosDeltaBlock&gt; <sup>PackedPosBlockNum</sup>,  
                             VIntBlock? </li>
    <li>VIntBlock --&gt; &lt;PositionDelta[, PayloadLength?], PayloadData?, 
                         OffsetDelta?, OffsetLength?&gt;<sup>PosVIntCount</sup>
    <li>PackedPosDeltaBlock --&gt; <code>PackedInts</code></li>
    <li>PositionDelta, OffsetDelta, OffsetLength --&gt; 
        <code>VInt</code></li>
    <li>PayloadData --&gt; <code>byte</code><sup>PayLength</sup></li>
    <li>Footer --&gt; <code>CodecFooter</code></li>
  </ul>
  <p>Notes:
  <ul>
    <li>TermPositions are order by term (terms are implicit, from the term dictionary), and position 
        values for each term document pair are incremental, and ordered by document number.</li>
    <li>PackedPosBlockNum is the number of packed blocks for current term's positions, payloads or offsets. 
        In particular, PackedPosBlockNum = floor(totalTermFreq/PackedBlockSize) </li>
    <li>PosVIntCount is the number of positions encoded as VInt format. In particular, 
        PosVIntCount = totalTermFreq - PackedPosBlockNum*PackedBlockSize</li>
    <li>The procedure how PackedPosDeltaBlock is generated is the same as PackedDocDeltaBlock 
        in chapter <a href="#Frequencies">Frequencies and Skip Data</a>.</li>
    <li>PositionDelta is, if payloads are disabled for the term's field, the
        difference between the position of the current occurrence in the document and
        the previous occurrence (or zero, if this is the first occurrence in this
        document). If payloads are enabled for the term's field, then PositionDelta/2
        is the difference between the current and the previous position. If payloads
        are enabled and PositionDelta is odd, then PayloadLength is stored, indicating
        the length of the payload at the current term position.</li>
    <li>For example, the TermPositions for a term which occurs as the fourth term in
        one document, and as the fifth and ninth term in a subsequent document, would
        be the following sequence of VInts (payloads disabled):       
 <p>4, 5, 4</p></li>
    <li>PayloadData is metadata associated with the current term position. If
        PayloadLength is stored at the current position, then it indicates the length
        of this payload. If PayloadLength is not stored, then this payload has the same
        length as the payload at the previous position.</li>
    <li>OffsetDelta/2 is the difference between this position's startOffset from the
        previous occurrence (or zero, if this is the first occurrence in this document).
        If OffsetDelta is odd, then the length (endOffset-startOffset) differs from the
        previous occurrence and an OffsetLength follows. Offset data is only written for       
 <code>IndexOptions.DOCS_AND_FREQS_AND_POSITIONS_AND_OFFSETS</code>.</li>
  </ul>
  </dd>
  </dl>
  
 <a name="Payloads"></a>
  <dl>
  <dd>
  <b>Payloads and Offsets</b>
  <p>The .pay file will store payloads and offsets associated with certain term-document positions. 
     Some payloads and offsets will be separated out into .pos file, for performance reasons. 
 <ul>
    <li>PayFile(.pay): --&gt; Header, &lt;TermPayloads, TermOffsets?&gt; <sup>TermCount</sup>, Footer</li>
    <li>Header --&gt; <code>IndexHeader</code></li>
    <li>TermPayloads --&gt; &lt;PackedPayLengthBlock, SumPayLength, PayData&gt; <sup>PackedPayBlockNum</sup>
    <li>TermOffsets --&gt; &lt;PackedOffsetStartDeltaBlock, PackedOffsetLengthBlock&gt; <sup>PackedPayBlockNum</sup>
    <li>PackedPayLengthBlock, PackedOffsetStartDeltaBlock, PackedOffsetLengthBlock --&gt; <code>PackedInts</code></li>
    <li>SumPayLength --&gt; <code>VInt</code></li>
    <li>PayData --&gt; <code>byte</code><sup>SumPayLength</sup></li>
    <li>Footer --&gt; <code>CodecFooter</code></li>
  </ul>
  <p>Notes:
  <ul>
    <li>The order of TermPayloads/TermOffsets will be the same as TermPositions, note that part of 
        payload/offsets are stored in .pos.</li>
    <li>The procedure how PackedPayLengthBlock and PackedOffsetLengthBlock are generated is the 
        same as PackedFreqBlock in chapter <a href="#Frequencies">Frequencies and Skip Data</a>. 
        While PackedStartDeltaBlock follows a same procedure as PackedDocDeltaBlock.</li>
    <li>PackedPayBlockNum is always equal to PackedPosBlockNum, for the same term. It is also synonym 
        for PackedOffsetBlockNum.</li>
    <li>SumPayLength is the total length of payloads written within one block, should be the sum
        of PayLengths in one packed block.</li>
    <li>PayLength in PackedPayLengthBlock is the length of each payload associated with the current 
        position.</li>
  </ul>
  </dd>
  </dl>
 */
@interface OrgApacheLuceneCodecsLucene50Lucene50PostingsFormat : OrgApacheLuceneCodecsPostingsFormat
@property (readonly, copy, class) NSString *DOC_EXTENSION NS_SWIFT_NAME(DOC_EXTENSION);
@property (readonly, copy, class) NSString *POS_EXTENSION NS_SWIFT_NAME(POS_EXTENSION);
@property (readonly, copy, class) NSString *PAY_EXTENSION NS_SWIFT_NAME(PAY_EXTENSION);
@property (readonly, class) jint MAX_SKIP_LEVELS NS_SWIFT_NAME(MAX_SKIP_LEVELS);
@property (readonly, copy, class) NSString *TERMS_CODEC NS_SWIFT_NAME(TERMS_CODEC);
@property (readonly, copy, class) NSString *DOC_CODEC NS_SWIFT_NAME(DOC_CODEC);
@property (readonly, copy, class) NSString *POS_CODEC NS_SWIFT_NAME(POS_CODEC);
@property (readonly, copy, class) NSString *PAY_CODEC NS_SWIFT_NAME(PAY_CODEC);
@property (readonly, class) jint VERSION_START NS_SWIFT_NAME(VERSION_START);
@property (readonly, class) jint VERSION_CURRENT NS_SWIFT_NAME(VERSION_CURRENT);
@property (readonly, class) jint BLOCK_SIZE NS_SWIFT_NAME(BLOCK_SIZE);

#pragma mark Public

/*!
 @brief Creates <code>Lucene50PostingsFormat</code> with default
   settings.
 */
- (instancetype __nonnull)init;

/*!
 @brief Creates <code>Lucene50PostingsFormat</code> with custom
   values for <code>minBlockSize</code> and <code>maxBlockSize</code>
  passed to block terms dictionary.
 - seealso: BlockTreeTermsWriter#BlockTreeTermsWriter(SegmentWriteState,PostingsWriterBase,int,int)
 */
- (instancetype __nonnull)initWithInt:(jint)minTermBlockSize
                              withInt:(jint)maxTermBlockSize;

- (OrgApacheLuceneCodecsFieldsConsumer *)fieldsConsumerWithOrgApacheLuceneIndexSegmentWriteState:(OrgApacheLuceneIndexSegmentWriteState *)state;

- (OrgApacheLuceneCodecsFieldsProducer *)fieldsProducerWithOrgApacheLuceneIndexSegmentReadState:(OrgApacheLuceneIndexSegmentReadState *)state;

- (NSString *)description;

// Disallowed inherited constructors, do not use.

- (instancetype __nonnull)initWithNSString:(NSString *)arg0 NS_UNAVAILABLE;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneCodecsLucene50Lucene50PostingsFormat)

/*!
 @brief Filename extension for document number, frequencies, and skip data.
 See chapter: <a href="#Frequencies">Frequencies and Skip Data</a>
 */
inline NSString *OrgApacheLuceneCodecsLucene50Lucene50PostingsFormat_get_DOC_EXTENSION(void);
/*! INTERNAL ONLY - Use accessor function from above. */
FOUNDATION_EXPORT NSString *OrgApacheLuceneCodecsLucene50Lucene50PostingsFormat_DOC_EXTENSION;
J2OBJC_STATIC_FIELD_OBJ_FINAL(OrgApacheLuceneCodecsLucene50Lucene50PostingsFormat, DOC_EXTENSION, NSString *)

/*!
 @brief Filename extension for positions.
 See chapter: <a href="#Positions">Positions</a>
 */
inline NSString *OrgApacheLuceneCodecsLucene50Lucene50PostingsFormat_get_POS_EXTENSION(void);
/*! INTERNAL ONLY - Use accessor function from above. */
FOUNDATION_EXPORT NSString *OrgApacheLuceneCodecsLucene50Lucene50PostingsFormat_POS_EXTENSION;
J2OBJC_STATIC_FIELD_OBJ_FINAL(OrgApacheLuceneCodecsLucene50Lucene50PostingsFormat, POS_EXTENSION, NSString *)

/*!
 @brief Filename extension for payloads and offsets.
 See chapter: <a href="#Payloads">Payloads and Offsets</a>
 */
inline NSString *OrgApacheLuceneCodecsLucene50Lucene50PostingsFormat_get_PAY_EXTENSION(void);
/*! INTERNAL ONLY - Use accessor function from above. */
FOUNDATION_EXPORT NSString *OrgApacheLuceneCodecsLucene50Lucene50PostingsFormat_PAY_EXTENSION;
J2OBJC_STATIC_FIELD_OBJ_FINAL(OrgApacheLuceneCodecsLucene50Lucene50PostingsFormat, PAY_EXTENSION, NSString *)

/*!
 @brief Expert: The maximum number of skip levels.Smaller values result in 
  slightly smaller indexes, but slower skipping in big posting lists.
 */
inline jint OrgApacheLuceneCodecsLucene50Lucene50PostingsFormat_get_MAX_SKIP_LEVELS(void);
#define OrgApacheLuceneCodecsLucene50Lucene50PostingsFormat_MAX_SKIP_LEVELS 10
J2OBJC_STATIC_FIELD_CONSTANT(OrgApacheLuceneCodecsLucene50Lucene50PostingsFormat, MAX_SKIP_LEVELS, jint)

inline NSString *OrgApacheLuceneCodecsLucene50Lucene50PostingsFormat_get_TERMS_CODEC(void);
/*! INTERNAL ONLY - Use accessor function from above. */
FOUNDATION_EXPORT NSString *OrgApacheLuceneCodecsLucene50Lucene50PostingsFormat_TERMS_CODEC;
J2OBJC_STATIC_FIELD_OBJ_FINAL(OrgApacheLuceneCodecsLucene50Lucene50PostingsFormat, TERMS_CODEC, NSString *)

inline NSString *OrgApacheLuceneCodecsLucene50Lucene50PostingsFormat_get_DOC_CODEC(void);
/*! INTERNAL ONLY - Use accessor function from above. */
FOUNDATION_EXPORT NSString *OrgApacheLuceneCodecsLucene50Lucene50PostingsFormat_DOC_CODEC;
J2OBJC_STATIC_FIELD_OBJ_FINAL(OrgApacheLuceneCodecsLucene50Lucene50PostingsFormat, DOC_CODEC, NSString *)

inline NSString *OrgApacheLuceneCodecsLucene50Lucene50PostingsFormat_get_POS_CODEC(void);
/*! INTERNAL ONLY - Use accessor function from above. */
FOUNDATION_EXPORT NSString *OrgApacheLuceneCodecsLucene50Lucene50PostingsFormat_POS_CODEC;
J2OBJC_STATIC_FIELD_OBJ_FINAL(OrgApacheLuceneCodecsLucene50Lucene50PostingsFormat, POS_CODEC, NSString *)

inline NSString *OrgApacheLuceneCodecsLucene50Lucene50PostingsFormat_get_PAY_CODEC(void);
/*! INTERNAL ONLY - Use accessor function from above. */
FOUNDATION_EXPORT NSString *OrgApacheLuceneCodecsLucene50Lucene50PostingsFormat_PAY_CODEC;
J2OBJC_STATIC_FIELD_OBJ_FINAL(OrgApacheLuceneCodecsLucene50Lucene50PostingsFormat, PAY_CODEC, NSString *)

inline jint OrgApacheLuceneCodecsLucene50Lucene50PostingsFormat_get_VERSION_START(void);
#define OrgApacheLuceneCodecsLucene50Lucene50PostingsFormat_VERSION_START 0
J2OBJC_STATIC_FIELD_CONSTANT(OrgApacheLuceneCodecsLucene50Lucene50PostingsFormat, VERSION_START, jint)

inline jint OrgApacheLuceneCodecsLucene50Lucene50PostingsFormat_get_VERSION_CURRENT(void);
#define OrgApacheLuceneCodecsLucene50Lucene50PostingsFormat_VERSION_CURRENT 0
J2OBJC_STATIC_FIELD_CONSTANT(OrgApacheLuceneCodecsLucene50Lucene50PostingsFormat, VERSION_CURRENT, jint)

/*!
 @brief Fixed packed block size, number of integers encoded in 
  a single packed block.
 */
inline jint OrgApacheLuceneCodecsLucene50Lucene50PostingsFormat_get_BLOCK_SIZE(void);
#define OrgApacheLuceneCodecsLucene50Lucene50PostingsFormat_BLOCK_SIZE 128
J2OBJC_STATIC_FIELD_CONSTANT(OrgApacheLuceneCodecsLucene50Lucene50PostingsFormat, BLOCK_SIZE, jint)

FOUNDATION_EXPORT void OrgApacheLuceneCodecsLucene50Lucene50PostingsFormat_init(OrgApacheLuceneCodecsLucene50Lucene50PostingsFormat *self);

FOUNDATION_EXPORT OrgApacheLuceneCodecsLucene50Lucene50PostingsFormat *new_OrgApacheLuceneCodecsLucene50Lucene50PostingsFormat_init(void) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgApacheLuceneCodecsLucene50Lucene50PostingsFormat *create_OrgApacheLuceneCodecsLucene50Lucene50PostingsFormat_init(void);

FOUNDATION_EXPORT void OrgApacheLuceneCodecsLucene50Lucene50PostingsFormat_initWithInt_withInt_(OrgApacheLuceneCodecsLucene50Lucene50PostingsFormat *self, jint minTermBlockSize, jint maxTermBlockSize);

FOUNDATION_EXPORT OrgApacheLuceneCodecsLucene50Lucene50PostingsFormat *new_OrgApacheLuceneCodecsLucene50Lucene50PostingsFormat_initWithInt_withInt_(jint minTermBlockSize, jint maxTermBlockSize) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgApacheLuceneCodecsLucene50Lucene50PostingsFormat *create_OrgApacheLuceneCodecsLucene50Lucene50PostingsFormat_initWithInt_withInt_(jint minTermBlockSize, jint maxTermBlockSize);

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneCodecsLucene50Lucene50PostingsFormat)

#endif

#if !defined (OrgApacheLuceneCodecsLucene50Lucene50PostingsFormat_IntBlockTermState_) && (INCLUDE_ALL_OrgApacheLuceneCodecsLucene50Lucene50PostingsFormat || defined(INCLUDE_OrgApacheLuceneCodecsLucene50Lucene50PostingsFormat_IntBlockTermState))
#define OrgApacheLuceneCodecsLucene50Lucene50PostingsFormat_IntBlockTermState_

#define RESTRICT_OrgApacheLuceneCodecsBlockTermState 1
#define INCLUDE_OrgApacheLuceneCodecsBlockTermState 1
#include "org/apache/lucene/codecs/BlockTermState.h"

@class OrgApacheLuceneIndexTermState;

@interface OrgApacheLuceneCodecsLucene50Lucene50PostingsFormat_IntBlockTermState : OrgApacheLuceneCodecsBlockTermState {
 @public
  jlong docStartFP_;
  jlong posStartFP_;
  jlong payStartFP_;
  jlong skipOffset_;
  jlong lastPosBlockOffset_;
  jint singletonDocID_;
}

#pragma mark Public

- (OrgApacheLuceneCodecsLucene50Lucene50PostingsFormat_IntBlockTermState *)java_clone;

- (void)copyFromWithOrgApacheLuceneIndexTermState:(OrgApacheLuceneIndexTermState *)_other OBJC_METHOD_FAMILY_NONE;

- (NSString *)description;

#pragma mark Package-Private

- (instancetype __nonnull)init;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneCodecsLucene50Lucene50PostingsFormat_IntBlockTermState)

FOUNDATION_EXPORT void OrgApacheLuceneCodecsLucene50Lucene50PostingsFormat_IntBlockTermState_init(OrgApacheLuceneCodecsLucene50Lucene50PostingsFormat_IntBlockTermState *self);

FOUNDATION_EXPORT OrgApacheLuceneCodecsLucene50Lucene50PostingsFormat_IntBlockTermState *new_OrgApacheLuceneCodecsLucene50Lucene50PostingsFormat_IntBlockTermState_init(void) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgApacheLuceneCodecsLucene50Lucene50PostingsFormat_IntBlockTermState *create_OrgApacheLuceneCodecsLucene50Lucene50PostingsFormat_IntBlockTermState_init(void);

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneCodecsLucene50Lucene50PostingsFormat_IntBlockTermState)

#endif


#if __has_feature(nullability)
#pragma clang diagnostic pop
#endif
#pragma pop_macro("INCLUDE_ALL_OrgApacheLuceneCodecsLucene50Lucene50PostingsFormat")
