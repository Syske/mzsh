.class Lcom/meizu/smart/wristband/servers/BleServerB52$2;
.super Ljava/lang/Object;
.source "BleServerB52.java"

# interfaces
.implements Lrx/functions/Action1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/smart/wristband/servers/BleServerB52;->getBtVer(Lcom/meizu/smart/wristband/models/database/entity/BtDev;)Lrx/Observable;
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
.field final synthetic this$0:Lcom/meizu/smart/wristband/servers/BleServerB52;

.field final synthetic val$dev:Lcom/meizu/smart/wristband/models/database/entity/BtDev;


# direct methods
.method constructor <init>(Lcom/meizu/smart/wristband/servers/BleServerB52;Lcom/meizu/smart/wristband/models/database/entity/BtDev;)V
    .locals 0
    .param p1, "this$0"    # Lcom/meizu/smart/wristband/servers/BleServerB52;

    .prologue
    .line 232
    iput-object p1, p0, Lcom/meizu/smart/wristband/servers/BleServerB52$2;->this$0:Lcom/meizu/smart/wristband/servers/BleServerB52;

    iput-object p2, p0, Lcom/meizu/smart/wristband/servers/BleServerB52$2;->val$dev:Lcom/meizu/smart/wristband/models/database/entity/BtDev;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lcom/meizu/smart/wristband/models/database/FBDBTools$BtDevVersion;)V
    .locals 3
    .param p1, "btDevVersion"    # Lcom/meizu/smart/wristband/models/database/FBDBTools$BtDevVersion;

    .prologue
    .line 235
    iget-object v0, p0, Lcom/meizu/smart/wristband/servers/BleServerB52$2;->val$dev:Lcom/meizu/smart/wristband/models/database/entity/BtDev;

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

    .line 236
    iget-object v0, p0, Lcom/meizu/smart/wristband/servers/BleServerB52$2;->val$dev:Lcom/meizu/smart/wristband/models/database/entity/BtDev;

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

    .line 237
    iget-object v0, p0, Lcom/meizu/smart/wristband/servers/BleServerB52$2;->val$dev:Lcom/meizu/smart/wristband/models/database/entity/BtDev;

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

    .line 238
    iget-object v0, p0, Lcom/meizu/smart/wristband/servers/BleServerB52$2;->this$0:Lcom/meizu/smart/wristband/servers/BleServerB52;

    iget-object v0, v0, Lcom/meizu/smart/wristband/servers/BleServerB52;->context:Landroid/content/Context;

    iget-object v1, p0, Lcom/meizu/smart/wristband/servers/BleServerB52$2;->val$dev:Lcom/meizu/smart/wristband/models/database/entity/BtDev;

    invoke-static {v0, v1}, Lcom/meizu/smart/wristband/servers/DBDeviceApi;->updateDevice(Landroid/content/Context;Lcom/meizu/smart/wristband/models/database/entity/BtDev;)V

    .line 239
    return-void
.end method

.method public bridge synthetic call(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 232
    check-cast p1, Lcom/meizu/smart/wristband/models/database/FBDBTools$BtDevVersion;

    invoke-virtual {p0, p1}, Lcom/meizu/smart/wristband/servers/BleServerB52$2;->call(Lcom/meizu/smart/wristband/models/database/FBDBTools$BtDevVersion;)V

    return-void
.end method
