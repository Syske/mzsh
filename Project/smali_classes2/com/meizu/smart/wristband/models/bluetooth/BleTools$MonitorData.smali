.class public Lcom/meizu/smart/wristband/models/bluetooth/BleTools$MonitorData;
.super Ljava/lang/Object;
.source "BleTools.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/smart/wristband/models/bluetooth/BleTools;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MonitorData"
.end annotation


# instance fields
.field public data:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Byte;",
            ">;"
        }
    .end annotation
.end field

.field public header:Lcom/meizu/smart/wristband/models/bluetooth/BleTools$Header;

.field public time_dev:J


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    new-instance v0, Lcom/meizu/smart/wristband/models/bluetooth/BleTools$Header;

    invoke-direct {v0}, Lcom/meizu/smart/wristband/models/bluetooth/BleTools$Header;-><init>()V

    iput-object v0, p0, Lcom/meizu/smart/wristband/models/bluetooth/BleTools$MonitorData;->header:Lcom/meizu/smart/wristband/models/bluetooth/BleTools$Header;

    .line 44
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/meizu/smart/wristband/models/bluetooth/BleTools$MonitorData;->data:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public addData([B)V
    .locals 7
    .param p1, "bytes"    # [B

    .prologue
    const/16 v6, 0xff

    const/4 v3, 0x0

    .line 48
    const-string v1, ""

    .line 49
    .local v1, "end":Ljava/lang/String;
    iget-object v4, p0, Lcom/meizu/smart/wristband/models/bluetooth/BleTools$MonitorData;->header:Lcom/meizu/smart/wristband/models/bluetooth/BleTools$Header;

    iget-object v4, v4, Lcom/meizu/smart/wristband/models/bluetooth/BleTools$Header;->original:Ljava/lang/String;

    const-string v5, "end"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 50
    array-length v3, p1

    add-int/lit8 v3, v3, -0x1

    aget-byte v3, p1, v3

    const/16 v4, 0xa

    if-ne v3, v4, :cond_0

    array-length v3, p1

    add-int/lit8 v3, v3, -0x2

    aget-byte v3, p1, v3

    const/16 v4, 0xd

    if-ne v3, v4, :cond_0

    .line 51
    const-string v1, ":end"

    .line 53
    :try_start_0
    array-length v3, p1

    add-int/lit8 v3, v3, -0x2

    new-array v2, v3, [B

    .line 54
    .local v2, "temp":[B
    const/4 v3, 0x0

    const/4 v4, 0x0

    array-length v5, p1

    add-int/lit8 v5, v5, -0x2

    invoke-static {p1, v3, v2, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 55
    array-length v3, v2

    new-array p1, v3, [B

    .line 56
    const/4 v3, 0x0

    const/4 v4, 0x0

    array-length v5, v2

    invoke-static {v2, v3, p1, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 60
    .end local v2    # "temp":[B
    :cond_0
    :goto_0
    iget-object v3, p0, Lcom/meizu/smart/wristband/models/bluetooth/BleTools$MonitorData;->header:Lcom/meizu/smart/wristband/models/bluetooth/BleTools$Header;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/meizu/smart/wristband/models/bluetooth/BleTools$MonitorData;->header:Lcom/meizu/smart/wristband/models/bluetooth/BleTools$Header;

    iget-object v5, v5, Lcom/meizu/smart/wristband/models/bluetooth/BleTools$Header;->original:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    new-instance v5, Ljava/lang/String;

    invoke-direct {v5, p1}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/meizu/smart/wristband/models/bluetooth/BleTools$Header;->original:Ljava/lang/String;

    .line 61
    iget-object v3, p0, Lcom/meizu/smart/wristband/models/bluetooth/BleTools$MonitorData;->header:Lcom/meizu/smart/wristband/models/bluetooth/BleTools$Header;

    invoke-static {v3}, Lcom/meizu/smart/wristband/models/bluetooth/BleTools;->access$000(Lcom/meizu/smart/wristband/models/bluetooth/BleTools$Header;)V

    .line 69
    :cond_1
    return-void

    .line 63
    :cond_2
    aget-byte v4, p1, v3

    if-ne v4, v6, :cond_3

    const/4 v4, 0x1

    aget-byte v4, p1, v4

    if-ne v4, v6, :cond_3

    const/4 v4, 0x2

    aget-byte v4, p1, v4

    if-eq v4, v6, :cond_1

    .line 64
    :cond_3
    array-length v4, p1

    :goto_1
    if-ge v3, v4, :cond_1

    aget-byte v0, p1, v3

    .line 65
    .local v0, "b":B
    iget-object v5, p0, Lcom/meizu/smart/wristband/models/bluetooth/BleTools$MonitorData;->data:Ljava/util/List;

    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 64
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 57
    .end local v0    # "b":B
    :catch_0
    move-exception v3

    goto :goto_0
.end method

.method public getProgress()J
    .locals 4

    .prologue
    .line 77
    iget-object v0, p0, Lcom/meizu/smart/wristband/models/bluetooth/BleTools$MonitorData;->header:Lcom/meizu/smart/wristband/models/bluetooth/BleTools$Header;

    iget v0, v0, Lcom/meizu/smart/wristband/models/bluetooth/BleTools$Header;->total:I

    if-nez v0, :cond_0

    .line 78
    const-wide/16 v0, 0x64

    .line 80
    :goto_0
    return-wide v0

    :cond_0
    const-wide/high16 v0, 0x4059000000000000L    # 100.0

    iget-object v2, p0, Lcom/meizu/smart/wristband/models/bluetooth/BleTools$MonitorData;->header:Lcom/meizu/smart/wristband/models/bluetooth/BleTools$Header;

    iget v2, v2, Lcom/meizu/smart/wristband/models/bluetooth/BleTools$Header;->num:I

    int-to-double v2, v2

    mul-double/2addr v0, v2

    iget-object v2, p0, Lcom/meizu/smart/wristband/models/bluetooth/BleTools$MonitorData;->header:Lcom/meizu/smart/wristband/models/bluetooth/BleTools$Header;

    iget v2, v2, Lcom/meizu/smart/wristband/models/bluetooth/BleTools$Header;->total:I

    int-to-double v2, v2

    div-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->round(D)J

    move-result-wide v0

    goto :goto_0
.end method

.method public isFull()Z
    .locals 2

    .prologue
    .line 73
    iget-object v0, p0, Lcom/meizu/smart/wristband/models/bluetooth/BleTools$MonitorData;->header:Lcom/meizu/smart/wristband/models/bluetooth/BleTools$Header;

    iget v0, v0, Lcom/meizu/smart/wristband/models/bluetooth/BleTools$Header;->len:I

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/meizu/smart/wristband/models/bluetooth/BleTools$MonitorData;->data:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget-object v1, p0, Lcom/meizu/smart/wristband/models/bluetooth/BleTools$MonitorData;->header:Lcom/meizu/smart/wristband/models/bluetooth/BleTools$Header;

    iget v1, v1, Lcom/meizu/smart/wristband/models/bluetooth/BleTools$Header;->receiveLen:I

    if-lt v0, v1, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/meizu/smart/wristband/models/bluetooth/BleTools$MonitorData;->header:Lcom/meizu/smart/wristband/models/bluetooth/BleTools$Header;

    iget-object v0, v0, Lcom/meizu/smart/wristband/models/bluetooth/BleTools$Header;->original:Ljava/lang/String;

    const-string v1, "end"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
