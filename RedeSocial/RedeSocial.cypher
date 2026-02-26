CREATE 
(n2:Pedro {email: "pedro@email.com", nome: "Pedro", id: "1"})
-[:AMIGO]->
(:Joao {email: "joao@email.com", nome: "Joao", id: "2"})
-[:PUBLICOU]->
(post:Post {id: "101", titulo: "Primeiro Post", texto: "Olá mundo", data: "2026-02-26"})
<-[:CURTIU]-
(n2)
-[:_RELATED]->
(comentario {texto: "Muito bom!", data: "2026-02-26"})
-[:COMENTARIO]->
(post)



// CONSULTA 1 — POPULARIDADE DO POST


MATCH (post:Post)
OPTIONAL MATCH (post)<-[:CURTIU]-(usuarioCurtiu)
OPTIONAL MATCH (post)<-[:COMENTARIO]-(comentario)<-[:_RELATED]-(usuarioComentou)
RETURN 
    post.titulo AS titulo,
    COUNT(DISTINCT usuarioCurtiu) AS totalCurtidas,
    COUNT(DISTINCT comentario) AS totalComentarios,
    (COUNT(DISTINCT usuarioCurtiu) + COUNT(DISTINCT comentario)) AS engajamentoTotal
ORDER BY engajamentoTotal DESC;



// CONSULTA 2 — INTERAÇÃO ENTRE AMIGOS


MATCH (usuario1)-[:AMIGO]->(usuario2)-[:PUBLICOU]->(post:Post)
MATCH (usuario1)-[:CURTIU]->(post)
RETURN 
    usuario1.nome AS quemCurtiu,
    usuario2.nome AS quemPublicou,
    post.titulo AS post;
