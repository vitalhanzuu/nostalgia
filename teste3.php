<!DOCTYPE html>
<html lang="pt-BR">
<head>
    <meta charset="UTF-8">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
    <title>Galeria de Desenhos</title>
    <style>
        .upload-button-container {
    text-align: center;
    margin: 20px 0;
    margin-top: 10%
}

.upload-button-container .btn {
    padding: 10px 20px;
    font-size: 1rem;
    background-color: #5a6e6c;
    color: white;
    border: none;
    border-radius: 5px;
    cursor: pointer;
    transition: background-color 0.3s;
    text-decoration: none;
}

.upload-button-container .btn:hover {
    background-color: #4b5c5b;
}
    </style>
</head>
<body>
    <?php
    include 'bd_connection.php';

    $query = $pdo->query("SELECT * FROM post ORDER BY id DESC");
    $imagens = $query->fetchAll(PDO::FETCH_ASSOC);
    ?>

    <div class="titulo text-center my-4">
        <h1>Hall da Nostalgia dos Desenhos Animados</h1>
    </div>

    <div class="container">
        <?php
        $n_col = 3; 
        $contador = 0;
        foreach ($imagens as $imagem) {
            if ($contador % $n_col === 0) {
                echo '<div class="row mb-4">'; 
            }
            echo '<div class="col-md-4 galery_column text-center">';
            echo '<img src="' . htmlspecialchars($imagem['path_imagem']) . '" class="img-fluid" style="width: 100%" data-bs-toggle="modal" data-bs-target="#imageModal" onclick="showImage(' . $imagem['id'] . ')" />';
            echo '<h5 class="mt-2">' . htmlspecialchars($imagem['titulo']) . '</h5>';
            echo '</div>';
            $contador++;
            if ($contador % $n_col === 0) {
                echo '</div>'; 
            }
        }
        if ($contador % $n_col !== 0) {
            echo '</div>';
        }
        ?>
    </div>

    <!-- Modal -->
    <div class="modal fade" id="imageModal" tabindex="-1" aria-labelledby="imageModalTitle" aria-hidden="true">
        <div class="modal-dialog modal-dialog-centered">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="imageModalTitle">Imagem</h5>
                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                </div>
                <div class="modal-body">
                    <img id="modalImage" src="" class="img-fluid" style="width: 100%" />
                    <p id="modalDescription" class="mt-2"></p>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Fechar</button>
                </div>
            </div>
        </div>
    </div>

    <div class="upload-button-container">
        <a href="upload.php" class="btn btn-primary">Adicionar Imagem</a>
    </div>

    <script>
        const images = <?php echo json_encode($imagens); ?>;

        function showImage(id) {
            const image = images.find(img => img.id == id);
            document.getElementById('modalImage').src = image.path_imagem;
            document.getElementById('imageModalTitle').textContent = image.titulo;
            document.getElementById('modalDescription').textContent = image.descricao;
        }
    </script>
</body>
</html>
