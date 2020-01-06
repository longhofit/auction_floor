$('#Image').fileinput({
  theme: 'fa',
  dropZoneEnabled: false,
  allowedFileExtensions: ['png', 'jpg', 'gif', 'jpeg']
});

tinymce.init({
  selector: '#txtFullDes',
  height: 600,
  plugins: 'paste image link autolink lists table media',
  menubar: false,
  toolbar: [
    'undo redo | bold italic underline strikethrough | numlist bullist | alignleft aligncenter alignright',
    'forecolor backcolor',
    'table link image media'
  ]
});

console.log('hello test');
