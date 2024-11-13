<?php
include 'bd_connection.php';

if ($_SERVER['REQUEST_METHOD'] === 'POST') {

    $titulo = isset($_POST['titulo']) ? $_POST['titulo'] : null;
    $descricao = isset($_POST['descricao']) ? $_POST['descricao'] : null;
    $imagem_url = isset($_POST['imagem_url']) ? $_POST['imagem_url'] : null;


    if (!empty($titulo) && !empty($descricao) && !empty($imagem_url)) {
       
        $stmt = $pdo->prepare("INSERT INTO post (titulo, path_imagem, descricao) VALUES (:titulo, :path_imagem, :descricao)");
        $stmt->bindParam(':titulo', $titulo);
        $stmt->bindParam(':path_imagem', $imagem_url); 
        $stmt->bindParam(':descricao', $descricao);
        
        if ($stmt->execute()) {
            header("Location: teste3.php");
            exit();
        } else {
            echo "Erro ao adicionar a imagem no banco de dados.";
        }
    } else {
        echo "Todos os campos (Título, Descrição e URL da Imagem) são obrigatórios.";
    }
}
?>

<!DOCTYPE html>
<html lang="pt-BR">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Upload de Imagem - Galeria</title>
    <link rel="stylesheet" href="style2.css">
</head>
<body>
    <div class="form-container">
        <h1>Coloque seu desenho aqui :D</h1>
        <form action="upload.php" method="POST">
    <label for="titulo">Título</label>
    <input type="text" name="titulo" id="titulo" placeholder="Título" required>

    <label for="descricao">Descrição</label>
    <textarea name="descricao" id="descricao" placeholder="Descrição" required></textarea>

    <label for="imagem_url">URL da Imagem</label>
    <input type="url" name="imagem_url" id="imagem_url" placeholder="URL da Imagem" required>

    <div href="teste3.php"><button type="submit" >Enviar</button></div>
</form>
    </div>
</body>
</html>

