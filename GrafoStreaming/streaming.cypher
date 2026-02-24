CREATE (n21:Genero {nome: "Ficção Científica"})<-[:IN_GENRE]-(n19:Filme {id: "f9", titulo: "Avatar", ano: 2009})<-[:WATCHED {avaliacao: 5}]-(:Usuario {id: "u9", nome: "Bruno Alves", idade: 24})-[:WATCHED {avaliacao: 10}]->(n17:Filme {id: "f7", titulo: "Interstellar", ano: 2014})<-[:WATCHED {avaliacao: 10}]-(:Usuario {id: "u1", nome: "Carlos Silva", idade: 28})-[:WATCHED {avaliacao: 9}]->(n11:Filme {id: "f1", titulo: "Inception", ano: 2010})<-[:WATCHED {avaliacao: 8}]-(n5:Usuario {id: "u5", nome: "Lucas Ferreira", idade: 19}),
(n7:Usuario {id: "u7", nome: "Rafael Mendes", idade: 27})-[:WATCHED {avaliacao: 10}]->(n13:Filme {id: "f3", titulo: "Pulp Fiction", ano: 1994})<-[:WATCHED {avaliacao: 7}]-(:Usuario {id: "u2", nome: "Ana Souza", idade: 34})-[:WATCHED {avaliacao: 8}]->(n15:Filme {id: "f5", titulo: "Titanic", ano: 1997})<-[:WATCHED {avaliacao: 7}]-(n7),
(n24:Genero {nome: "Drama"})<-[:IN_GENRE]-(n20:Filme {id: "f10", titulo: "Goodfellas", ano: 1990})<-[:WATCHED {avaliacao: 8}]-(:Usuario {id: "u8", nome: "Fernanda Lima", idade: 38})-[:WATCHED {avaliacao: 9}]->(n18:Filme {id: "f8", titulo: "Oppenheimer", ano: 2023})<-[:WATCHED {avaliacao: 9}]-(:Usuario {id: "u3", nome: "Pedro Oliveira", idade: 22})-[:WATCHED {avaliacao: 10}]->(n12:Filme {id: "f2", titulo: "The Dark Knight", ano: 2008})<-[:WATCHED {avaliacao: 9}]-(n6:Usuario {id: "u6", nome: "Juliana Rocha", idade: 31}),
(n30:Diretor {nome: "Martin Scorsese"})-[:DIRECTED]->(n20)<-[:WATCHED {avaliacao: 9}]-(:Usuario {id: "u4", nome: "Mariana Costa", idade: 45})-[:WATCHED {avaliacao: 8}]->(n16:Filme {id: "f6", titulo: "Saving Private Ryan", ano: 1998})<-[:WATCHED {avaliacao: 9}]-(:Usuario {id: "u10", nome: "Camila Torres", idade: 52})-[:WATCHED {avaliacao: 8}]->(n14:Filme {id: "f4", titulo: "The Departed", ano: 2006})-[:IN_GENRE]->(n24)<-[:IN_GENRE]-(n15)<-[:DIRECTED]-(:Diretor {nome: "James Cameron"})-[:DIRECTED]->(n19)<-[:ACTED_IN]-(:Ator {nome: "Scarlett Johansson"}),
(n5)-[:WATCHED {avaliacao: 6}]->(n19),
(n6)-[:WATCHED {avaliacao: 7}]->(n14)<-[:DIRECTED]-(n30),
(n36:Ator {nome: "Cillian Murphy"})-[:ACTED_IN]->(n12)<-[:DIRECTED]-(n27:Diretor {nome: "Christopher Nolan"})-[:DIRECTED]->(n11)-[:IN_GENRE]->(n21)<-[:IN_GENRE]-(n17)<-[:DIRECTED]-(n27)-[:DIRECTED]->(n18)<-[:ACTED_IN]-(n36),
(n12)-[:IN_GENRE]->(:Genero {nome: "Ação"}),
(:Diretor {nome: "Quentin Tarantino"})-[:DIRECTED]->(n13)-[:IN_GENRE]->(:Genero {nome: "Suspense"}),
(:Diretor {nome: "Steven Spielberg"})-[:DIRECTED]->(n16)-[:IN_GENRE]->(n24)<-[:IN_GENRE]-(n18),
(n17)<-[:ACTED_IN]-(:Ator {nome: "Matt Damon"})-[:ACTED_IN]->(n14)<-[:ACTED_IN]-(n32:Ator {nome: "Leonardo DiCaprio"})-[:ACTED_IN]->(n11),
(:Ator {nome: "Brad Pitt"})-[:ACTED_IN]->(n13),
(:Ator {nome: "Kate Winslet"})-[:ACTED_IN]->(n15)<-[:ACTED_IN]-(n32),
(:Ator {nome: "Tom Hanks"})-[:ACTED_IN]->(n16),
(:Ator {nome: "Robert De Niro"})-[:ACTED_IN]->(n20)<-[:ACTED_IN]-(:Ator {nome: "Morgan Freeman"}),
(:Ator {nome: "Natalie Portman"})

