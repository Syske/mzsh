.class final Lcom/meizu/smart/wristband/models/bluetooth/FBBleApi1$28;
.super Ljava/lang/Object;
.source "FBBleApi1.java"

# interfaces
.implements Lrx/functions/Func1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/smart/wristband/models/bluetooth/FBBleApi1;->requestPushMsg1()Lrx/Observable;
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
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 371
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic call(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 371
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/meizu/smart/wristband/models/bluetooth/FBBleApi1$28;->call(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public call(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 374
    const-string v1, "\r\n"

    const-string v2, ""

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/meizu/smart/wristband/models/bluetooth/BleTools;->parseCmdResponse(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 375
    .local v0, "param":[Ljava/lang/String;
    const/4 v1, 0x0

    aget-object v1, v0, v1

    return-object v1
.end method
