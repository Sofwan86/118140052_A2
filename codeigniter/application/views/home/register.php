<?php echo doctype('html5'); ?>

<html>
  <head>
    <meta charset="utf-8">
    <title>Register Data</title>
  </head>
  <style>
    body {
      background-image: url(https://images.unsplash.com/photo-1579546929518-9e396f3cc809?ixlib=rb-1.2.1&ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&auto=format&fit=crop&w=750&q=80 );
      
        background-size: cover; 
        
    }
    </style>
  <body>
    <p>Daftar Akun</p>


    <?php

        validation_errors();

        $username = array(
            'name'            => 'username',
            'type'            => 'text',
            'value'           => set_value('username'),
            'placeholder'     => 'Username',
        );

        $password = array(
            'name'            => 'password',
            'type'            => 'password',
            'placeholder'     => 'Password',
            'value'           => set_value('password'),
        );

        $email = array(
            'name'            => 'email',
            'type'            => 'email',
            'placeholder'     => 'Email',
            'value'           => set_value('email'),
        );

        $role = array(
          'name'            => 'role',
          'type'            => 'text',
          'value'           => set_value('role'),
          'placeholder'     => 'Role',
      );

        $submit = array(
            'name'            => 'insertusers',
            'type'            => 'submit',
            'value'           => 'Daftar',
            'placeholder'     => '',
        );

        echo  form_open_multipart('home/registerProcess');

          echo form_label('Username');
            echo br(1);
          echo form_input($username);
          echo  form_error('username');
            echo  br(2);

          echo form_label('Email');
            echo br(1);
          echo form_input($email);
          echo  form_error('email');
            echo  br(2);

          echo form_label('Password');
            echo br(1);
          echo form_input($password);
          echo  form_error('password');
            echo  br(2);

            echo form_label('Role');
            echo br(1);
          echo form_input($role);
          echo  form_error('role');
            echo  br(2);

          echo  form_submit($submit);
            echo br(2);
        
        echo form_close();

        if ($this->session->flashdata('sukses_insert_users') <> '') {
          echo $this->session->flashdata('sukses_insert_users');
        }

     ?>

  </body>
</html>