MATCH path0 = (n21:Genero {nome: "Ficção Científica"})<-[:IN_GENRE]-(n19:Filme {id: "f9", titulo: "Avatar", ano: 2009})<-[:WATCHED {avaliacao: 5}]-(:Usuario {id: "u9", nome: "Bruno Alves", idade: 24})-[:WATCHED {avaliacao: 10}]->(n17:Filme {id: "f7", titulo: "Interstellar", ano: 2014})<-[:WATCHED {avaliacao: 10}]-(:Usuario {id: "u1", nome: "Carlos Silva", idade: 28})-[:WATCHED {avaliacao: 9}]->(n11:Filme {id: "f1", titulo: "Inception", ano: 2010})<-[:WATCHED {avaliacao: 8}]-(n5:Usuario {id: "u5", nome: "Lucas Ferreira", idade: 19}),
path1 = (n7:Usuario {id: "u7", nome: "Rafael Mendes", idade: 27})-[:WATCHED {avaliacao: 10}]->(n13:Filme {id: "f3", titulo: "Pulp Fiction", ano: 1994})<-[:WATCHED {avaliacao: 7}]-(:Usuario {id: "u2", nome: "Ana Souza", idade: 34})-[:WATCHED {avaliacao: 8}]->(n15:Filme {id: "f5", titulo: "Titanic", ano: 1997})<-[:WATCHED {avaliacao: 7}]-(n7),
path2 = (n24:Genero {nome: "Drama"})<-[:IN_GENRE]-(n20:Filme {id: "f10", titulo: "Goodfellas", ano: 1990})<-[:WATCHED {avaliacao: 8}]-(:Usuario {id: "u8", nome: "Fernanda Lima", idade: 38})-[:WATCHED {avaliacao: 9}]->(n18:Filme {id: "f8", titulo: "Oppenheimer", ano: 2023})<-[:WATCHED {avaliacao: 9}]-(:Usuario {id: "u3", nome: "Pedro Oliveira", idade: 22})-[:WATCHED {avaliacao: 10}]->(n12:Filme {id: "f2", titulo: "The Dark Knight", ano: 2008})<-[:WATCHED {avaliacao: 9}]-(n6:Usuario {id: "u6", nome: "Juliana Rocha", idade: 31}),
path3 = (n30:Diretor {nome: "Martin Scorsese"})-[:DIRECTED]->(n20)<-[:WATCHED {avaliacao: 9}]-(:Usuario {id: "u4", nome: "Mariana Costa", idade: 45})-[:WATCHED {avaliacao: 8}]->(n16:Filme {id: "f6", titulo: "Saving Private Ryan", ano: 1998})<-[:WATCHED {avaliacao: 9}]-(:Usuario {id: "u10", nome: "Camila Torres", idade: 52})-[:WATCHED {avaliacao: 8}]->(n14:Filme {id: "f4", titulo: "The Departed", ano: 2006})-[:IN_GENRE]->(n24)<-[:IN_GENRE]-(n15)<-[:DIRECTED]-(:Diretor {nome: "James Cameron"})-[:DIRECTED]->(n19)<-[:ACTED_IN]-(:Ator {nome: "Scarlett Johansson"}),
path4 = (n5)-[:WATCHED {avaliacao: 6}]->(n19),
path5 = (n6)-[:WATCHED {avaliacao: 7}]->(n14)<-[:DIRECTED]-(n30),
path6 = (n36:Ator {nome: "Cillian Murphy"})-[:ACTED_IN]->(n12)<-[:DIRECTED]-(n27:Diretor {nome: "Christopher Nolan"})-[:DIRECTED]->(n11)-[:IN_GENRE]->(n21)<-[:IN_GENRE]-(n17)<-[:DIRECTED]-(n27)-[:DIRECTED]->(n18)<-[:ACTED_IN]-(n36),
path7 = (n12)-[:IN_GENRE]->(:Genero {nome: "Ação"}),
path8 = (:Diretor {nome: "Quentin Tarantino"})-[:DIRECTED]->(n13)-[:IN_GENRE]->(:Genero {nome: "Suspense"}),
path9 = (:Diretor {nome: "Steven Spielberg"})-[:DIRECTED]->(n16)-[:IN_GENRE]->(n24)<-[:IN_GENRE]-(n18),
path10 = (n17)<-[:ACTED_IN]-(:Ator {nome: "Matt Damon"})-[:ACTED_IN]->(n14)<-[:ACTED_IN]-(n32:Ator {nome: "Leonardo DiCaprio"})-[:ACTED_IN]->(n11),
path11 = (:Ator {nome: "Brad Pitt"})-[:ACTED_IN]->(n13),
path12 = (:Ator {nome: "Kate Winslet"})-[:ACTED_IN]->(n15)<-[:ACTED_IN]-(n32),
path13 = (:Ator {nome: "Tom Hanks"})-[:ACTED_IN]->(n16),
path14 = (:Ator {nome: "Robert De Niro"})-[:ACTED_IN]->(n20)<-[:ACTED_IN]-(:Ator {nome: "Morgan Freeman"}),
path15 = (:Ator {nome: "Natalie Portman"})
RETURN path0, path1, path2, path3, path4, path5, path6, path7, path8, path9, path10, path11, path12, path13, path14, path15

