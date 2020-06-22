#!usr/bin/tamfan/perl
#Tools up file ftp/sftp. please no recode my tools
#Author : MrTamfanX - TUANB4DUT
#Team : Buitenzorg Syndicate.io - UYSFDS MrTamfanX - MrTamfanX Cyber Team
use Term::ANSIColor;
use if $^O eq "MSWin32", Win32::Console::ANSI;
use POSIX qw(strftime);
use App::Shotgun;
@months = qw( Januari Februari Maret April Mei Juni Juli Agustus September Oktober November Desmber );
@days = qw(Minggu Senin Selasa Rabu Kamis Jumat Sabtu Minggu);
$years = strftime "%Y", gmtime;
($sec,$min,$hour,$mday,$mon,$year,$wday,$yday,$isdst) = localtime();
mrtamfanx();
menukas();
sub mrtamfanx {
if ($^O =~ /MSWin32/) {system("mode con: cols=100 lines=29");system("cls"); }else { system("resize -s 28 87");system("clear"); }
print color('bold red'),"┏━━━┓  ┳    ┳ ┳ ┏━━┳━━┓ ┏━━━━┓ ┏━┓ ┳ ┏━━━━┓ ┏━━━━┓ ┏━━━━┓ ┏━━━━┓\n";
print color('bold red'),"┃┏━┓┗┓ ┃    ┃ ┃ ┃  ┃  ┃ ┃    ┃ ┃ ┃ ┃ ┻   ┏┛ ┃    ┃ ┃    ┃ ┃\n";
print color('bold red'),"┃┗━┛ ┃ ┃    ┃ ┃    ┃    ┃      ┃ ┃ ┃    ┏┛  ┃    ┃ ┃    ┃ ┃\n";
print color('bold red'),"┃  ━━┫ ┃    ┃ ┃    ┃    ┣━━━   ┃ ┃ ┃   ┏┛   ┃    ┃ ┣━━┳━┛ ┃ ━━━┓\n";
print color('bold white'),"┃┏━┓ ┃ ┃    ┃ ┃    ┃    ┃      ┃ ┃ ┃  ┏┛    ┃    ┃ ┃  ┗┓  ┃    ┃\n";
print color('bold white'),"┃┗━┛┏┛ ┃    ┃ ┃    ┃    ┃    ┃ ┃ ┃ ┃ ┏┛   ┳ ┃    ┃ ┃   ┃  ┃    ┃\n";
print color('bold white'),"┗━━━┛  ┗━━━━┛ ┻    ┻    ┗━━━━┛ ┻ ┗━┛ ┗━━━━┛ ┗━━━━┛ ┻   ┻  ┗━━━━┛\n";
print color('bold cyan'),"┏━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━┓\n";
print color('bold cyan'),"┃";
print color('bold red'),"Author ";
print color('bold green'),": ";
print color('bold white'),"MrTamfanX ";
print color('bold red'),"&& ";
print color('bold white'),"TUANB4DUT ";
print color('bold blue'),"Team ";
print color('bold green'),": ";
print color('bold red'),"Buitenzorg Syndicate.io";
print color('bold cyan'),"┃\n";
print color('bold cyan'),"┃";
print color('bold white'),"Hubungi Contact WhatsApp ";
print color('bold green'),": 62 857";
print color('bold white'),"-";
print color('bold green'),"8041";
print color('bold white'),"-";
print color('bold green'),"1404 ";
print color('bold red'),"& ";
print color('bold green'),"62 812";
print color('bold white'),"-";
print color('bold green'),"2121";
print color('bold white'),"-";
print color('bold green'),"5191";
print color('bold cyan'),"┃\n";
print color('bold cyan'),"┗━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━┛\n";
print color('bold red'),"┣━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━┫\n";
print color('bold white'),"[";
print color('bold red'),"•";
print color('bold white'),"]";
print color('bold white'),"Tanggal ";
print color('bold green'),": ";
print color('bold yellow'),"$mday ";
print color('bold white'),"Hari ";
print color('bold green'),": ";
print color('bold yellow'),"$days[$wday] ";
print color('bold white'),"Bulan ";
print color('bold green'),": ";
print color('bold yellow'),"$months[$mon] ";
print color('bold white'),"Tahun ";
print color('bold green'),": ";
print color('bold yellow'),"$years\n";
print color('bold white'),"[";
print color('bold red'),"•";
print color('bold white'),"]";
print color('bold white'),"Jam ";
print color('bold green'),": ";
print color('bold yellow'),"$hour ";
print color('bold green'),": ";
print color('bold yellow'),"$min ";
print color('bold green'),": ";
print color('bold yellow'),"$sec\n\n";
}
sub menukas {
print nomerkas(),"";
chomp($akasfile=<STDIN>);
print nomerkas1(),"";
chomp($akasfile1=<STDIN>);
print nomerkas2(),"";
chomp($akasfile2=<STDIN>);
print nomerkas3(),"";
chomp($akasfile3=<STDIN>);
print nomerkas4(),"";
chomp($akasfile4=<STDIN>);
print nomerkas5(),"";
chomp($akasfile5=<STDIN>);
print nomerkas6(),"";
chomp($akasfile6=<STDIN>);
print nomerkas7(),"";
chomp($akasfile7=<STDIN>);
print nomerkas8(),"";
chomp($akasfile8=<STDIN>);
my $shotgun = App::Shotgun->new(
        source => '$akasfile',
        files => [

                '$akasfile1',
                '$akasfile2',
                '$akasfile3',
                '$akasfile4',
        ],
        targets => [
                {
                        type => 'FTP',
                        name => '$akasfile5',
                        path => 'htdocs/',
                        hostname => '$akasfile6',
                        username => '$akasfile7',
                        password => '$akasfile8',
                },
                {
                        type => 'SFTP',
                        name => '$akasfile5',
                        path => '/tmp/testenv',
                        hostname => '$akasfile6',
                        hostname => '$akasfile7',
                        username => '$akasfile8', 
                },
        ],
);
 

$shotgun->shot;
 
print "Success : ".($shotgun->success ? 'YES' : 'NO')."\n";
print "Error : ".$shotgun->error if (!$shotgun->success);
}
sub nomerkas
{
    my $n = shift // 'PATH';
    return color('bold white'),"["
    , color('bold green'),"$n"
    , color('bold white'),"] TYPE YOUR SOURCE PATH "
    , color('bold green'),": "
    , color('bold yellow')
    ;
}
sub nomerkas1
{
    my $n = shift // 'TXT';
    return color('bold white'),"["
    , color('bold green'),"$n"
    , color('bold white'),"] TYPE YOUR FILE TXT "
    , color('bold green'),": "
    , color('bold yellow')
    ;
}
sub nomerkas2
{
    my $n = shift // 'DIRE';
    return color('bold white'),"["
    , color('bold green'),"$n"
    , color('bold white'),"] TYPE YOUR DIR/DIR "
    , color('bold green'),": "
    , color('bold yellow')
    ;
}
sub nomerkas3
{
    my $n = shift // 'CATE';
    return color('bold white'),"["
    , color('bold green'),"$n"
    , color('bold white'),"] TYPE YOUR CATEGORY/FILE "
    , color('bold green'),": "
    , color('bold yellow')
    ;
}
sub nomerkas4
{
    my $n = shift // 'FILE';
    return color('bold white'),"["
    , color('bold green'),"$n"
    , color('bold white'),"] TYPE YOUR FILE "
    , color('bold green'),": "
    , color('bold yellow')
    ;
}
sub nomerkas5
{
    my $n = shift // 'NAME';
    return color('bold white'),"["
    , color('bold green'),"$n"
    , color('bold white'),"] TYPE YOUR NAME TARGET "
    , color('bold green'),": "
    , color('bold yellow')
    ;
}
sub nomerkas6
{
    my $n = shift // 'HOST';
    return color('bold white'),"["
    , color('bold green'),"$n"
    , color('bold white'),"] TYPE YOUR HOSTNAME "
    , color('bold green'),": "
    , color('bold yellow')
    ;
}
sub nomerkas7
{
    my $n = shift // 'USER';
    return color('bold white'),"["
    , color('bold green'),"$n"
    , color('bold white'),"] TYPE YOUR USERNAME "
    , color('bold green'),": "
    , color('bold yellow')
    ;
}
sub nomerkas8
{
    my $n = shift // 'PASS';
    return color('bold white'),"["
    , color('bold green'),"$n"
    , color('bold white'),"] TYPE YOUR PASSWORD "
    , color('bold green'),": "
    , color('bold yellow')
    ;
}

