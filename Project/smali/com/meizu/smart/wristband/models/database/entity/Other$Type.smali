.class public final enum Lcom/meizu/smart/wristband/models/database/entity/Other$Type;
.super Ljava/lang/Enum;
.source "Other.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/smart/wristband/models/database/entity/Other;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Type"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/meizu/smart/wristband/models/database/entity/Other$Type;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/meizu/smart/wristband/models/database/entity/Other$Type;

.field public static final enum SlpTime:Lcom/meizu/smart/wristband/models/database/entity/Other$Type;

.field public static final enum aimSwich:Lcom/meizu/smart/wristband/models/database/entity/Other$Type;

.field public static final enum alarm:Lcom/meizu/smart/wristband/models/database/entity/Other$Type;

.field public static final enum alarmToBand:Lcom/meizu/smart/wristband/models/database/entity/Other$Type;

.field public static final enum alarmToBand2:Lcom/meizu/smart/wristband/models/database/entity/Other$Type;

.field public static final enum antlost:Lcom/meizu/smart/wristband/models/database/entity/Other$Type;

.field public static final enum blueNoticeVer:Lcom/meizu/smart/wristband/models/database/entity/Other$Type;

.field public static final enum caller:Lcom/meizu/smart/wristband/models/database/entity/Other$Type;

.field public static final enum coreNoticeVer:Lcom/meizu/smart/wristband/models/database/entity/Other$Type;

.field public static final enum currentGain:Lcom/meizu/smart/wristband/models/database/entity/Other$Type;

.field public static final enum dateDisplay:Lcom/meizu/smart/wristband/models/database/entity/Other$Type;

.field public static final enum dfuParam1:Lcom/meizu/smart/wristband/models/database/entity/Other$Type;

.field public static final enum findphone:Lcom/meizu/smart/wristband/models/database/entity/Other$Type;

.field public static final enum gainEventVer:Lcom/meizu/smart/wristband/models/database/entity/Other$Type;

.field public static final enum handsUp:Lcom/meizu/smart/wristband/models/database/entity/Other$Type;

.field public static final enum heartrate:Lcom/meizu/smart/wristband/models/database/entity/Other$Type;

.field public static final enum isFirst:Lcom/meizu/smart/wristband/models/database/entity/Other$Type;

.field public static final enum music:Lcom/meizu/smart/wristband/models/database/entity/Other$Type;

.field public static final enum netEf32Expain:Lcom/meizu/smart/wristband/models/database/entity/Other$Type;

.field public static final enum netEf32Ver:Lcom/meizu/smart/wristband/models/database/entity/Other$Type;

.field public static final enum netNodicExpain:Lcom/meizu/smart/wristband/models/database/entity/Other$Type;

.field public static final enum netNodicVer:Lcom/meizu/smart/wristband/models/database/entity/Other$Type;

.field public static final enum notification:Lcom/meizu/smart/wristband/models/database/entity/Other$Type;

.field public static final enum qq:Lcom/meizu/smart/wristband/models/database/entity/Other$Type;

.field public static final enum sedentary:Lcom/meizu/smart/wristband/models/database/entity/Other$Type;

.field public static final enum sedentaryToBand:Lcom/meizu/smart/wristband/models/database/entity/Other$Type;

.field public static final enum sleepAim:Lcom/meizu/smart/wristband/models/database/entity/Other$Type;

.field public static final enum smart:Lcom/meizu/smart/wristband/models/database/entity/Other$Type;

.field public static final enum sms:Lcom/meizu/smart/wristband/models/database/entity/Other$Type;

.field public static final enum sportAim:Lcom/meizu/smart/wristband/models/database/entity/Other$Type;

.field public static final enum tempTotalStep:Lcom/meizu/smart/wristband/models/database/entity/Other$Type;

.field public static final enum treasure:Lcom/meizu/smart/wristband/models/database/entity/Other$Type;

.field public static final enum unit_length:Lcom/meizu/smart/wristband/models/database/entity/Other$Type;

.field public static final enum unit_weight:Lcom/meizu/smart/wristband/models/database/entity/Other$Type;

.field public static final enum usage_days:Lcom/meizu/smart/wristband/models/database/entity/Other$Type;

.field public static final enum usage_mileage:Lcom/meizu/smart/wristband/models/database/entity/Other$Type;

