.class final Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService$1;
.super Ljava/lang/ThreadLocal;
.source "DfuBaseService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/ThreadLocal",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 291
    invoke-direct {p0}, Ljava/lang/ThreadLocal;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic initialValue()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 291
    invoke-virtual {p0}, Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService$1;->initialValue()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected initialValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 294
    const-string v0, "no.nordicsemi.android.dfu.extra.EXTRA_PARTS_TOTAL"

    return-object v0
.end method
