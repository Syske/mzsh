.class public Lcom/meizu/smart/wristband/ota/suota/data/Uuid;
.super Ljava/lang/Object;
.source "Uuid.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static parseFromAdvertisementData([B)Ljava/util/List;
    .locals 13
    .param p0, "advertisedData"    # [B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B)",
            "Ljava/util/List",
            "<",
            "Ljava/util/UUID;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v12, 0x2

    .line 14
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 16
    .local v7, "uuids":Ljava/util/List;, "Ljava/util/List<Ljava/util/UUID;>;"
    invoke-static {p0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v8

    sget-object v9, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v8, v9}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 17
    .local v0, "buffer":Ljava/nio/ByteBuffer;
    :cond_0
    :goto_0
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v8

    if-le v8, v12, :cond_1

    .line 18
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result v1

    .line 19
    .local v1, "length":B
    if-nez v1, :cond_2

    .line 48
    .end local v1    # "length":B
    :cond_1
    return-object v7

    .line 21
    .restart local v1    # "length":B
    :cond_2
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result v6

    .line 22
    .local v6, "type":B
    packed-switch v6, :pswitch_data_0

    .line 43
    :pswitch_0
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v8

    add-int/2addr v8, v1

    add-int/lit8 v8, v8, -0x1

    invoke-virtual {v0, v8}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    goto :goto_0

    .line 25
    :goto_1
    :pswitch_1
    if-lt v1, v12, :cond_0

    .line 26
    const-string v8, "%08x-0000-1000-8000-00805f9b34fb"

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    .line 27
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v11

    invoke-static {v11}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v11

    aput-object v11, v9, v10

    .line 26
    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 28
    add-int/lit8 v8, v1, -0x2

    int-to-byte v1, v8

    goto :goto_1

    .line 34
    :goto_2
    :pswitch_2
    const/16 v8, 0x10

    if-lt v1, v8, :cond_0

    .line 35
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getLong()J

    move-result-wide v2

    .line 36
    .local v2, "lsb":J
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getLong()J

    move-result-wide v4

    .line 37
    .local v4, "msb":J
    new-instance v8, Ljava/util/UUID;

    invoke-direct {v8, v4, v5, v2, v3}, Ljava/util/UUID;-><init>(JJ)V

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 38
    add-int/lit8 v8, v1, -0x10

    int-to-byte v1, v8

    .line 39
    goto :goto_2

    .line 22
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method
