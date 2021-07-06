<?php require_once 'app/header.php'; ?>

<?php $messages = get_messages($_GET['sortType'], $_GET['page']); ?>

<div class="container-xxl">
    <table class=" table table-sm table-striped">
        <thead class="thead  table-striped">
            <tr>
                <?php $_GET['sortType'] == "NameUp" ? $sortType = 'NameDown' : $sortType = 'NameUp' ?>
                <th scope="col"><a href="/?sortType=<?= $sortType ?>"> Name </a> </th>
                <?php $_GET['sortType'] == "EmailUp" ? $sortType = 'EmailDown' : $sortType = 'EmailUp' ?>
                <th scope="col"><a href="/?sortType=<?= $sortType ?>">E-mail</a></th>
                <th scope="col">Site</th>
                <th scope="col">Text</th>
                <?php $_GET['sortType'] == "TimeUp" ? $sortType = 'TimeDown' : $sortType = 'TimeUp' ?>
                <th scope="col"><a href="/?sortType=<?= $sortType ?>">Time</a></th>
            </tr>
        </thead>
        <tbody>
            <?php foreach ($messages as $message) : ?>
                <tr>
                    <td><?= $message['Name'] ?> </td>
                    <td><?= $message['E-mail'] ?></td>
                    <td><?= $message['Site'] ?></td>
                    <td><?= $message['Text'] ?></td>
                    <td><?= $message['Time'] ?></td>
                </tr>
            <?php endforeach; ?>
        </tbody>
    </table>
    <span><a href="/?page=<?=$_GET['page']> 0? $_GET['page']-1 : 0?>">prev page</a></span>
    <span><a href="/?page=<?=$_GET['page']+1?>">next page</a></span>
    <br>
    <br>
    <form action="app/add_message.php" method="POST">
        <div class="row">
            <div class="col ">
                <label>Name</label>
                <input type="text" class="form-control" name="Name" placeholder="Your name" required>
            </div>
            <div class=" col ">
                <label>Email address</label>
                <input type="email" class="form-control" name="E-mail" placeholder="Your email" required>
                <small id="emailHelp" class="form-text text-muted">We'll never share your email with anyone else.</small>
            </div>
            <div class="">
                <label>Site</label>
                <input type="url" class="form-control" name="Site" placeholder="Your site">
            </div>
        </div>
        <label>Message</label>
        <textarea class="form-control" name="Text" placeholder="Your message" required></textarea>
        <br>
        <div class="row">
            <div class="g-recaptcha col" data-sitekey="6LfShHkbAAAAAE16J2icqYz2sK21l4XdrOMnjAOB"></div>
            <button type="submit" class="btn btn-primary col">Submit</button>
        </div>
    </form>
</div>

<?php
require_once 'app/footer.php';
?>