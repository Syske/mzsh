.class public Lcom/meizu/smart/wristband/bluetooth/BleAssistant;
.super Ljava/lang/Object;
.source "BleAssistant.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/meizu/smart/wristband/bluetooth/BleAssistant$BleAdvertisedData;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 16
    const-class v0, Lcom/meizu/smart/wristband/bluetooth/BleAssistant;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/meizu/smart/wristband/bluetooth/BleAssistant;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    return-void
.end method

.method public static parseAdertisedData([B)Lcom/meizu/smart/wristband/bluetooth/BleAssistant$BleAdvertisedData;
    .locals 16
    .param p0, "advertisedData"    # [B

    .prologue
    .line 38
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 39
    .local v11, "uuids":Ljava/util/List;, "Ljava/util/List<Ljava/util/UUID;>;"
    const/4 v3, 0x0

    .line 40
    .local v3, "name":Ljava/lang/String;
    if-nez p0, :cond_0

    .line 41
    new-instance v12, Lcom/meizu/smart/wristband/bluetooth/BleAssistant$BleAdvertisedData;

    invoke-direct {v12, v11, v3}, Lcom/meizu/smart/wristband/bluetooth/BleAssistant$BleAdvertisedData;-><init>(Ljava/util/List;Ljava/lang/String;)V

    .line 82
    :goto_0
    return-object v12

    .line 44
    :cond_0
    invoke-static/range {p0 .. p0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v12

    sget-object v13, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v12, v13}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 45
    .local v0, "buffer":Ljava/nio/ByteBuffer;
    :cond_1
    :goto_1
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v12

    const/4 v13, 0x2

    if-le v12, v13, :cond_2

    .line 46
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result v2

    .line 47
    .local v2, "length":B
    if-nez v2, :cond_3

    .line 82
    .end local v2    # "length":B
    :cond_2
    new-instance v12, Lcom/meizu/smart/wristband/bluetooth/BleAssistant$BleAdvertisedData;

    invoke-direct {v12, v11, v3}, Lcom/meizu/smart/wristband/bluetooth/BleAssistant$BleAdvertisedData;-><init>(Ljava/util/List;Ljava/lang/String;)V

    goto :goto_0

    .line 49
    .restart local v2    # "length":B
    :cond_3
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result v10

    .line 50
    .local v10, "type":B
    packed-switch v10, :pswitch_data_0

    .line 78
    :pswitch_0
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v12

    add-int/2addr v12, v2

    add-int/lit8 v12, v12, -0x1

    invoke-virtual {v0, v12}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    goto :goto_1

    .line 53
    :goto_2
    :pswitch_1
    const/4 v12, 0x2

    if-lt v2, v12, :cond_1

    .line 54
    const-string v12, "%08x-0000-1000-8000-00805f9b34fb"

    const/4 v13, 0x1

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    .line 55
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v15

    invoke-static {v15}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v15

    aput-object v15, v13, v14

    .line 54
    invoke-static {v12, v13}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v12

    invoke-interface {v11, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 56
    add-int/lit8 v12, v2, -0x2

    int-to-byte v2, v12

    goto :goto_2

    .line 61
    :goto_3
    :pswitch_2
    const/16 v12, 0x10

    if-lt v2, v12, :cond_1

    .line 62
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getLong()J

    move-result-wide v4

    .line 63
    .local v4, "lsb":J
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getLong()J

    move-result-wide v6

    .line 64
    .local v6, "msb":J
    new-instance v12, Ljava/util/UUID;

    invoke-direct {v12, v6, v7, v4, v5}, Ljava/util/UUID;-><init>(JJ)V

    invoke-interface {v11, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 65
    add-int/lit8 v12, v2, -0x10

    int-to-byte v2, v12

    .line 66
    goto :goto_3

    .line 69
    .end local v4    # "lsb":J
    .end local v6    # "msb":J
    :pswitch_3
    add-int/lit8 v12, v2, -0x1

    new-array v9, v12, [B

    .line 70
    .local v9, "nameBytes":[B
    invoke-virtual {v0, v9}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 72
    :try_start_0
    new-instance v8, Ljava/lang/String;

    const-string v12, "utf-8"

    invoke-direct {v8, v9, v12}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v3    # "name":Ljava/lang/String;
    .local v8, "name":Ljava/lang/String;
    move-object v3, v8

    .line 75
    .end local v8    # "name":Ljava/lang/String;
    .restart local v3    # "name":Ljava/lang/String;
    goto :goto_1

    .line 73
    :catch_0
    move-exception v1

    .line 74
    .local v1, "e":Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v1}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_1

    .line 50
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method
