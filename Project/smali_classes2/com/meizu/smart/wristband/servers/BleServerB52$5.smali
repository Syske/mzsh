.class Lcom/meizu/smart/wristband/servers/BleServerB52$5;
.super Ljava/lang/Object;
.source "BleServerB52.java"

# interfaces
.implements Lrx/functions/Action1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/smart/wristband/servers/BleServerB52;->prepareOTA(Lcom/meizu/smart/wristband/models/database/entity/BtDev;)Lrx/Observable;
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
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/smart/wristband/servers/BleServerB52;


# direct methods
.method constructor <init>(Lcom/meizu/smart/wristband/servers/BleServerB52;)V
    .locals 0
    .param p1, "this$0"    # Lcom/meizu/smart/wristband/servers/BleServerB52;

    .prologue
    .line 250
    iput-object p1, p0, Lcom/meizu/smart/wristband/servers/BleServerB52$5;->this$0:Lcom/meizu/smart/wristband/servers/BleServerB52;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Ljava/lang/Boolean;)V
    .locals 2
    .param p1, "aBoolean"    # Ljava/lang/Boolean;

    .prologue
    .line 253
    iget-object v0, p0, Lcom/meizu/smart/wristband/servers/BleServerB52$5;->this$0:Lcom/meizu/smart/wristband/servers/BleServerB52;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/meizu/smart/wristband/servers/BleServerB52;->otaOrLogout:Z

    .line 255
    const-string v0, "ota disconnect"

    invoke-static {v0}, Ldolphin/tools/util/LogUtil;->e(Ljava/lang/String;)V

    .line 256
    iget-object v0, p0, Lcom/meizu/smart/wristband/servers/BleServerB52$5;->this$0:Lcom/meizu/smart/wristband/servers/BleServerB52;

    iget-object v0, v0, Lcom/meizu/smart/wristband/servers/BleServerB52;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/meizu/smart/wristband/bluetooth/BleManager;->instance(Landroid/content/Context;)Lcom/meizu/smart/wristband/bluetooth/BleManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/meizu/smart/wristband/bluetooth/BleManager;->OTAdisconnect()Z

    .line 257
    return-void
.end method

.method public bridge synthetic call(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 250
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/meizu/smart/wristband/servers/BleServerB52$5;->call(Ljava/lang/Boolean;)V

    return-void
.end method
