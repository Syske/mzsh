.class Lcom/meizu/smart/wristband/servers/BleServerB10$6;
.super Ljava/lang/Object;
.source "BleServerB10.java"

# interfaces
.implements Lrx/functions/Action1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/smart/wristband/servers/BleServerB10;->getBtVer(Lcom/meizu/smart/wristband/models/database/entity/BtDev;)Lrx/Observable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lrx/functions/Action1",
        "<",
        "Lcom/meizu/smart/wristband/models/database/FBDBTools$BtDevVersion;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/smart/wristband/servers/BleServerB10;

.field final synthetic val$dev:Lcom/meizu/smart/wristband/models/database/entity/BtDev;


# direct methods
.method constructor <init>(Lcom/meizu/smart/wristband/servers/BleServerB10;Lcom/meizu/smart/wristband/models/database/entity/BtDev;)V
    .locals 0
    .param p1, "this$0"    # Lcom/meizu/smart/wristband/servers/BleServerB10;

    .prologue
    .line 194
    iput-object p1, p0, Lcom/meizu/smart/wristband/servers/BleServerB10$6;->this$0:Lcom/meizu/smart/wristband/servers/BleServerB10;

    iput-object p2, p0, Lcom/meizu/smart/wristband/servers/BleServerB10$6;->val$dev:Lcom/meizu/smart/wristband/models/database/entity/BtDev;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lcom/meizu/smart/wristband/models/database/FBDBTools$BtDevVersion;)V
    .locals 3
    .param p1, "btDevVersion"    # Lcom/meizu/smart/wristband/models/database/FBDBTools$BtDevVersion;

    .prologue
    .line 197
    iget-object v0, p0, Lcom/meizu/smart/wristband/servers/BleServerB10$6;->val$dev:Lcom/meizu/smart/wristband/models/database/entity/BtDev;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/meizu/smart/wristband/models/database/FBDBTools$BtDevVersion;->verName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/meizu/smart/wristband/models/database/entity/BtDev;->setNordicVersion(Ljava/lang/String;)V

    .line 198
    iget-object v0, p0, Lcom/meizu/smart/wristband/servers/BleServerB10$6;->val$dev:Lcom/meizu/smart/wristband/models/database/entity/BtDev;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/meizu/smart/wristband/models/database/FBDBTools$BtDevVersion;->verCode:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/meizu/smart/wristband/models/database/entity/BtDev;->setCoreVersion(Ljava/lang/String;)V

    .line 199
    iget-object v0, p0, Lcom/meizu/smart/wristband/servers/BleServerB10$6;->val$dev:Lcom/meizu/smart/wristband/models/database/entity/BtDev;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/meizu/smart/wristband/models/database/FBDBTools$BtDevVersion;->marksCode:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/meizu/smart/wristband/models/database/entity/BtDev;->setProductor(Ljava/lang/String;)V

    .line 200
    iget-object v0, p0, Lcom/meizu/smart/wristband/servers/BleServerB10$6;->this$0:Lcom/meizu/smart/wristband/servers/BleServerB10;

    iget-object v0, v0, Lcom/meizu/smart/wristband/servers/BleServerB10;->context:Landroid/content/Context;

    iget-object v1, p0, Lcom/meizu/smart/wristband/servers/BleServerB10$6;->val$dev:Lcom/meizu/smart/wristband/models/database/entity/BtDev;

    invoke-static {v0, v1}, Lcom/meizu/smart/wristband/servers/DBDeviceApi;->updateDevice(Landroid/content/Context;Lcom/meizu/smart/wristband/models/database/entity/BtDev;)V

    .line 201
    return-void
.end method

.method public bridge synthetic call(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 194
    check-cast p1, Lcom/meizu/smart/wristband/models/database/FBDBTools$BtDevVersion;

    invoke-virtual {p0, p1}, Lcom/meizu/smart/wristband/servers/BleServerB10$6;->call(Lcom/meizu/smart/wristband/models/database/FBDBTools$BtDevVersion;)V

    return-void
.end method
