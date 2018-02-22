@prefix void: <http://rdfs.org/ns/void#> .
@prefix rdf: <http://www.w3.org/1999/02/22-rdf-syntax-ns#> .
@prefix rdfs: <http://www.w3.org/2000/01/rdf-schema#> .
@prefix owl: <http://www.w3.org/2002/07/owl#> .
@prefix xsd: <http://www.w3.org/2001/XMLSchema#> .
@prefix dc: <http://purl.org/dc/terms/> .
@prefix foaf: <http://xmlns.com/foaf/0.1/> .
@prefix wv: <http://vocab.org/waiver/terms/norms> .        
@prefix sd: <http://www.w3.org/ns/sparql-service-description#> .
@prefix skos: <http://www.w3.org/2004/02/skos/core#> .
@prefix skosmos: <http://purl.org/net/skosmos#> .
@prefix isothes: <http://purl.org/iso25964/skos-thes#> .
@prefix mdrtype: <http://publications.europa.eu/resource/authority/dataset-type/> .
@prefix : <#> .


:diensten a skosmos:Vocabulary, void:Dataset ;
    dc:title "Diensten Thesaurus"@nl, "Service Thesaurus"@en ;
    skosmos:shortName "Diensten";
    dc:subject :cat_general ;
    void:uriSpace "http://fuseki:3030/gentdb";
    skosmos:language "nl", "en";
    skosmos:defaultLanguage "nl";
    skosmos:showTopConcepts true ;
    skosmos:groupClass isothes:ConceptGroup ;
    void:sparqlEndpoint <http://fuseki:3030/gentdb/sparql> ;
    skosmos:sparqlGraph <http://skos.um.es/unescothes/> .


:doelgroepen a skosmos:Vocabulary, void:Dataset ;
    dc:title "Doelgroepen Thesaurus"@nl, "Groups Thesaurus"@en ;
    skosmos:shortName "Doelgroepen";
    dc:subject :cat_general ;
    void:uriSpace "http://fuseki:3030/gentdb";
    skosmos:language "nl", "en";
    skosmos:defaultLanguage "nl";
    skosmos:showTopConcepts true ;
    skosmos:groupClass isothes:ConceptGroup ;
    void:sparqlEndpoint <http://fuseki:3030/gentdb/sparql> ;
    skosmos:sparqlGraph <http://skos.um.es/unescothes/> .


:categories a skos:ConceptScheme;
	skos:prefLabel "Skosmos Vocabulary Categories"@en, "Iets in het nederlands"@nl .

:cat_general a skos:Concept ;
	skos:topConceptOf :categories ;
	skos:inScheme :categories ;
	skos:prefLabel "Algemeen"@nl, 
		"General concepts"@en .

mdrtype:THESAURUS a skos:Concept ;
	skos:prefLabel "thesaurus"@nl, "Thesaurus"@en .

mdrtype:ONTOLOGY a skos:Concept ;
    	skos:prefLabel "Ontologie"@nl, "Ontology"@en .

