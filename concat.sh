zcat human_testis_R1.fastq | head -n 618735460 > human5_mouse5_R1.fastq
zcat human_testis_R2.fastq | head -n 618735460 > human5_mouse5_R2.fastq
zcat mouse_testis_R1.fastq | head -n 744279980 >> human5_mouse5_R1.fastq
zcat mouse_testis_R2.fastq | head -n 744279980 >> human5_mouse5_R2.fastq

zcat human_testis_R1.fastq | head -n 494988368 > human4_mouse6_R1.fastq
zcat human_testis_R2.fastq | head -n 494988368 > human4_mouse6_R2.fastq
zcat mouse_testis_R1.fastq | head -n 893135976 >> human4_mouse6_R1.fastq
zcat mouse_testis_R2.fastq | head -n 893135976 >> human4_mouse6_R2.fastq

zcat human_testis_R1.fastq | head -n 371241276 > human3_mouse7_R1.fastq
zcat human_testis_R2.fastq | head -n 371241276 > human3_mouse7_R2.fastq
zcat mouse_testis_R1.fastq | head -n 1041991972 >> human3_mouse7_R1.fastq
zcat mouse_testis_R2.fastq | head -n 1041991972 >> human3_mouse7_R2.fastq

zcat human_testis_R1.fastq | head -n 247494184 > human2_mouse8_R1.fastq
zcat human_testis_R2.fastq | head -n 247494184 > human2_mouse8_R2.fastq
zcat mouse_testis_R1.fastq | head -n 1190847968 >> human2_mouse8_R1.fastq
zcat mouse_testis_R2.fastq | head -n 1190847968 >> human2_mouse8_R2.fastq

zcat human_testis_R1.fastq | head -n 123747092 > human1_mouse9_R1.fastq
zcat human_testis_R2.fastq | head -n 123747092 > human1_mouse9_R2.fastq
zcat mouse_testis_R1.fastq | head -n 1339703964 >> human1_mouse9_R1.fastq
zcat mouse_testis_R2.fastq | head -n 1339703964 >> human1_mouse9_R2.fastq

pigz human*
