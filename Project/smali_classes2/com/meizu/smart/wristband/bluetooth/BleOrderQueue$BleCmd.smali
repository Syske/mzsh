.class public Lcom/meizu/smart/wristband/bluetooth/BleOrderQueue$BleCmd;
.super Ljava/lang/Object;
.source "BleOrderQueue.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/smart/wristband/bluetooth/BleOrderQueue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BleCmd"
.end annotation


# instance fields
.field buffer:[B

.field callback:Lcom/meizu/smart/wristband/bluetooth/BleOrderQueue$CallBack;

.field charReadUUID:Ljava/util/UUID;

.field charWriteUUID:Ljava/util/UUID;

.field content:Ljava/lang/String;

.field descriptorUUID:Ljava/util/UUID;

.field id:Ljava/lang/Integer;

.field serverUUID:Ljava/util/UUID;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 262
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
