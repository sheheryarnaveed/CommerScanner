STAR --genomeDir ./chimera_genome/mouse_index/v3 --soloType Droplet --soloCBwhitelist ./10x_genomics/*.txt --runThreadN 16 --readFilesCommand zcat --readFilesIn ./bam*/gen*/mo*/pancreas_v2/*R2.fastq.gz ./bam*/gen*/mo*/pancreas_v2/*R1.fastq.gz --outFileNamePrefix ./starsolo_res*/pancreas_v2/exp1
STAR --genomeDir ./chimera_genome/human_index/v3 --soloType Droplet --soloCBwhitelist ./10x_genomics/*.txt --runThreadN 16 --readFilesCommand zcat --readFilesIn ./bam*/gen*/human_fastq/pancreas_v2/*R2.fastq.gz ./bam*/gen*/human_fastq/pancreas_v2/*R1.fastq.gz --outFileNamePrefix ./starsolo_res*/pancreas_v2/exp2
STAR --genomeDir ./chimera_index/v3 --soloType Droplet --soloCBwhitelist ./10x_genomics/*.txt --runThreadN 16 --readFilesCommand zcat --readFilesIn ./bam*/gen*/mo*/pancreas_v2/*R2.fastq.gz ./bam*/gen*/mo*/pancreas_v2/*R1.fastq.gz --outFileNamePrefix ./starsolo_res*/pancreas_v2/exp3
STAR --genomeDir ./chimera_index/v3 --soloType Droplet --soloCBwhitelist ./10x_genomics/*.txt --runThreadN 16 --readFilesCommand zcat --readFilesIn ./bam*/gen*/human_fastq/pancreas_v2/*R2.fastq.gz ./bam*/gen*/human_fastq/pancreas_v2/*R1.fastq.gz --outFileNamePrefix ./starsolo_res*/pancreas_v2/exp4
STAR --genomeDir ./chimera_index/v3 --soloType Droplet --soloCBwhitelist ./10x_genomics/*.txt --runThreadN 16 --readFilesCommand zcat --readFilesIn ./bam*/gen*/human_mouse_fastq/pancreas_v2/human5_mouse5_R2.fastq.gz ./bam*/gen*/human_fastq/pancreas_v2/human5_mouse5_R1.fastq.gz --outFileNamePrefix ./starsolo_res*/pancreas_v2/exp5.1
STAR --genomeDir ./chimera_index/v3 --soloType Droplet --soloCBwhitelist ./10x_genomics/*.txt --runThreadN 16 --readFilesCommand zcat --readFilesIn ./bam*/gen*/human_mouse_fastq/pancreas_v2/human4_mouse6_R2.fastq.gz ./bam*/gen*/human_fastq/pancreas_v2/human4_mouse6_R1.fastq.gz --outFileNamePrefix ./starsolo_res*/pancreas_v2/exp5.2
STAR --genomeDir ./chimera_index/v3 --soloType Droplet --soloCBwhitelist ./10x_genomics/*.txt --runThreadN 16 --readFilesCommand zcat --readFilesIn ./bam*/gen*/human_mouse_fastq/pancreas_v2/human3_mouse7_R2.fastq.gz ./bam*/gen*/human_fastq/pancreas_v2/human3_mouse7_R1.fastq.gz --outFileNamePrefix ./starsolo_res*/pancreas_v2/exp5.3
STAR --genomeDir ./chimera_index/v3 --soloType Droplet --soloCBwhitelist ./10x_genomics/*.txt --runThreadN 16 --readFilesCommand zcat --readFilesIn ./bam*/gen*/human_mouse_fastq/pancreas_v2/human2_mouse8_R2.fastq.gz ./bam*/gen*/human_fastq/pancreas_v2/human2_mouse8_R1.fastq.gz --outFileNamePrefix ./starsolo_res*/pancreas_v2/exp5.4
STAR --genomeDir ./chimera_index/v3 --soloType Droplet --soloCBwhitelist ./10x_genomics/*.txt --runThreadN 16 --readFilesCommand zcat --readFilesIn ./bam*/gen*/human_mouse_fastq/pancreas_v2/human1_mouse9_R2.fastq.gz ./bam*/gen*/human_fastq/pancreas_v2/human1_mouse9_R1.fastq.gz --outFileNamePrefix ./starsolo_res*/pancreas_v2/exp5.5