.field public static final enum useage_daystep:Lcom/meizu/smart/wristband/models/database/entity/Other$Type;

.field public static final enum vibirate:Lcom/meizu/smart/wristband/models/database/entity/Other$Type;

.field public static final enum watchNc:Lcom/meizu/smart/wristband/models/database/entity/Other$Type;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 73
    new-instance v0, Lcom/meizu/smart/wristband/models/database/entity/Other$Type;

    const-string v1, "sleepAim"

    invoke-direct {v0, v1, v3}, Lcom/meizu/smart/wristband/models/database/entity/Other$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/meizu/smart/wristband/models/database/entity/Other$Type;->sleepAim:Lcom/meizu/smart/wristband/models/database/entity/Other$Type;

    new-instance v0, Lcom/meizu/smart/wristband/models/database/entity/Other$Type;

    const-string v1, "sportAim"

    invoke-direct {v0, v1, v4}, Lcom/meizu/smart/wristband/models/database/entity/Other$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/meizu/smart/wristband/models/database/entity/Other$Type;->sportAim:Lcom/meizu/smart/wristband/models/database/entity/Other$Type;

    new-instance v0, Lcom/meizu/smart/wristband/models/database/entity/Other$Type;

    const-string v1, "treasure"

    invoke-direct {v0, v1, v5}, Lcom/meizu/smart/wristband/models/database/entity/Other$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/meizu/smart/wristband/models/database/entity/Other$Type;->treasure:Lcom/meizu/smart/wristband/models/database/entity/Other$Type;

    new-instance v0, Lcom/meizu/smart/wristband/models/database/entity/Other$Type;

    const-string v1, "alarm"

    invoke-direct {v0, v1, v6}, Lcom/meizu/smart/wristband/models/database/entity/Other$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/meizu/smart/wristband/models/database/entity/Other$Type;->alarm:Lcom/meizu/smart/wristband/models/database/entity/Other$Type;

    new-instance v0, Lcom/meizu/smart/wristband/models/database/entity/Other$Type;

    const-string v1, "alarmToBand"

    invoke-direct {v0, v1, v7}, Lcom/meizu/smart/wristband/models/database/entity/Other$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/meizu/smart/wristband/models/database/entity/Other$Type;->alarmToBand:Lcom/meizu/smart/wristband/models/database/entity/Other$Type;

    new-instance v0, Lcom/meizu/smart/wristband/models/database/entity/Other$Type;

    const-string v1, "alarmToBand2"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/meizu/smart/wristband/models/database/entity/Other$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/meizu/smart/wristband/models/database/entity/Other$Type;->alarmToBand2:Lcom/meizu/smart/wristband/models/database/entity/Other$Type;

    new-instance v0, Lcom/meizu/smart/wristband/models/database/entity/Other$Type;

    const-string v1, "caller"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/meizu/smart/wristband/models/database/entity/Other$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/meizu/smart/wristband/models/database/entity/Other$Type;->caller:Lcom/meizu/smart/wristband/models/database/entity/Other$Type;

    new-instance v0, Lcom/meizu/smart/wristband/models/database/entity/Other$Type;

    const-string v1, "sms"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/meizu/smart/wristband/models/database/entity/Other$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/meizu/smart/wristband/models/database/entity/Other$Type;->sms:Lcom/meizu/smart/wristband/models/database/entity/Other$Type;

    new-instance v0, Lcom/meizu/smart/wristband/models/database/entity/Other$Type;

    const-string v1, "sedentary"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/meizu/smart/wristband/models/database/entity/Other$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/meizu/smart/wristband/models/database/entity/Other$Type;->sedentary:Lcom/meizu/smart/wristband/models/database/entity/Other$Type;

    new-instance v0, Lcom/meizu/smart/wristband/models/database/entity/Other$Type;

    const-string v1, "sedentaryToBand"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lcom/meizu/smart/wristband/models/database/entity/Other$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/meizu/smart/wristband/models/database/entity/Other$Type;->sedentaryToBand:Lcom/meizu/smart/wristband/models/database/entity/Other$Type;

    new-instance v0, Lcom/meizu/smart/wristband/models/database/entity/Other$Type;

    const-string v1, "music"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Lcom/meizu/smart/wristband/models/database/entity/Other$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/meizu/smart/wristband/models/database/entity/Other$Type;->music:Lcom/meizu/smart/wristband/models/database/entity/Other$Type;

    new-instance v0, Lcom/meizu/smart/wristband/models/database/entity/Other$Type;

    const-string v1, "findphone"

    const/16 v2, 0xb

    invoke-direct {v0, v1, v2}, Lcom/meizu/smart/wristband/models/database/entity/Other$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/meizu/smart/wristband/models/database/entity/Other$Type;->findphone:Lcom/meizu/smart/wristband/models/database/entity/Other$Type;

    new-instance v0, Lcom/meizu/smart/wristband/models/database/entity/Other$Type;

    const-string v1, "antlost"

    const/16 v2, 0xc

    invoke-direct {v0, v1, v2}, Lcom/meizu/smart/wristband/models/database/entity/Other$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/meizu/smart/wristband/models/database/entity/Other$Type;->antlost:Lcom/meizu/smart/wristband/models/database/entity/Other$Type;

    new-instance v0, Lcom/meizu/smart/wristband/models/database/entity/Other$Type;

    const-string v1, "currentGain"

    const/16 v2, 0xd

    invoke-direct {v0, v1, v2}, Lcom/meizu/smart/wristband/models/database/entity/Other$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/meizu/smart/wristband/models/database/entity/Other$Type;->currentGain:Lcom/meizu/smart/wristband/models/database/entity/Other$Type;

    .line 74
    new-instance v0, Lcom/meizu/smart/wristband/models/database/entity/Other$Type;

    const-string v1, "gainEventVer"

    const/16 v2, 0xe

    invoke-direct {v0, v1, v2}, Lcom/meizu/smart/wristband/models/database/entity/Other$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/meizu/smart/wristband/models/database/entity/Other$Type;->gainEventVer:Lcom/meizu/smart/wristband/models/database/entity/Other$Type;

    new-instance v0, Lcom/meizu/smart/wristband/models/database/entity/Other$Type;

    const-string v1, "isFirst"

    const/16 v2, 0xf

    invoke-direct {v0, v1, v2}, Lcom/meizu/smart/wristband/models/database/entity/Other$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/meizu/smart/wristband/models/database/entity/Other$Type;->isFirst:Lcom/meizu/smart/wristband/models/database/entity/Other$Type;

    new-instance v0, Lcom/meizu/smart/wristband/models/database/entity/Other$Type;

    const-string v1, "netNodicVer"

    const/16 v2, 0x10

    invoke-direct {v0, v1, v2}, Lcom/meizu/smart/wristband/models/database/entity/Other$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/meizu/smart/wristband/models/database/entity/Other$Type;->netNodicVer:Lcom/meizu/smart/wristband/models/database/entity/Other$Type;

    new-instance v0, Lcom/meizu/smart/wristband/models/database/entity/Other$Type;

    const-string v1, "netEf32Ver"

    const/16 v2, 0x11

    invoke-direct {v0, v1, v2}, Lcom/meizu/smart/wristband/models/database/entity/Other$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/meizu/smart/wristband/models/database/entity/Other$Type;->netEf32Ver:Lcom/meizu/smart/wristband/models/database/entity/Other$Type;

    new-instance v0, Lcom/meizu/smart/wristband/models/database/entity/Other$Type;

    const-string v1, "netNodicExpain"

    const/16 v2, 0x12

    invoke-direct {v0, v1, v2}, Lcom/meizu/smart/wristband/models/database/entity/Other$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/meizu/smart/wristband/models/database/entity/Other$Type;->netNodicExpain:Lcom/meizu/smart/wristband/models/database/entity/Other$Type;

    new-instance v0, Lcom/meizu/smart/wristband/models/database/entity/Other$Type;

    const-string v1, "netEf32Expain"

    const/16 v2, 0x13

    invoke-direct {v0, v1, v2}, Lcom/meizu/smart/wristband/models/database/entity/Other$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/meizu/smart/wristband/models/database/entity/Other$Type;->netEf32Expain:Lcom/meizu/smart/wristband/models/database/entity/Other$Type;

    new-instance v0, Lcom/meizu/smart/wristband/models/database/entity/Other$Type;

    const-string v1, "watchNc"

    const/16 v2, 0x14

    invoke-direct {v0, v1, v2}, Lcom/meizu/smart/wristband/models/database/entity/Other$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/meizu/smart/wristband/models/database/entity/Other$Type;->watchNc:Lcom/meizu/smart/wristband/models/database/entity/Other$Type;

    new-instance v0, Lcom/meizu/smart/wristband/models/database/entity/Other$Type;

    const-string v1, "tempTotalStep"

    const/16 v2, 0x15

    invoke-direct {v0, v1, v2}, Lcom/meizu/smart/wristband/models/database/entity/Other$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/meizu/smart/wristband/models/database/entity/Other$Type;->tempTotalStep:Lcom/meizu/smart/wristband/models/database/entity/Other$Type;

    new-instance v0, Lcom/meizu/smart/wristband/models/database/entity/Other$Type;

    const-string v1, "handsUp"

    const/16 v2, 0x16

    invoke-direct {v0, v1, v2}, Lcom/meizu/smart/wristband/models/database/entity/Other$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/meizu/smart/wristband/models/database/entity/Other$Type;->handsUp:Lcom/meizu/smart/wristband/models/database/entity/Other$Type;

    new-instance v0, Lcom/meizu/smart/wristband/models/database/entity/Other$Type;

    const-string v1, "SlpTime"

    const/16 v2, 0x17

    invoke-direct {v0, v1, v2}, Lcom/meizu/smart/wristband/models/database/entity/Other$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/meizu/smart/wristband/models/database/entity/Other$Type;->SlpTime:Lcom/meizu/smart/wristband/models/database/entity/Other$Type;

    .line 75
    new-instance v0, Lcom/meizu/smart/wristband/models/database/entity/Other$Type;

    const-string v1, "blueNoticeVer"

    const/16 v2, 0x18

    invoke-direct {v0, v1, v2}, Lcom/meizu/smart/wristband/models/database/entity/Other$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/meizu/smart/wristband/models/database/entity/Other$Type;->blueNoticeVer:Lcom/meizu/smart/wristband/models/database/entity/Other$Type;

    new-instance v0, Lcom/meizu/smart/wristband/models/database/entity/Other$Type;

    const-string v1, "coreNoticeVer"

    const/16 v2, 0x19

    invoke-direct {v0, v1, v2}, Lcom/meizu/smart/wristband/models/database/entity/Other$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/meizu/smart/wristband/models/database/entity/Other$Type;->coreNoticeVer:Lcom/meizu/smart/wristband/models/database/entity/Other$Type;

    new-instance v0, Lcom/meizu/smart/wristband/models/database/entity/Other$Type;

    const-string v1, "qq"

    const/16 v2, 0x1a

    invoke-direct {v0, v1, v2}, Lcom/meizu/smart/wristband/models/database/entity/Other$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/meizu/smart/wristband/models/database/entity/Other$Type;->qq:Lcom/meizu/smart/wristband/models/database/entity/Other$Type;

    new-instance v0, Lcom/meizu/smart/wristband/models/database/entity/Other$Type;

    const-string v1, "notification"

    const/16 v2, 0x1b

    invoke-direct {v0, v1, v2}, Lcom/meizu/smart/wristband/models/database/entity/Other$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/meizu/smart/wristband/models/database/entity/Other$Type;->notification:Lcom/meizu/smart/wristband/models/database/entity/Other$Type;

    new-instance v0, Lcom/meizu/smart/wristband/models/database/entity/Other$Type;

    const-string v1, "dfuParam1"

    const/16 v2, 0x1c

    invoke-direct {v0, v1, v2}, Lcom/meizu/smart/wristband/models/database/entity/Other$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/meizu/smart/wristband/models/database/entity/Other$Type;->dfuParam1:Lcom/meizu/smart/wristband/models/database/entity/Other$Type;

    new-instance v0, Lcom/meizu/smart/wristband/models/database/entity/Other$Type;

    const-string v1, "useage_daystep"

    const/16 v2, 0x1d

    invoke-direct {v0, v1, v2}, Lcom/meizu/smart/wristband/models/database/entity/Other$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/meizu/smart/wristband/models/database/entity/Other$Type;->useage_daystep:Lcom/meizu/smart/wristband/models/database/entity/Other$Type;

    new-instance v0, Lcom/meizu/smart/wristband/models/database/entity/Other$Type;

    const-string v1, "usage_days"

    const/16 v2, 0x1e

    invoke-direct {v0, v1, v2}, Lcom/meizu/smart/wristband/models/database/entity/Other$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/meizu/smart/wristband/models/database/entity/Other$Type;->usage_days:Lcom/meizu/smart/wristband/models/database/entity/Other$Type;

    new-instance v0, Lcom/meizu/smart/wristband/models/database/entity/Other$Type;

    const-string v1, "usage_mileage"

    const/16 v2, 0x1f

    invoke-direct {v0, v1, v2}, Lcom/meizu/smart/wristband/models/database/entity/Other$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/meizu/smart/wristband/models/database/entity/Other$Type;->usage_mileage:Lcom/meizu/smart/wristband/models/database/entity/Other$Type;

    new-instance v0, Lcom/meizu/smart/wristband/models/database/entity/Other$Type;

    const-string v1, "unit_length"

    const/16 v2, 0x20

    invoke-direct {v0, v1, v2}, Lcom/meizu/smart/wristband/models/database/entity/Other$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/meizu/smart/wristband/models/database/entity/Other$Type;->unit_length:Lcom/meizu/smart/wristband/models/database/entity/Other$Type;

    new-instance v0, Lcom/meizu/smart/wristband/models/database/entity/Other$Type;

    const-string v1, "aimSwich"

    const/16 v2, 0x21

    invoke-direct {v0, v1, v2}, Lcom/meizu/smart/wristband/models/database/entity/Other$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/meizu/smart/wristband/models/database/entity/Other$Type;->aimSwich:Lcom/meizu/smart/wristband/models/database/entity/Other$Type;

    new-instance v0, Lcom/meizu/smart/wristband/models/database/entity/Other$Type;

    const-string v1, "smart"

    const/16 v2, 0x22

    invoke-direct {v0, v1, v2}, Lcom/meizu/smart/wristband/models/database/entity/Other$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/meizu/smart/wristband/models/database/entity/Other$Type;->smart:Lcom/meizu/smart/wristband/models/database/entity/Other$Type;

    new-instance v0, Lcom/meizu/smart/wristband/models/database/entity/Other$Type;

    const-string v1, "unit_weight"

    const/16 v2, 0x23

    invoke-direct {v0, v1, v2}, Lcom/meizu/smart/wristband/models/database/entity/Other$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/meizu/smart/wristband/models/database/entity/Other$Type;->unit_weight:Lcom/meizu/smart/wristband/models/database/entity/Other$Type;

    new-instance v0, Lcom/meizu/smart/wristband/models/database/entity/Other$Type;

    const-string v1, "heartrate"

    const/16 v2, 0x24

    invoke-direct {v0, v1, v2}, Lcom/meizu/smart/wristband/models/database/entity/Other$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/meizu/smart/wristband/models/database/entity/Other$Type;->heartrate:Lcom/meizu/smart/wristband/models/database/entity/Other$Type;

    .line 76
    new-instance v0, Lcom/meizu/smart/wristband/models/database/entity/Other$Type;

    const-string v1, "vibirate"

    const/16 v2, 0x25

    invoke-direct {v0, v1, v2}, Lcom/meizu/smart/wristband/models/database/entity/Other$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/meizu/smart/wristband/models/database/entity/Other$Type;->vibirate:Lcom/meizu/smart/wristband/models/database/entity/Other$Type;

    new-instance v0, Lcom/meizu/smart/wristband/models/database/entity/Other$Type;

    const-string v1, "dateDisplay"

    const/16 v2, 0x26

    invoke-direct {v0, v1, v2}, Lcom/meizu/smart/wristband/models/database/entity/Other$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/meizu/smart/wristband/models/database/entity/Other$Type;->dateDisplay:Lcom/meizu/smart/wristband/models/database/entity/Other$Type;

    .line 72
    const/16 v0, 0x27

    new-array v0, v0, [Lcom/meizu/smart/wristband/models/database/entity/Other$Type;

    sget-object v1, Lcom/meizu/smart/wristband/models/database/entity/Other$Type;->sleepAim:Lcom/meizu/smart/wristband/models/database/entity/Other$Type;

    aput-object v1, v0, v3

    sget-object v1, Lcom/meizu/smart/wristband/models/database/entity/Other$Type;->sportAim:Lcom/meizu/smart/wristband/models/database/entity/Other$Type;

    aput-object v1, v0, v4

    sget-object v1, Lcom/meizu/smart/wristband/models/database/entity/Other$Type;->treasure:Lcom/meizu/smart/wristband/models/database/entity/Other$Type;

    aput-object v1, v0, v5

    sget-object v1, Lcom/meizu/smart/wristband/models/database/entity/Other$Type;->alarm:Lcom/meizu/smart/wristband/models/database/entity/Other$Type;

    aput-object v1, v0, v6

    sget-object v1, Lcom/meizu/smart/wristband/models/database/entity/Other$Type;->alarmToBand:Lcom/meizu/smart/wristband/models/database/entity/Other$Type;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/meizu/smart/wristband/models/database/entity/Other$Type;->alarmToBand2:Lcom/meizu/smart/wristband/models/database/entity/Other$Type;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/meizu/smart/wristband/models/database/entity/Other$Type;->caller:Lcom/meizu/smart/wristband/models/database/entity/Other$Type;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/meizu/smart/wristband/models/database/entity/Other$Type;->sms:Lcom/meizu/smart/wristband/models/database/entity/Other$Type;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/meizu/smart/wristband/models/database/entity/Other$Type;->sedentary:Lcom/meizu/smart/wristband/models/database/entity/Other$Type;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/meizu/smart/wristband/models/database/entity/Other$Type;->sedentaryToBand:Lcom/meizu/smart/wristband/models/database/entity/Other$Type;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/meizu/smart/wristband/models/database/entity/Other$Type;->music:Lcom/meizu/smart/wristband/models/database/entity/Other$Type;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/meizu/smart/wristband/models/database/entity/Other$Type;->findphone:Lcom/meizu/smart/wristband/models/database/entity/Other$Type;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/meizu/smart/wristband/models/database/entity/Other$Type;->antlost:Lcom/meizu/smart/wristband/models/database/entity/Other$Type;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lcom/meizu/smart/wristband/models/database/entity/Other$Type;->currentGain:Lcom/meizu/smart/wristband/models/database/entity/Other$Type;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Lcom/meizu/smart/wristband/models/database/entity/Other$Type;->gainEventVer:Lcom/meizu/smart/wristband/models/database/entity/Other$Type;

    aput-object v2, v0, v1

    const/16 v1, 0xf

    sget-object v2, Lcom/meizu/smart/wristband/models/database/entity/Other$Type;->isFirst:Lcom/meizu/smart/wristband/models/database/entity/Other$Type;

    aput-object v2, v0, v1

    const/16 v1, 0x10

    sget-object v2, Lcom/meizu/smart/wristband/models/database/entity/Other$Type;->netNodicVer:Lcom/meizu/smart/wristband/models/database/entity/Other$Type;

    aput-object v2, v0, v1

    const/16 v1, 0x11

    sget-object v2, Lcom/meizu/smart/wristband/models/database/entity/Other$Type;->netEf32Ver:Lcom/meizu/smart/wristband/models/database/entity/Other$Type;

    aput-object v2, v0, v1

    const/16 v1, 0x12

    sget-object v2, Lcom/meizu/smart/wristband/models/database/entity/Other$Type;->netNodicExpain:Lcom/meizu/smart/wristband/models/database/entity/Other$Type;

    aput-object v2, v0, v1

    const/16 v1, 0x13

    sget-object v2, Lcom/meizu/smart/wristband/models/database/entity/Other$Type;->netEf32Expain:Lcom/meizu/smart/wristband/models/database/entity/Other$Type;

    aput-object v2, v0, v1

    const/16 v1, 0x14

    sget-object v2, Lcom/meizu/smart/wristband/models/database/entity/Other$Type;->watchNc:Lcom/meizu/smart/wristband/models/database/entity/Other$Type;

    aput-object v2, v0, v1

    const/16 v1, 0x15

    sget-object v2, Lcom/meizu/smart/wristband/models/database/entity/Other$Type;->tempTotalStep:Lcom/meizu/smart/wristband/models/database/entity/Other$Type;

    aput-object v2, v0, v1

    const/16 v1, 0x16

    sget-object v2, Lcom/meizu/smart/wristband/models/database/entity/Other$Type;->handsUp:Lcom/meizu/smart/wristband/models/database/entity/Other$Type;

    aput-object v2, v0, v1

    const/16 v1, 0x17

    sget-object v2, Lcom/meizu/smart/wristband/models/database/entity/Other$Type;->SlpTime:Lcom/meizu/smart/wristband/models/database/entity/Other$Type;

    aput-object v2, v0, v1

    const/16 v1, 0x18

    sget-object v2, Lcom/meizu/smart/wristband/models/database/entity/Other$Type;->blueNoticeVer:Lcom/meizu/smart/wristband/models/database/entity/Other$Type;

    aput-object v2, v0, v1

    const/16 v1, 0x19

    sget-object v2, Lcom/meizu/smart/wristband/models/database/entity/Other$Type;->coreNoticeVer:Lcom/meizu/smart/wristband/models/database/entity/Other$Type;

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    sget-object v2, Lcom/meizu/smart/wristband/models/database/entity/Other$Type;->qq:Lcom/meizu/smart/wristband/models/database/entity/Other$Type;

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    sget-object v2, Lcom/meizu/smart/wristband/models/database/entity/Other$Type;->notification:Lcom/meizu/smart/wristband/models/database/entity/Other$Type;

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    sget-object v2, Lcom/meizu/smart/wristband/models/database/entity/Other$Type;->dfuParam1:Lcom/meizu/smart/wristband/models/database/entity/Other$Type;

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    sget-object v2, Lcom/meizu/smart/wristband/models/database/entity/Other$Type;->useage_daystep:Lcom/meizu/smart/wristband/models/database/entity/Other$Type;

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    sget-object v2, Lcom/meizu/smart/wristband/models/database/entity/Other$Type;->usage_days:Lcom/meizu/smart/wristband/models/database/entity/Other$Type;

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    sget-object v2, Lcom/meizu/smart/wristband/models/database/entity/Other$Type;->usage_mileage:Lcom/meizu/smart/wristband/models/database/entity/Other$Type;

    aput-object v2, v0, v1

    const/16 v1, 0x20

    sget-object v2, Lcom/meizu/smart/wristband/models/database/entity/Other$Type;->unit_length:Lcom/meizu/smart/wristband/models/database/entity/Other$Type;

    aput-object v2, v0, v1

    const/16 v1, 0x21

    sget-object v2, Lcom/meizu/smart/wristband/models/database/entity/Other$Type;->aimSwich:Lcom/meizu/smart/wristband/models/database/entity/Other$Type;

    aput-object v2, v0, v1

    const/16 v1, 0x22

    sget-object v2, Lcom/meizu/smart/wristband/models/database/entity/Other$Type;->smart:Lcom/meizu/smart/wristband/models/database/entity/Other$Type;

    aput-object v2, v0, v1

    const/16 v1, 0x23

    sget-object v2, Lcom/meizu/smart/wristband/models/database/entity/Other$Type;->unit_weight:Lcom/meizu/smart/wristband/models/database/entity/Other$Type;

    aput-object v2, v0, v1

    const/16 v1, 0x24

    sget-object v2, Lcom/meizu/smart/wristband/models/database/entity/Other$Type;->heartrate:Lcom/meizu/smart/wristband/models/database/entity/Other$Type;

    aput-object v2, v0, v1

    const/16 v1, 0x25

    sget-object v2, Lcom/meizu/smart/wristband/models/database/entity/Other$Type;->vibirate:Lcom/meizu/smart/wristband/models/database/entity/Other$Type;

    aput-object v2, v0, v1

    const/16 v1, 0x26

    sget-object v2, Lcom/meizu/smart/wristband/models/database/entity/Other$Type;->dateDisplay:Lcom/meizu/smart/wristband/models/database/entity/Other$Type;

    aput-object v2, v0, v1

    sput-object v0, Lcom/meizu/smart/wristband/models/database/entity/Other$Type;->$VALUES:[Lcom/meizu/smart/wristband/models/database/entity/Other$Type;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 72
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/meizu/smart/wristband/models/database/entity/Other$Type;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 72
    const-class v0, Lcom/meizu/smart/wristband/models/database/entity/Other$Type;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/meizu/smart/wristband/models/database/entity/Other$Type;

    return-object v0
.end method

.method public static values()[Lcom/meizu/smart/wristband/models/database/entity/Other$Type;
    .locals 1

    .prologue
    .line 72
    sget-object v0, Lcom/meizu/smart/wristband/models/database/entity/Other$Type;->$VALUES:[Lcom/meizu/smart/wristband/models/database/entity/Other$Type;

    invoke-virtual {v0}, [Lcom/meizu/smart/wristband/models/database/entity/Other$Type;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/meizu/smart/wristband/models/database/entity/Other$Type;

    return-object v0
.end method
