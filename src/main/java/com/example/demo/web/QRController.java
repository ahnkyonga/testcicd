package com.example.demo.web;

import java.io.ByteArrayOutputStream;
import java.io.IOException;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.example.demo.service.QRComponent;
import com.google.zxing.BarcodeFormat;
import com.google.zxing.MultiFormatWriter;
import com.google.zxing.WriterException;
import com.google.zxing.client.j2se.MatrixToImageWriter;
import com.google.zxing.common.BitMatrix;
@RestController
public class QRController {
//	@Autowired
//	private QRComponent qrCodeView;
/*
 
  $.ajax({
  type: "POST",
  url:'get_image_probes_via_ajax.pl',
  contentType: "image/png",
  data: "id_projet=[% visual.projet.id %]",
  success: function(data){
 // $('.div_imagetranscrits').html('<img src="' + data + '" />'); },
  * $('.div_imagetranscrits').html('<img src="data:image/png;base64,' + data + '" />');
 } );

 </script>  



 */
	@GetMapping("/make")
	public Object createQr(@RequestParam String url) throws WriterException, IOException {
		int width = 200;
        int height = 200;
        System.out.println("URL="+url);
        BitMatrix matrix = new MultiFormatWriter().encode(url, BarcodeFormat.QR_CODE, width, height);

        try (ByteArrayOutputStream out = new ByteArrayOutputStream();) {
            MatrixToImageWriter.writeToStream(matrix, "PNG", out);
            return ResponseEntity.ok()
                    .contentType(MediaType.IMAGE_PNG)
                    .body(out.toByteArray());
        }
	}
}
