.class public Lcom/meizu/smart/wristband/bluetooth/BleAssistant$BleAdvertisedData;
.super Ljava/lang/Object;
.source "BleAssistant.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/smart/wristband/bluetooth/BleAssistant;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BleAdvertisedData"
.end annotation


# instance fields
.field private mName:Ljava/lang/String;

.field private mUuids:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/util/UUID;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;Ljava/lang/String;)V
    .locals 0
    .param p2, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/util/UUID;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 21
    .local p1, "uuids":Ljava/util/List;, "Ljava/util/List<Ljava/util/UUID;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lcom/meizu/smart/wristband/bluetooth/BleAssistant$BleAdvertisedData;->mUuids:Ljava/util/List;

    .line 23
    iput-object p2, p0, Lcom/meizu/smart/wristband/bluetooth/BleAssistant$BleAdvertisedData;->mName:Ljava/lang/String;

    .line 24
    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/meizu/smart/wristband/bluetooth/BleAssistant$BleAdvertisedData;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public getUuids()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/util/UUID;",
            ">;"
        }
    .end annotation

    .prologue
    .line 27
    iget-object v0, p0, Lcom/meizu/smart/wristband/bluetooth/BleAssistant$BleAdvertisedData;->mUuids:Ljava/util/List;

    return-object v0
.end method
