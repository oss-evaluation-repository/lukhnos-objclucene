//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./core/src/java/org/apache/lucene/search/package-info.java
//

/*!
 @brief Code to search indices.
 <h2>Table Of Contents</h2>
      <ol>
          <li><a href="#search">Search Basics</a></li>
          <li><a href="#query">The Query Classes</a></li>
          <li><a href="#scoring">Scoring: Introduction</a></li>
          <li><a href="#scoringBasics">Scoring: Basics</a></li>
          <li><a href="#changingScoring">Changing the Scoring</a></li>
          <li><a href="#algorithm">Appendix: Search Algorithm</a></li>
      </ol>
    
 <a name="search"></a>
  <h2>Search Basics</h2>
  <p>
  Lucene offers a wide variety of <code>org.apache.lucene.search.Query</code> implementations, most of which are in
  this package, its subpackages (<code>spans</code>, <code>payloads</code>),
  or the <a href="{@@docRoot}/../queries/overview-summary.html">queries module</a>. These implementations can be combined in a wide 
  variety of ways to provide complex querying capabilities along with information about where matches took place in the document 
  collection. The <a href="#query">Query Classes</a> section below highlights some of the more important Query classes. For details 
  on implementing your own Query class, see <a href="#customQueriesExpert">Custom Queries -- Expert Level</a> below. 
 <p>
  To perform a search, applications usually call <code>org.apache.lucene.search.IndexSearcher.search(Query,int)</code>
 .
  <p>
  Once a Query has been created and submitted to the <code>IndexSearcher</code>, the scoring
  process begins. After some infrastructure setup, control finally passes to the <code>Weight</code>
  implementation and its <code>Scorer</code> or <code>BulkScore</code>
  instances. See the <a href="#algorithm">Algorithm</a> section for more notes on the process.
      <!-- FILL IN MORE HERE -->   
      <!-- TODO: this page over-links the same things too many times -->
    
 <a name="query"></a>
  <h2>Query Classes</h2>
  <h3>
      <code>TermQuery</code>
  </h3>
   
 <p>Of the various implementations of
      <code>Query</code>, the
      <code>TermQuery</code>
      is the easiest to understand and the most often used in applications. A     
 <code>TermQuery</code> matches all the documents that contain the
      specified     
 <code>Term</code>,
      which is a word that occurs in a certain     
 <code>Field</code>.
      Thus, a <code>TermQuery</code> identifies and scores all
      <code>Document</code>s that have a 
          <code>Field</code> with the specified string in it.
      Constructing a <code>TermQuery</code>
      is as simple as:     
 <pre class="prettyprint">
          TermQuery tq = new TermQuery(new Term("fieldName", "term"));     
 
@endcodeIn this example, the <code>Query</code> identifies all 
          <code>Document</code>s that have the 
          <code>Field</code> named <tt>"fieldName"</tt>
      containing the word <tt>"term"</tt>.
  <h3>
      <code>BooleanQuery</code>
  </h3>
   
 <p>Things start to get interesting when one combines multiple
      <code>TermQuery</code> instances into a 
          <code>BooleanQuery</code>.
      A <code>BooleanQuery</code> contains multiple
      <code>BooleanClause</code>s,
      where each clause contains a sub-query (<code>Query</code>
      instance) and an operator (from 
          <code>BooleanClause.Occur</code>)
      describing how that sub-query is combined with the other clauses:     
 <ol>
  
          <li><p><code>SHOULD</code> &mdash; Use this operator when a clause can occur in the result set, but is not required.
              If a query is made up of all SHOULD clauses, then every document in the result
              set matches at least one of these clauses.</p></li>
  
          <li><p><code>MUST</code> &mdash; Use this operator when a clause is required to occur in the result set. Every
              document in the result set will match
              all such clauses.</p></li>
  
          <li><p><code>MUST NOT</code> &mdash; Use this operator when a
              clause must not occur in the result set. No
              document in the result set will match
              any such clauses.</p></li>
      </ol>
      Boolean queries are constructed by adding two or more     
 <code>BooleanClause</code>
      instances. If too many clauses are added, a <code>TooManyClauses</code>
      exception will be thrown during searching. This most often occurs
      when a <code>Query</code>
      is rewritten into a <code>BooleanQuery</code> with many
      <code>TermQuery</code> clauses,
      for example by <code>WildcardQuery</code>.
      The default setting for the maximum number
      of clauses 1024, but this can be changed via the
      static method <code>org.apache.lucene.search.BooleanQuery.setMaxClauseCount(int)</code>.
   
 <h3>Phrases</h3>
   
 <p>Another common search is to find documents containing certain phrases. This
      is handled three different ways:     
 <ol>
          <li>
              <p><code>PhraseQuery</code>
                  &mdash; Matches a sequence of
                  <code>Term</code>s.
                  <code>PhraseQuery</code> uses a slop factor to determine
                  how many positions may occur between any two terms in the phrase and still be considered a match.
            The slop is 0 by default, meaning the phrase must match exactly.</p>
          </li>
          <li>
              <p><code>MultiPhraseQuery</code>
                  &mdash; A more general form of PhraseQuery that accepts multiple Terms
                  for a position in the phrase. For example, this can be used to perform phrase queries that also
                  incorporate synonyms.         
 </li>
          <li>
              <p><code>SpanNearQuery</code>
                  &mdash; Matches a sequence of other
                  <code>SpanQuery</code>
                  instances. <code>SpanNearQuery</code> allows for
                  much more
                  complicated phrase queries since it is constructed from other 
                      <code>SpanQuery</code>
                  instances, instead of only <code>TermQuery</code>
                  instances.</p>
          </li>
      </ol>
   
 <h3>
      <code>TermRangeQuery</code>
  </h3>
   
 <p>The
      <code>TermRangeQuery</code>
      matches all documents that occur in the
      exclusive range of a lower     
 <code>Term</code>
      and an upper     
 <code>Term</code>
      according to <code>BytesRef.compareTo()</code>. It is not intended
      for numerical ranges; use <code>NumericRangeQuery</code> instead. 
      For example, one could find all documents
      that have terms beginning with the letters <tt>a</tt> through <tt>c</tt>.
   
 <h3>
      <code>NumericRangeQuery</code>
  </h3>
   
 <p>The
      <code>NumericRangeQuery</code>
      matches all documents that occur in a numeric range.
      For NumericRangeQuery to work, you must index the values
      using a one of the numeric fields (<code>IntField</code>,
      <code>LongField</code>, <code>FloatField</code>,
      or <code>DoubleField</code>).
   
 <h3>
      <code>PrefixQuery</code>,
      <code>WildcardQuery</code>,
      <code>RegexpQuery</code>
  </h3>
   
 <p>While the
      <code>PrefixQuery</code>
      has a different implementation, it is essentially a special case of the     
 <code>WildcardQuery</code>.
      The <code>PrefixQuery</code> allows an application
      to identify all documents with terms that begin with a certain string. The 
          <code>WildcardQuery</code> generalizes this by allowing
      for the use of <tt>
 *</tt> (matches 0 or more characters) and <tt>?</tt> (matches exactly one character) wildcards.     Note that the <code>WildcardQuery</code> can be quite slow. Also
      note that     
 <code>WildcardQuery</code> should
      not start with <tt>
 *</tt> and <tt>?</tt>, as these are extremely slow.      Some QueryParsers may not allow this by default, but provide a <code>setAllowLeadingWildcard</code> method
      to remove that protection.
      The <code>RegexpQuery</code> is even more general than WildcardQuery,
      allowing an application to identify all documents with terms that match a regular expression pattern. 
 <h3>
      <code>FuzzyQuery</code>
  </h3>
   
 <p>A
      <code>FuzzyQuery</code>
      matches documents that contain terms similar to the specified term. Similarity is
      determined using     
 <a href="http://en.wikipedia.org/wiki/Levenshtein_distance">Levenshtein distance</a>.
      This type of query can be useful when accounting for spelling variations in the collection.   
 <a name="scoring"></a>
  <h2>Scoring &mdash; Introduction</h2>
  <p>Lucene scoring is the heart of why we all love Lucene. It is blazingly fast and it hides 
     almost all of the complexity from the user. In a nutshell, it works.  At least, that is, 
     until it doesn't work, or doesn't work as one would expect it to work.  Then we are left 
     digging into Lucene internals or asking for help on     
 <a href="mailto:java-user@@lucene.apache.org">java-user@@lucene.apache.org</a> to figure out 
     why a document with five of our query terms scores lower than a different document with 
     only one of the query terms.  
 <p>While this document won't answer your specific scoring issues, it will, hopefully, point you 
    to the places that can help you figure out the <i>what</i> and <i>why</i> of Lucene scoring. 
 <p>Lucene scoring supports a number of pluggable information retrieval 
     <a href="http://en.wikipedia.org/wiki/Information_retrieval#Model_types">models</a>, including:
     <ul>
       <li><a href="http://en.wikipedia.org/wiki/Vector_Space_Model">Vector Space Model (VSM)</a></li>
       <li><a href="http://en.wikipedia.org/wiki/Probabilistic_relevance_model">Probablistic Models</a> such as 
           <a href="http://en.wikipedia.org/wiki/Probabilistic_relevance_model_(BM25)">Okapi BM25</a> and
           <a href="http://en.wikipedia.org/wiki/Divergence-from-randomness_model">DFR</a></li>
       <li><a href="http://en.wikipedia.org/wiki/Language_model">Language models</a></li>
     </ul>
     These models can be plugged in via the <code>Similarity API</code>,
     and offer extension hooks and parameters for tuning. In general, Lucene first finds the documents
     that need to be scored based on boolean logic in the Query specification, and then ranks this subset of
     matching documents via the retrieval model. For some valuable references on VSM and IR in general refer to    
 <a href="http://wiki.apache.org/lucene-java/InformationRetrieval">Lucene Wiki IR references</a>.
  <p>The rest of this document will cover <a href="#scoringBasics">Scoring basics</a> and explain how to 
     change your <code>Similarity</code>. Next, it will cover
     ways you can customize the lucene internals in     
 <a href="#customQueriesExpert">Custom Queries -- Expert Level</a>, which gives details on 
     implementing your own <code>Query</code> class and related functionality.
     Finally, we will finish up with some reference material in the <a href="#algorithm">Appendix</a>.
    
 <a name="scoringBasics"></a>
  <h2>Scoring &mdash; Basics</h2>
  <p>Scoring is very much dependent on the way documents are indexed, so it is important to understand 
     indexing. (see <a href="{@@docRoot}/overview-summary.html#overview_description">Lucene overview</a> 
     before continuing on with this section) Be sure to use the useful    
 <code>IndexSearcher.explain(Query, doc)</code>
     to understand how the score for a certain matching document was
     computed.  
 <p>Generally, the Query determines which documents match (a binary
    decision), while the Similarity determines how to assign scores to
    the matching documents.  
 </p>
  <h3>Fields and Documents</h3>
  <p>In Lucene, the objects we are scoring are <code>Document</code>s.
     A Document is a collection of <code>Field</code>s.  Each Field has
     <code>semantics</code> about how it is created and stored 
     (<code>tokenized</code>, 
     <code>stored</code>, etc). It is important to note that 
     Lucene scoring works on Fields and then combines the results to return Documents. This is 
     important because two Documents with the exact same content, but one having the content in two
     Fields and the other in one Field may return different scores for the same query due to length
     normalization. 
 <h3>Score Boosting</h3>
  <p>Lucene allows influencing search results by "boosting" at different times:
     <ul>                          
 <li><b>Index-time boost</b> by calling
         <code>Field.setBoost()</code> before a document is 
         added to the index.</li>
        <li><b>Query-time boost</b> by setting a boost on a query clause, calling
         <code>Query.setBoost()</code>.</li>
     </ul>     
 <p>Indexing time boosts are pre-processed for storage efficiency and written to
     storage for a field as follows:    
 <ul>
         <li>All boosts of that field (i.e. all boosts under the same field name in that doc) are 
             multiplied.</li>
         <li>The boost is then encoded into a normalization value by the Similarity
             object at index-time: <code>computeNorm()</code>.
             The actual encoding depends upon the Similarity implementation, but note that most
             use a lossy encoding (such as multiplying the boost with document length or similar, packed
             into a single byte!).</li>
         <li>Decoding of any index-time normalization values and integration into the document's score is also performed 
             at search time by the Similarity.</li>
      </ul>
   
 <a name="changingScoring"></a>
  <h2>Changing Scoring &mdash; Similarity</h2>
  <p>
  Changing <code>Similarity</code> is an easy way to 
  influence scoring, this is done at index-time with  
 <code>IndexWriterConfig.setSimilarity(Similarity)</code>
  and at query-time with 
 <code>IndexSearcher.setSimilarity(Similarity)</code>
 .  Be sure to use the same
  Similarity at query-time as at index-time (so that norms are
  encoded/decoded correctly); Lucene makes no effort to verify this. 
 <p>
  You can influence scoring by configuring a different built-in Similarity implementation, or by tweaking its
  parameters, subclassing it to override behavior. Some implementations also offer a modular API which you can
  extend by plugging in a different component (e.g. term frequency normalizer). 
 <p>
  Finally, you can extend the low level <code>Similarity</code> directly
  to implement a new retrieval model, or to use external scoring factors particular to your application. For example,
  a custom Similarity can access per-document values via <code>org.apache.lucene.index.NumericDocValues</code> and 
  integrate them into the score. 
 <p>
  See the <code>org.apache.lucene.search.similarities</code> package documentation for information
  on the built-in available scoring models and extending or changing Similarity.   
 <a name="customQueriesExpert"></a>
  <h2>Custom Queries &mdash; Expert Level</h2>
   
 <p>Custom queries are an expert level task, so tread carefully and be prepared to share your code if
      you want help.  
 <p>With the warning out of the way, it is possible to change a lot more than just the Similarity
      when it comes to matching and scoring in Lucene. Lucene's search is a complex mechanism that is grounded by     
 <span>three main classes</span>:
      <ol>
          <li>
              <code>Query</code> &mdash; The abstract object representation of the
              user's information need.</li>
          <li>
              <code>Weight</code> &mdash; The internal interface representation of
              the user's Query, so that Query objects may be reused.
              This is global (across all segments of the index) and
              generally will require global statistics (such as docFreq
              for a given term across all segments).</li>
          <li>
              <code>Scorer</code> &mdash; An abstract class containing common
              functionality for scoring. Provides both scoring and
              explanation capabilities.  This is created per-segment.</li>
          <li>
              <code>BulkScorer</code> &mdash; An abstract class that scores
        a range of documents.  A default implementation simply iterates through the hits from       
 <code>Scorer</code>, but some queries such as
        <code>BooleanQuery</code> have more efficient
        implementations.</li>
      </ol>
      Details on each of these classes, and their children, can be found in the subsections below. 
 <h3>The Query Class</h3>
      <p>In some sense, the
          <code>Query</code>
          class is where it all begins. Without a Query, there would be
          nothing to score. Furthermore, the Query class is the catalyst for the other scoring classes as it
          is often responsible
          for creating them or coordinating the functionality between them. The         
 <code>Query</code> class has several methods that are important for
          derived classes:         
 <ol>
              <li><code>createWeight(IndexSearcher searcher,boolean)</code> &mdash; A
                  <code>Weight</code> is the internal representation of the
                  Query, so each Query implementation must
                  provide an implementation of Weight. See the subsection on <a href="#weightClass">
 The Weight Interface</a> below for details on implementing the Weight
                  interface.</li>
              <li><code>rewrite(IndexReader reader)</code> &mdash; Rewrites queries into primitive queries. Primitive queries are:
                  <code>TermQuery</code>,
                  <code>BooleanQuery</code>, <span>
 and other queries that implement <code>createWeight(IndexSearcher searcher,boolean)</code></span></li>
          </ol>
  <a name="weightClass"></a>
  <h3>The Weight Interface</h3>
      <p>The
          <code>Weight</code>
          interface provides an internal representation of the Query so that it can be reused. Any         
 <code>IndexSearcher</code>
          dependent state should be stored in the Weight implementation,
          not in the Query class. The interface defines five methods that must be implemented:         
 <ol>
              <li>
                  <code>getQuery()</code> &mdash; Pointer to the
                  Query that this Weight represents.</li>
              <li>
                  <code>getValueForNormalization()</code> &mdash; 
                  A weight can return a floating point value to indicate its magnitude for query normalization. Typically
                  a weight such as TermWeight that scores via a <code>Similarity</code> 
                  will just defer to the Similarity's implementation:                  
 <code>SimWeight.getValueForNormalization()</code>.
                  For example, with <code>Lucene's classic vector-space formula</code>, this
                  is implemented as the sum of squared weights: <code>(idf * boost)<sup>2</sup></code></li>
              <li>
                  <code>normalize(float norm, float topLevelBoost)</code> &mdash; 
                  Performs query normalization:                  
 <ul>
                  <li><code>topLevelBoost</code>: A query-boost factor from any wrapping queries that should be multiplied into every
                  document's score. For example, a TermQuery that is wrapped within a BooleanQuery with a boost of <code>5</code> would
                  receive this value at this time. This allows the TermQuery (the leaf node in this case) to compute this up-front
                  a single time (e.g. by multiplying into the IDF), rather than for every document.</li> 
                  <li><code>norm</code>: Passes in a a normalization factor which may
                  allow for comparing scores between queries.</li>
                  </ul>
                  Typically a weight such as TermWeight
                  that scores via a <code>Similarity</code> will just defer to the Similarity's implementation:
                  <code>SimWeight.normalize(float,float)</code>.</li>
              <li>
                  <code>scorer()</code> &mdash;
                  Construct a new <code>Scorer</code> for this Weight. See <a href="#scorerClass">The Scorer Class</a>
                  below for help defining a Scorer. As the name implies, the Scorer is responsible for doing the actual scoring of documents 
                  given the Query.             
 </li>
              <li>
                  <code>bulkScorer()</code> &mdash;
                  Construct a new <code>BulkScorer</code> for this Weight. See <a href="#bulkScorerClass">The BulkScorer Class</a>
                  below for help defining a BulkScorer. This is an optional method, and most queries do not implement it.             
 </li>
              <li>
                  <code>explain(LeafReaderContext context, int doc)</code>
  &mdash; Provide a means for explaining why a given document was
                  scored the way it was.
                  Typically a weight such as TermWeight
                  that scores via a <code>Similarity</code> will make use of the Similarity's implementation:
                  <code>SimScorer.explain(int doc, Explanation freq)</code>.
              </li>
          </ol>
  <a name="scorerClass"></a>
  <h3>The Scorer Class</h3>
      <p>The
          <code>Scorer</code>
          abstract class provides common scoring functionality for all Scorer implementations and
          is the heart of the Lucene scoring process. The Scorer defines the following abstract (some of them are not
          yet abstract, but will be in future versions and should be considered as such now) methods which
          must be implemented (some of them inherited from <code>DocIdSetIterator</code>):
          <ol>
              <li>
                  <code>nextDoc()</code> &mdash; Advances to the next
                  document that matches this Query, returning true if and only if there is another document that matches.</li>
              <li>
                  <code>docID()</code> &mdash; Returns the id of the
                  <code>Document</code> that contains the match.
              </li>
              <li>
                  <code>score()</code> &mdash; Return the score of the
                  current document. This value can be determined in any appropriate way for an application. For instance, the                 
 <code>TermScorer</code> simply defers to the configured Similarity:
                  <code>SimScorer.score(int doc, float freq)</code>.
              </li>
              <li>
                  <code>freq()</code> &mdash; Returns the number of matches
                  for the current document. This value can be determined in any appropriate way for an application. For instance, the                 
 <code>TermScorer</code> simply defers to the term frequency from the inverted index:
                  <code>PostingsEnum.freq()</code>.
              </li>
              <li>
                  <code>advance()</code> &mdash; Skip ahead in
                  the document matches to the document whose id is greater than
                  or equal to the passed in value. In many instances, advance can be
                  implemented more efficiently than simply looping through all the matching documents until
                  the target document is identified.             
 </li>
              <li>
                  <code>getChildren()</code> &mdash; Returns any child subscorers
                  underneath this scorer. This allows for users to navigate the scorer hierarchy and receive more fine-grained
                  details on the scoring process.             
 </li>
          </ol>
  <a name="bulkScorerClass"></a>
  <h3>The BulkScorer Class</h3>
      <p>The
          <code>BulkScorer</code> scores a range of documents.  There is only one 
          abstract method:         
 <ol>
              <li>
                  <code>score(LeafCollector,Bits,int,int)</code> &mdash;
      Score all documents up to but not including the specified max document.
        </li>
          </ol>
  <h3>Why would I want to add my own Query?</h3>
  
      <p>In a nutshell, you want to add your own custom Query implementation when you think that Lucene's
          aren't appropriate for the
          task that you want to do. You might be doing some cutting edge research or you need more information
          back
          out of Lucene (similar to Doug adding SpanQuery functionality).  
 <!-- TODO: integrate this better, it's better served as an intro than an appendix -->
    
 <a name="algorithm"></a>
  <h2>Appendix: Search Algorithm</h2>
  <p>This section is mostly notes on stepping through the Scoring process and serves as
     fertilizer for the earlier sections. 
 <p>In the typical search application, a <code>Query</code>
     is passed to the <code>IndexSearcher</code>,
     beginning the scoring process. 
 <p>Once inside the IndexSearcher, a <code>Collector</code>
     is used for the scoring and sorting of the search results.
     These important objects are involved in a search:    
 <ol>                       
 <li>The <code>Weight</code> object of the Query. The
            Weight object is an internal representation of the Query that allows the Query 
            to be reused by the IndexSearcher.</li>
        <li>The IndexSearcher that initiated the call.</li>     
        <li>A <code>Filter</code> for limiting the result set.
            Note, the Filter may be null.</li>                          
 <li>A <code>Sort</code> object for specifying how to sort
            the results if the standard score-based sort method is not desired.</li>                      
 </ol>        
 <p>Assuming we are not sorting (since sorting doesn't affect the raw Lucene score),
     we call one of the search methods of the IndexSearcher, passing in the    
 <code>Weight</code> object created by
     <code>IndexSearcher.createNormalizedWeight(Query,boolean)</code>
 , 
     <code>Filter</code> and the number of results we want.
     This method returns a <code>TopDocs</code> object,
     which is an internal collection of search results. The IndexSearcher creates
     a <code>TopScoreDocCollector</code> and
     passes it along with the Weight, Filter to another expert search method (for
     more on the <code>Collector</code> mechanism,
     see <code>IndexSearcher</code>). The TopScoreDocCollector
     uses a <code>PriorityQueue</code> to collect the
     top results for the search. 
 <p>If a Filter is being used, some initial setup is done to determine which docs to include. 
     Otherwise, we ask the Weight for a <code>Scorer</code> for each
     <code>IndexReader</code> segment and proceed by calling
     <code>BulkScorer.score(LeafCollector,Bits)</code>.
  <p>At last, we are actually going to score some documents. The score method takes in the Collector
     (most likely the TopScoreDocCollector or TopFieldCollector) and does its business.Of course, here 
     is where things get involved. The <code>Scorer</code> that is returned
     by the <code>Weight</code> object depends on what type of Query was
     submitted. In most real world applications with multiple query terms, the     
 <code>Scorer</code> is going to be a <code>BooleanScorer2</code> created
     from <code>BooleanWeight</code> (see the section on
     <a href="#customQueriesExpert">custom queries</a> for info on changing this). 
 <p>Assuming a BooleanScorer2, we first initialize the Coordinator, which is used to apply the coord() 
    factor. We then get a internal Scorer based on the required, optional and prohibited parts of the query.
    Using this internal Scorer, the BooleanScorer2 then proceeds into a while loop based on the    
 <code>Scorer.nextDoc()</code> method. The nextDoc() method advances 
    to the next document matching the query. This is an abstract method in the Scorer class and is thus 
    overridden by all derived  implementations. If you have a simple OR query your internal Scorer is most 
    likely a DisjunctionSumScorer, which essentially combines the scorers from the sub scorers of the OR'd terms.
 */
#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_OrgApacheLuceneSearchPackage_info")
#ifdef RESTRICT_OrgApacheLuceneSearchPackage_info
#define INCLUDE_ALL_OrgApacheLuceneSearchPackage_info 0
#else
#define INCLUDE_ALL_OrgApacheLuceneSearchPackage_info 1
#endif
#undef RESTRICT_OrgApacheLuceneSearchPackage_info

#if __has_feature(nullability)
#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wnullability"
#pragma GCC diagnostic ignored "-Wnullability-completeness"
#endif


#if __has_feature(nullability)
#pragma clang diagnostic pop
#endif
#pragma pop_macro("INCLUDE_ALL_OrgApacheLuceneSearchPackage_info")
