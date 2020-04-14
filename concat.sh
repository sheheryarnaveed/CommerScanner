zcat SRR7276477_R1.fastq | head -n 917856724 > human5_mouse5_R1.fastq
zcat SRR7276477_R2.fastq | head -n 917856724 > human5_mouse5_R2.fastq
zcat mouse_liver_R1.fastq | head -n 1872729372 >> human5_mouse5_R1.fastq
zcat mouse_liver_R2.fastq | head -n 1872729372 >> human5_mouse5_R2.fastq

zcat SRR7276477_R1.fastq | head -n 734285376 > human4_mouse6_R1.fastq
zcat SRR7276477_R2.fastq | head -n 734285376 > human4_mouse6_R2.fastq
zcat mouse_liver_R1.fastq | head -n 2247275244 >> human4_mouse6_R1.fastq
zcat mouse_liver_R2.fastq | head -n 2247275244 >> human4_mouse6_R2.fastq

zcat SRR7276477_R1.fastq | head -n 550714032 > human3_mouse7_R1.fastq
zcat SRR7276477_R2.fastq | head -n 550714032 > human3_mouse7_R2.fastq
zcat mouse_liver_R1.fastq | head -n 2621821104 >> human3_mouse7_R1.fastq
zcat mouse_liver_R2.fastq | head -n 2621821104 >> human3_mouse7_R2.fastq

zcat SRR7276477_R1.fastq | head -n 367142688 > human2_mouse8_R1.fastq
zcat SRR7276477_R2.fastq | head -n 367142688 > human2_mouse8_R2.fastq
zcat mouse_liver_R1.fastq | head -n 2996366976 >> human2_mouse8_R1.fastq
zcat mouse_liver_R2.fastq | head -n 2996366976 >> human2_mouse8_R2.fastq

zcat SRR7276477_R1.fastq | head -n 183571344 > human1_mouse9_R1.fastq
zcat SRR7276477_R2.fastq | head -n 183571344 > human1_mouse9_R2.fastq
zcat mouse_liver_R1.fastq | head -n 3370912848 >> human1_mouse9_R1.fastq
zcat mouse_liver_R2.fastq | head -n 3370912848 >> human1_mouse9_R2.fastq

pigz human*
