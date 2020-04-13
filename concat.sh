zcat human_pancreas_R1.fastq.gz | head -n 507242880 > human5_mouse5_R1.fastq
zcat human_pancreas_R2.fastq.gz | head -n 507242880 > human5_mouse5_R2.fastq
zcat mouse_pancreas_R1.fastq.gz | head -n 1168336276 >> human5_mouse5_R1.fastq
zcat mouse_pancreas_R2.fastq.gz | head -n 1168336276 >> human5_mouse5_R2.fastq

zcat human_pancreas_R1.fastq.gz | head -n 405794304 > human4_mouse6_R1.fastq
zcat human_pancreas_R2.fastq.gz | head -n 405794304 > human4_mouse6_R2.fastq
zcat mouse_pancreas_R1.fastq.gz | head -n 1402003524 >> human4_mouse6_R1.fastq
zcat mouse_pancreas_R2.fastq.gz | head -n 1402003524 >> human4_mouse6_R2.fastq

zcat human_pancreas_R1.fastq.gz | head -n 304345728 > human3_mouse7_R1.fastq
zcat human_pancreas_R2.fastq.gz | head -n 304345728 > human3_mouse7_R2.fastq
zcat mouse_pancreas_R1.fastq.gz | head -n 1635670764 >> human3_mouse7_R1.fastq
zcat mouse_pancreas_R2.fastq.gz | head -n 1635670764 >> human3_mouse7_R2.fastq

zcat human_pancreas_R1.fastq.gz | head -n 202897152 > human2_mouse8_R1.fastq
zcat human_pancreas_R2.fastq.gz | head -n 202897152 > human2_mouse8_R2.fastq
zcat mouse_pancreas_R1.fastq.gz | head -n 1869338016 >> human2_mouse8_R1.fastq
zcat mouse_pancreas_R2.fastq.gz | head -n 1869338016 >> human2_mouse8_R2.fastq

zcat human_pancreas_R1.fastq.gz | head -n 101448576 > human1_mouse9_R1.fastq
zcat human_pancreas_R2.fastq.gz | head -n 101448576 > human1_mouse9_R2.fastq
zcat mouse_pancreas_R1.fastq.gz | head -n 2103005268 >> human1_mouse9_R1.fastq
zcat mouse_pancreas_R2.fastq.gz | head -n 2103005268 >> human1_mouse9_R2.fastq

pigz human*
