.class Lcom/meizu/smart/wristband/models/bluetooth/BleTools$3$5;
.super Ljava/lang/Object;
.source "BleTools.java"

# interfaces
.implements Lrx/functions/Func1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/smart/wristband/models/bluetooth/BleTools$3;->call(Lrx/Subscriber;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lrx/functions/Func1",
        "<[B",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/smart/wristband/models/bluetooth/BleTools$3;


# direct methods
.method constructor <init>(Lcom/meizu/smart/wristband/models/bluetooth/BleTools$3;)V
    .locals 0
    .param p1, "this$0"    # Lcom/meizu/smart/wristband/models/bluetooth/BleTools$3;

    .prologue
    .line 265
    iput-object p1, p0, Lcom/meizu/smart/wristband/models/bluetooth/BleTools$3$5;->this$0:Lcom/meizu/smart/wristband/models/bluetooth/BleTools$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic call(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 265
    check-cast p1, [B

    invoke-virtual {p0, p1}, Lcom/meizu/smart/wristband/models/bluetooth/BleTools$3$5;->call([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public call([B)Ljava/lang/String;
    .locals 5
    .param p1, "bytes"    # [B

    .prologue
    .line 268
    invoke-static {p1}, Ldolphin/tools/util/StringUtil;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v1

    .line 269
    .local v1, "s1":Ljava/lang/String;
    const-string v3, "ff"

    const-string v4, ""

    invoke-virtual {v1, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    .line 270
    .local v2, "s2":Ljava/lang/String;
    new-instance v0, Ljava/lang/String;

    invoke-static {v2}, Ldolphin/tools/util/StringUtil;->hexString2Bytes(Ljava/lang/String;)[B

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/lang/String;-><init>([B)V

    .line 272
    .local v0, "s":Ljava/lang/String;
    return-object v0
.end method
