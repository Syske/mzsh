.class public Lcom/meizu/smart/wristband/constant/Producter;
.super Ljava/lang/Object;
.source "Producter.java"


# static fields
.field public static final product_Meizu_H1:Ljava/lang/String; = "Meizu H1"

.field public static final product_R23:Ljava/lang/String; = "R23"

.field public static final product_WL:Ljava/lang/String; = "WL010"

.field public static final product_b103:Ljava/lang/String; = "B103"

.field public static final product_b502:Ljava/lang/String; = "B502"

.field public static final product_b502a:Ljava/lang/String; = "B502A"

.field public static final product_b521:Ljava/lang/String; = "B521"

.field public static final product_b521a:Ljava/lang/String; = "B521A"

.field public static final product_b522:Ljava/lang/String; = "B522"

.field public static final product_b522a:Ljava/lang/String; = "B522A"

.field public static final product_fbc:Ljava/lang/String; = "FITBANDC"

.field public static final product_hyx:Ljava/lang/String; = "HYX"

.field public static final product_lev01:Ljava/lang/String; = "LEV01"

.field public static final product_test:Ljava/lang/String; = "B515"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static deviceTypeToManufacturer(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "type"    # Ljava/lang/String;

    .prologue
    .line 24
    const-string v0, "HYX"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "004"

    .line 36
    :goto_0
    return-object v0

    .line 25
    :cond_0
    const-string v0, "FITBANDC"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "006"

    goto :goto_0

    .line 26
    :cond_1
    const-string v0, "LEV01"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "007"

    goto :goto_0

    .line 27
    :cond_2
    const-string v0, "B103"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "014"

    goto :goto_0

    .line 28
    :cond_3
    const-string v0, "B522"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "015"

    goto :goto_0

    .line 29
    :cond_4
    const-string v0, "B521"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const-string v0, "016"

    goto :goto_0

    .line 30
    :cond_5
    const-string v0, "B502"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    const-string v0, "017"

    goto :goto_0

    .line 31
    :cond_6
    const-string v0, "B521A"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const-string v0, "018"

    goto :goto_0

    .line 32
    :cond_7
    const-string v0, "B522A"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const-string v0, "019"

    goto :goto_0

    .line 33
    :cond_8
    const-string v0, "B502A"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    const-string v0, "020"

    goto :goto_0

    .line 34
    :cond_9
    const-string v0, "WL010"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    const-string v0, "022"

    goto :goto_0

    .line 35
    :cond_a
    const-string v0, "Meizu H1"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    const-string v0, "023"

    goto :goto_0

    .line 36
    :cond_b
    const-string v0, ""

    goto :goto_0
.end method

.method public static getSupportDevice()[Ljava/lang/String;
    .locals 3

    .prologue
    .line 62
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "Meizu H1"

    aput-object v2, v0, v1

    return-object v0
.end method

.method public static hasHeartRate(Ljava/lang/String;)Z
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 85
    if-eqz p0, :cond_1

    const-string v0, "B521"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "B502"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "B521A"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "WL010"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "B502A"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "R23"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "Meizu H1"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static hasNoSleep(Ljava/lang/String;)Z
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 81
    if-eqz p0, :cond_0

    const-string v0, "LEV01"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isB10Set(Ljava/lang/String;)Z
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 77
    if-eqz p0, :cond_1

    const-string v0, "LEV01"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "B103"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isB52Set(Ljava/lang/String;)Z
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 66
    if-eqz p0, :cond_1

    const-string v0, "B521"

    .line 67
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "B522"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "B502"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "B521A"

    .line 68
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "WL010"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "B522A"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "B502A"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "Meizu H1"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "R23"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "B515"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isMeizuSet(Ljava/lang/String;)Z
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 72
    if-eqz p0, :cond_0

    const-string v0, "Meizu H1"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static manufacturerToDeviceType(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "type"    # Ljava/lang/String;

    .prologue
    .line 40
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    .line 41
    .local v0, "typecode":Ljava/lang/Integer;
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, 0x4

    if-ne v1, v2, :cond_0

    const-string v1, "HYX"

    .line 53
    :goto_0
    return-object v1

    .line 42
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, 0x6

    if-ne v1, v2, :cond_1

    const-string v1, "FITBANDC"

    goto :goto_0

    .line 43
    :cond_1
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, 0x7

    if-ne v1, v2, :cond_2

    const-string v1, "LEV01"

    goto :goto_0

    .line 44
    :cond_2
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/16 v2, 0xe

    if-ne v1, v2, :cond_3

    const-string v1, "B103"

    goto :goto_0

    .line 45
    :cond_3
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/16 v2, 0xf

    if-ne v1, v2, :cond_4

    const-string v1, "B522"

    goto :goto_0

    .line 46
    :cond_4
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/16 v2, 0x10

    if-ne v1, v2, :cond_5

    const-string v1, "B521"

    goto :goto_0

    .line 47
    :cond_5
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/16 v2, 0x11

    if-ne v1, v2, :cond_6

    const-string v1, "B502"

    goto :goto_0

    .line 48
    :cond_6
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/16 v2, 0x12

    if-ne v1, v2, :cond_7

    const-string v1, "B521A"

    goto :goto_0

    .line 49
    :cond_7
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/16 v2, 0x13

    if-ne v1, v2, :cond_8

    const-string v1, "B522A"

    goto :goto_0

    .line 50
    :cond_8
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/16 v2, 0x14

    if-ne v1, v2, :cond_9

    const-string v1, "B502A"

    goto :goto_0

    .line 51
    :cond_9
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/16 v2, 0x16

    if-ne v1, v2, :cond_a

    const-string v1, "WL010"

    goto :goto_0

    .line 52
    :cond_a
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/16 v2, 0x17

    if-ne v1, v2, :cond_b

    const-string v1, "Meizu H1"

    goto :goto_0

    .line 53
    :cond_b
    const-string v1, "B521"

    goto :goto_0
.end method
