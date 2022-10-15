.class public Lcom/meizu/smart/wristband/constant/SystemContant;
.super Ljava/lang/Object;
.source "SystemContant.java"


# static fields
.field public static final defaultGainMax:I = 0x55

.field public static final defaultHeightMax:I = 0xfa

.field public static final defaultHeightMin:I = 0x64

.field public static final defaultWeightMax:I = 0x12c

.field public static final defaultWeightMin:I = 0x19

.field public static final heartRateSample:I = 0xf

.field public static final monitorDataLength:I = 0x90

.field public static final onedaySecond:J = 0x5265c00L

.field public static final snsType_FaceBook:Ljava/lang/String; = "4"

.field public static final snsType_Instagram:Ljava/lang/String; = "7"

.field public static final snsType_QQ:Ljava/lang/String; = "2"

.field public static final snsType_Twitter:Ljava/lang/String; = "5"

.field public static final snsType_WhatsApp:Ljava/lang/String; = "6"

.field public static final snsType_call:Ljava/lang/String; = "0"

.field public static final snsType_email:Ljava/lang/String; = "8"

.field public static final snsType_line:Ljava/lang/String; = "9"

.field public static final snsType_skype:Ljava/lang/String; = "10"

.field public static final snsType_sms:Ljava/lang/String; = "1"

.field public static final snsType_weChart:Ljava/lang/String; = "3"

.field public static final sportMotionInterval:I = 0x3c

.field public static final timeFormat0:Ljava/text/SimpleDateFormat;

.field public static final timeFormat0s:Ljava/text/SimpleDateFormat;

.field public static final timeFormat1:Ljava/text/SimpleDateFormat;

.field public static final timeFormat10:Ljava/text/SimpleDateFormat;

.field public static final timeFormat11:Ljava/text/SimpleDateFormat;

.field public static final timeFormat12:Ljava/text/SimpleDateFormat;

.field public static final timeFormat13:Ljava/text/SimpleDateFormat;

.field public static final timeFormat13b:Ljava/text/SimpleDateFormat;

.field public static final timeFormat13c:Ljava/text/SimpleDateFormat;

.field public static final timeFormat14:Ljava/text/SimpleDateFormat;

.field public static final timeFormat15:Ljava/text/SimpleDateFormat;

.field public static final timeFormat16:Ljava/text/SimpleDateFormat;

.field public static final timeFormat17:Ljava/text/SimpleDateFormat;

.field public static final timeFormat18:Ljava/text/SimpleDateFormat;

.field public static final timeFormat2:Ljava/text/SimpleDateFormat;

.field public static final timeFormat3:Ljava/text/SimpleDateFormat;

.field public static final timeFormat3s:Ljava/text/SimpleDateFormat;

.field public static final timeFormat4:Ljava/text/SimpleDateFormat;

.field public static final timeFormat5:Ljava/text/SimpleDateFormat;

.field public static final timeFormat6:Ljava/text/SimpleDateFormat;

.field public static final timeFormat7:Ljava/text/SimpleDateFormat;

.field public static final timeFormat7a:Ljava/text/SimpleDateFormat;

.field public static final timeFormat8:Ljava/text/SimpleDateFormat;

.field public static final timeFormat9:Ljava/text/SimpleDateFormat;

.field public static final timeFormat_sql_1:Ljava/lang/String; = "yyyy-MM-E"

.field public static final timeFormat_sql_2:Ljava/lang/String; = "yyyy-M"

