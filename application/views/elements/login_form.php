<div class="container o" style="height:400px">
    <h3>
        <?php lang('Најава'); ?>
    </h3>

<div class="red" style="color:red;margin:5px">
<?php echo validation_errors(); ?>
<?php
if (isset($this->session) and $this->session->flashdata('message')){ //change!
    echo $this->session->flashdata('message');
}
?>    
</div>  
   
<?php
echo form_open(Lang::$lang.'/'.'login/submit');
?>
    <input type="hidden"    name="r" value="<?php if(array_key_exists('r', $_GET)) echo $_GET['r']; ?>" />
<?php 
// username
$data = array('style' => 'display:block');
echo form_label(lang('Корисничко име',true), 'username', $data);
$data = array(
              'name'        => 'username',
              'id'          => 'username',
              'value'       => '',
              'maxlength'   => '100',
              'size'        => '50',
              'style'       => 'width:150px',
            );

echo form_input($data);

?>

<?php 
// password
$data = array('style' => 'display:block');
echo form_label(lang('Лозинка', true), 'password', $data);
$data = array(
              'name'        => 'password',
              'id'          => 'password',
              'value'       => '',
              'maxlength'   => '100',
              'size'        => '50',
              'style'       => 'width:150px',
            );

echo form_password($data);

?>
    <div style="height:15px"></div>
<?php
    $data   = array(
        'name'  => 'submit',
        'value' => lang('Најави се',true),
        'class' => 'button round'
    );

echo form_submit($data); ?>
<?php echo form_close();?>
</div>
