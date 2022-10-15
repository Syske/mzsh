.class final Lcom/meizu/smart/wristband/models/bluetooth/FBBleApi1$39;
.super Ljava/lang/Object;
.source "FBBleApi1.java"

# interfaces
.implements Lrx/functions/Func1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/smart/wristband/models/bluetooth/FBBleApi1;->getTimeZone()Lrx/Observable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lrx/functions/Func1",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 492
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Ljava/lang/String;)Ljava/lang/Integer;
    .locals 8
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x0

    .line 496
    :try_start_0
    const-string v5, "\r\n"

    const-string v6, ""

    invoke-virtual {p1, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    const-string v6, ":"

    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    array-length v5, v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_0

    .line 497
    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 509
    :goto_0
    return-object v3

    .line 499
    :cond_0
    const-string v5, "\r\n"

    const-string v6, ""

    invoke-virtual {p1, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/meizu/smart/wristband/models/bluetooth/BleTools;->parseCmdResponse(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 500
    .local v2, "param":[Ljava/lang/String;
    const/4 v5, 0x0

    aget-object v5, v2, v5

    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    .line 501
    .local v4, "value":[B
    const/4 v1, 0x0

    .line 502
    .local v1, "i":I
    const/4 v1, 0x0

    :goto_1
    array-length v5, v4

    if-ge v1, v5, :cond_1

    .line 503
    aget-byte v5, v4, v1

    const/16 v6, 0xff

    if-ne v5, v6, :cond_2

    .line 506
    :cond_1
    new-instance v5, Ljava/lang/String;

    const/4 v6, 0x0

    invoke-direct {v5, v4, v6, v1}, Ljava/lang/String;-><init>([BII)V

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 507
    .local v3, "timezone":Ljava/lang/Integer;
    goto :goto_0

    .line 502
    .end local v3    # "timezone":Ljava/lang/Integer;
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 508
    .end local v1    # "i":I
    .end local v2    # "param":[Ljava/lang/String;
    .end local v4    # "value":[B
    :catch_0
    move-exception v0

    .line 509
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    goto :goto_0
.end method

.method public bridge synthetic call(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 492
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/meizu/smart/wristband/models/bluetooth/FBBleApi1$39;->call(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method
