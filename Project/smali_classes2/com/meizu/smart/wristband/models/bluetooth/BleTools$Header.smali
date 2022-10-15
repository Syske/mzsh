.class public Lcom/meizu/smart/wristband/models/bluetooth/BleTools$Header;
.super Ljava/lang/Object;
.source "BleTools.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/smart/wristband/models/bluetooth/BleTools;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Header"
.end annotation


# instance fields
.field public blocklen:I

.field public crc:Ljava/lang/String;

.field public en:Ljava/lang/String;

.field public len:I

.field public num:I

.field public original:Ljava/lang/String;

.field public receiveLen:I

.field public total:I

.field public type:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    const-string v0, ""

    iput-object v0, p0, Lcom/meizu/smart/wristband/models/bluetooth/BleTools$Header;->original:Ljava/lang/String;

    return-void
.end method
