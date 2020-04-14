#!/usr/bin/perl
use strict; use warnings;

#check chr names are unique
my %human_chrs;
my $human_comment_lines;
my $human_gtf = "gencode.v33.chr_patch_hapl_scaff.annotation.gtf";
open my $IN, "$human_gtf" or die "can't open $human_gtf";
while (<$IN>) {
	if ($_ =~ /^#/) {
		$human_comment_lines .= $_;
		next;
	}
	my @line = split("\t", $_);
	$human_chrs{$line[0]}++;
}
close $IN;

#print "human_chrs: " . join("\t", (keys %human_chrs)) . "\n\n";

my %mouse_chrs;
my $mouse_comment_lines;
my $mouse_gtf = "gencode.vM24.chr_patch_hapl_scaff.annotation.gtf";
open $IN, "$mouse_gtf" or die "can't open $mouse_gtf";
while (<$IN>) {
	if ($_ =~ /^#/) {
		$mouse_comment_lines .= $_;
		next;
	}
	my @line = split("\t", $_);
	$mouse_chrs{$line[0]}++;
}
close $IN;

#print "mouse_chrs: " . join("\t", (keys %mouse_chrs)) . "\n\n";

for my $human_chr (keys %human_chrs) {
	if (exists $mouse_chrs{$human_chr}) {
		print "Human chr $human_chr exists in mouse\n";
	}
}

for my $mouse_chr (keys %mouse_chrs) {
	if (exists $human_chrs{$mouse_chr}) {
		print "Mouse chr $mouse_chr exists in human\n";
	}
}

#concatenate into one gtf
my $input_file = "gencode.v33.vM24.temp.gtf";
system("cat gencode.v33.chr_patch_hapl_scaff.annotation.gtf gencode.vM24.chr_patch_hapl_scaff.annotation.gtf > $input_file");

my %data;
open $IN, "<$input_file" or die "can't open $input_file\n";
while (<$IN>) {
	my $gene_name;
	if ($_ =~ /gene_name \"(.*?)\"/) {
		$gene_name = $1;
	}
	my $gene_id;
	if ($_ =~ /gene_id \"(.*?)\"/) {
		$gene_id = $1;
	}
	
	if ($gene_name && $gene_id) {
		$data{$gene_name}{$gene_id}++;
	}
}
close $IN;


#see which gene names have multiple gene ids
my %multiple_gene_id_genes;

print "Total gene_names input file: " . scalar(keys %data) . "\n";

my $genes_with_multiple_ids_info = "genes_name_with_multiple_gene_ids.txt";
open my $OUT, ">$genes_with_multiple_ids_info" or die "can't open $genes_with_multiple_ids_info\n";
 
for my $gene_name (keys %data) {
	if (scalar (keys %{$data{$gene_name}}) > 1) {
		my @gene_ids = sort keys %{$data{$gene_name}};
		print $OUT "$gene_name has multiple gene_ids: " . join("\t", @gene_ids) . "\n";
		
		$multiple_gene_id_genes{$gene_name} = $gene_ids[0];
	}
}
close $OUT;

#output the gtf file with names changed
my $output_file = "gencode.v33.vM24.concat.unique_gene_names.gtf";
open $OUT, ">$output_file" or die "can't open $output_file\n";
open $IN, "<$input_file" or die "can't open $input_file\n";
while (<$IN>) {
	if ($_ =~ /^#/) {
		print $OUT $_;
		next;
	}
	
	my $gene_name;
	if ($_ =~ /gene_name \"(.*?)\"/) {
		$gene_name = $1;
	}
	
	my $gene_id;
	if ($_ =~ /gene_id \"(.*?)\"/) {
		$gene_id = $1;
	}
	
	my $out_line = $_;
	
	if (exists $multiple_gene_id_genes{$gene_name}) {
		unless ($gene_id eq $multiple_gene_id_genes{$gene_name}) {
			my $new_gene_name = $gene_name . "_" . $gene_id;
			
			$out_line =~ s/gene_name \"$gene_name\"/gene_name \"$new_gene_name\"/g;
		}
	}
	print $OUT $out_line;
}
close $IN;
close $OUT;

my $human_output_file = "gencode.v33.unique_gene_names.gtf";
open $OUT, ">$human_output_file" or die "can't output $human_output_file\n";
print $OUT $human_comment_lines;
open $IN, "<$output_file" or die "can't open $output_file\n";
while (<$IN>) {
	if ($_ =~ /^#/) {
		next;
	}
	my @line = split("\t", $_);
	if (exists $human_chrs{$line[0]}) {
		print $OUT $_;
	}
}
close $IN;
close $OUT;

my $mouse_output_file = "gencode.vM24.unique_gene_names.gtf";
open $OUT, ">$mouse_output_file" or die "can't output $mouse_output_file\n";
print $OUT $mouse_comment_lines;
open $IN, "<$output_file" or die "can't open $output_file\n";
while (<$IN>) {
	if ($_ =~ /^#/) {
		next;
	}
	my @line = split("\t", $_);
	if (exists $mouse_chrs{$line[0]}) {
		print $OUT $_;
	}
}
close $IN;
close $OUT;


#loop through output_file do a final check that all gene_names are unique
%data = ();
open $IN, "<$output_file" or die "can't open $output_file\n";
while (<$IN>) {
	my $gene_name;
	if ($_ =~ /gene_name \"(.*?)\"/) {
		$gene_name = $1;
	}
	my $gene_id;
	if ($_ =~ /gene_id \"(.*?)\"/) {
		$gene_id = $1;
	}
	
	if ($gene_name && $gene_id) {
		$data{$gene_name}{$gene_id}++;
	}
}
close $IN;

print "Total gene_names output file: " . scalar(keys %data) . "\n";

for my $gene_name (keys %data) {
	if (scalar (keys %{$data{$gene_name}}) > 1) {
		my @gene_ids = sort keys %{$data{$gene_name}};
		print "Warning, $gene_name still has multiple gene_ids: " . join("\t", @gene_ids) . "\n";
	
	}
}