MERGE (n21:Genero {nome: "Ficção Científica"})<-[:IN_GENRE]-(n19:Filme {id: "f9", titulo: "Avatar", ano: 2009})<-[:WATCHED {avaliacao: 5}]-(:Usuario {id: "u9", nome: "Bruno Alves", idade: 24})-[:WATCHED {avaliacao: 10}]->(n17:Filme {id: "f7", titulo: "Interstellar", ano: 2014})<-[:WATCHED {avaliacao: 10}]-(:Usuario {id: "u1", nome: "Carlos Silva", idade: 28})-[:WATCHED {avaliacao: 9}]->(n11:Filme {id: "f1", titulo: "Inception", ano: 2010})<-[:WATCHED {avaliacao: 8}]-(n5:Usuario {id: "u5", nome: "Lucas Ferreira", idade: 19})
MERGE (n7:Usuario {id: "u7", nome: "Rafael Mendes", idade: 27})-[:WATCHED {avaliacao: 10}]->(n13:Filme {id: "f3", titulo: "Pulp Fiction", ano: 1994})<-[:WATCHED {avaliacao: 7}]-(:Usuario {id: "u2", nome: "Ana Souza", idade: 34})-[:WATCHED {avaliacao: 8}]->(n15:Filme {id: "f5", titulo: "Titanic", ano: 1997})<-[:WATCHED {avaliacao: 7}]-(n7)
MERGE (n24:Genero {nome: "Drama"})<-[:IN_GENRE]-(n20:Filme {id: "f10", titulo: "Goodfellas", ano: 1990})<-[:WATCHED {avaliacao: 8}]-(:Usuario {id: "u8", nome: "Fernanda Lima", idade: 38})-[:WATCHED {avaliacao: 9}]->(n18:Filme {id: "f8", titulo: "Oppenheimer", ano: 2023})<-[:WATCHED {avaliacao: 9}]-(:Usuario {id: "u3", nome: "Pedro Oliveira", idade: 22})-[:WATCHED {avaliacao: 10}]->(n12:Filme {id: "f2", titulo: "The Dark Knight", ano: 2008})<-[:WATCHED {avaliacao: 9}]-(n6:Usuario {id: "u6", nome: "Juliana Rocha", idade: 31})
MERGE (n30:Diretor {nome: "Martin Scorsese"})-[:DIRECTED]->(n20)<-[:WATCHED {avaliacao: 9}]-(:Usuario {id: "u4", nome: "Mariana Costa", idade: 45})-[:WATCHED {avaliacao: 8}]->(n16:Filme {id: "f6", titulo: "Saving Private Ryan", ano: 1998})<-[:WATCHED {avaliacao: 9}]-(:Usuario {id: "u10", nome: "Camila Torres", idade: 52})-[:WATCHED {avaliacao: 8}]->(n14:Filme {id: "f4", titulo: "The Departed", ano: 2006})-[:IN_GENRE]->(n24)<-[:IN_GENRE]-(n15)<-[:DIRECTED]-(:Diretor {nome: "James Cameron"})-[:DIRECTED]->(n19)<-[:ACTED_IN]-(:Ator {nome: "Scarlett Johansson"})
MERGE (n5)-[:WATCHED {avaliacao: 6}]->(n19)
MERGE (n6)-[:WATCHED {avaliacao: 7}]->(n14)<-[:DIRECTED]-(n30)
MERGE (n36:Ator {nome: "Cillian Murphy"})-[:ACTED_IN]->(n12)<-[:DIRECTED]-(n27:Diretor {nome: "Christopher Nolan"})-[:DIRECTED]->(n11)-[:IN_GENRE]->(n21)<-[:IN_GENRE]-(n17)<-[:DIRECTED]-(n27)-[:DIRECTED]->(n18)<-[:ACTED_IN]-(n36)
MERGE (n12)-[:IN_GENRE]->(:Genero {nome: "Ação"})
MERGE (:Diretor {nome: "Quentin Tarantino"})-[:DIRECTED]->(n13)-[:IN_GENRE]->(:Genero {nome: "Suspense"})
MERGE (:Diretor {nome: "Steven Spielberg"})-[:DIRECTED]->(n16)-[:IN_GENRE]->(n24)<-[:IN_GENRE]-(n18)
MERGE (n17)<-[:ACTED_IN]-(:Ator {nome: "Matt Damon"})-[:ACTED_IN]->(n14)<-[:ACTED_IN]-(n32:Ator {nome: "Leonardo DiCaprio"})-[:ACTED_IN]->(n11)
MERGE (:Ator {nome: "Brad Pitt"})-[:ACTED_IN]->(n13)
MERGE (:Ator {nome: "Kate Winslet"})-[:ACTED_IN]->(n15)<-[:ACTED_IN]-(n32)
MERGE (:Ator {nome: "Tom Hanks"})-[:ACTED_IN]->(n16)
MERGE (:Ator {nome: "Robert De Niro"})-[:ACTED_IN]->(n20)<-[:ACTED_IN]-(:Ator {nome: "Morgan Freeman"})
MERGE (:Ator {nome: "Natalie Portman"})
