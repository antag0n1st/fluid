<div class="container o" style="margin-top: 10px;">
    <div class="left">
        <h3><?php echo count($articles); lang('резултат');  echo (count($articles) != 1 ? lang('и',true) : ''); lang('од пребарувањето'); echo ":"; echo htmlspecialchars($search); ?></h3>
        <div class="latest-news">
            <?php foreach ($articles as $article) : ?>
                <?php $data['article'] = $article; $this->load->view('elements/article_item_row', $data); ?>
            <?php endforeach; ?>
        </div>
    </div>
    <div class="right">
        <?php $this->load->view('elements/sidebar'); ?>
    </div>
</div>