.field public static final wristbandDefaultTime:J = 0x125e5770400L


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 11
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "HH:mm"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/meizu/smart/wristband/constant/SystemContant;->timeFormat0:Ljava/text/SimpleDateFormat;

    .line 12
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "hh:mm"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/meizu/smart/wristband/constant/SystemContant;->timeFormat0s:Ljava/text/SimpleDateFormat;

    .line 13
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string/jumbo v1, "yyyy-MM-dd HH:mm:ss"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/meizu/smart/wristband/constant/SystemContant;->timeFormat1:Ljava/text/SimpleDateFormat;

    .line 14
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string/jumbo v1, "yyyy-MM-dd E"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/meizu/smart/wristband/constant/SystemContant;->timeFormat2:Ljava/text/SimpleDateFormat;

    .line 15
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "MM-dd HH:mm"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/meizu/smart/wristband/constant/SystemContant;->timeFormat3:Ljava/text/SimpleDateFormat;

    .line 16
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "MM-dd hh:mm"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/meizu/smart/wristband/constant/SystemContant;->timeFormat3s:Ljava/text/SimpleDateFormat;

    .line 17
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "M\u6708d\u65e5"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/meizu/smart/wristband/constant/SystemContant;->timeFormat4:Ljava/text/SimpleDateFormat;

    .line 18
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string/jumbo v1, "yyyy\u5e74M\u6708"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/meizu/smart/wristband/constant/SystemContant;->timeFormat5:Ljava/text/SimpleDateFormat;

    .line 19
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string/jumbo v1, "yyyyMMdd"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/meizu/smart/wristband/constant/SystemContant;->timeFormat6:Ljava/text/SimpleDateFormat;

    .line 20
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string/jumbo v1, "yyyyMMddHHmm"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/meizu/smart/wristband/constant/SystemContant;->timeFormat7:Ljava/text/SimpleDateFormat;

    .line 21
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string/jumbo v1, "yyyyMMddHHmmss"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/meizu/smart/wristband/constant/SystemContant;->timeFormat7a:Ljava/text/SimpleDateFormat;

    .line 22
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string/jumbo v1, "yyyy-MM-dd HH:mm:ss.S"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/meizu/smart/wristband/constant/SystemContant;->timeFormat8:Ljava/text/SimpleDateFormat;

    .line 23
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string/jumbo v1, "yyyyMMddHHmmss"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    sput-object v0, Lcom/meizu/smart/wristband/constant/SystemContant;->timeFormat9:Ljava/text/SimpleDateFormat;

    .line 24
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "dd/MMM"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    sput-object v0, Lcom/meizu/smart/wristband/constant/SystemContant;->timeFormat10:Ljava/text/SimpleDateFormat;

    .line 25
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "MM"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/meizu/smart/wristband/constant/SystemContant;->timeFormat11:Ljava/text/SimpleDateFormat;

    .line 26
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string/jumbo v1, "yyyy-MM-dd HH:mm"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/meizu/smart/wristband/constant/SystemContant;->timeFormat12:Ljava/text/SimpleDateFormat;

    .line 27
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "MM\u6708dd\u65e5"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/meizu/smart/wristband/constant/SystemContant;->timeFormat13:Ljava/text/SimpleDateFormat;

    .line 28
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "M/dd"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/meizu/smart/wristband/constant/SystemContant;->timeFormat13b:Ljava/text/SimpleDateFormat;

    .line 29
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "MM/dd"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/meizu/smart/wristband/constant/SystemContant;->timeFormat13c:Ljava/text/SimpleDateFormat;

    .line 30
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string/jumbo v1, "yyyy"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/meizu/smart/wristband/constant/SystemContant;->timeFormat14:Ljava/text/SimpleDateFormat;

    .line 31
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string/jumbo v1, "yyyy-MMM"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    sput-object v0, Lcom/meizu/smart/wristband/constant/SystemContant;->timeFormat15:Ljava/text/SimpleDateFormat;

    .line 32
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "MMM dd"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    sput-object v0, Lcom/meizu/smart/wristband/constant/SystemContant;->timeFormat16:Ljava/text/SimpleDateFormat;

    .line 33
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "MM\u6708dd\u65e5 HH:mm"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/meizu/smart/wristband/constant/SystemContant;->timeFormat17:Ljava/text/SimpleDateFormat;

    .line 34
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string/jumbo v1, "yyyy/MM/dd"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    sput-object v0, Lcom/meizu/smart/wristband/constant/SystemContant;->timeFormat18:Ljava/text/SimpleDateFormat;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
