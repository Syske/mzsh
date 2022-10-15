.class Lcom/meizu/smart/wristband/meizuUI/main/MainActivity$18;
.super Landroid/content/BroadcastReceiver;
.source "MainActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/smart/wristband/meizuUI/main/MainActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/smart/wristband/meizuUI/main/MainActivity;


# direct methods
.method constructor <init>(Lcom/meizu/smart/wristband/meizuUI/main/MainActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/meizu/smart/wristband/meizuUI/main/MainActivity;

    .prologue
    .line 1192
    iput-object p1, p0, Lcom/meizu/smart/wristband/meizuUI/main/MainActivity$18;->this$0:Lcom/meizu/smart/wristband/meizuUI/main/MainActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 1194
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    const-string v4, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1195
    const-string v2, "android.bluetooth.adapter.extra.STATE"

    .line 1196
    .local v2, "stateExtra":Ljava/lang/String;
    const/4 v3, -0x1

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 1197
    .local v1, "state":I
    packed-switch v1, :pswitch_data_0

    .line 1215
    .end local v1    # "state":I
    .end local v2    # "stateExtra":Ljava/lang/String;
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 1199
    .restart local v1    # "state":I
    .restart local v2    # "stateExtra":Ljava/lang/String;
    :pswitch_1
    const-string v3, "bluetooth on"

    invoke-static {v3}, Ldolphin/tools/util/LogUtil;->i(Ljava/lang/String;)V

    .line 1200
    iget-object v3, p0, Lcom/meizu/smart/wristband/meizuUI/main/MainActivity$18;->this$0:Lcom/meizu/smart/wristband/meizuUI/main/MainActivity;

    invoke-static {v3}, Lcom/meizu/smart/wristband/servers/DBDeviceApi;->getMainDevice(Landroid/content/Context;)Lcom/meizu/smart/wristband/models/database/entity/BtDev;

    move-result-object v0

    .line 1201
    .local v0, "dev":Lcom/meizu/smart/wristband/models/database/entity/BtDev;
    if-eqz v0, :cond_0

    .line 1202
    iget-object v3, p0, Lcom/meizu/smart/wristband/meizuUI/main/MainActivity$18;->this$0:Lcom/meizu/smart/wristband/meizuUI/main/MainActivity;

    invoke-static {v3}, Lcom/meizu/smart/wristband/meizuUI/main/MainActivity;->access$400(Lcom/meizu/smart/wristband/meizuUI/main/MainActivity;)V

    goto :goto_0

    .line 1207
    .end local v0    # "dev":Lcom/meizu/smart/wristband/models/database/entity/BtDev;
    :pswitch_2
    const-string v3, "bluetooth off"

    invoke-static {v3}, Ldolphin/tools/util/LogUtil;->i(Ljava/lang/String;)V

    .line 1208
    iget-object v3, p0, Lcom/meizu/smart/wristband/meizuUI/main/MainActivity$18;->this$0:Lcom/meizu/smart/wristband/meizuUI/main/MainActivity;

    iget-boolean v3, v3, Lcom/meizu/smart/wristband/meizuUI/main/MainActivity;->autoConnectStart:Z

    if-eqz v3, :cond_0

    .line 1209
    iget-object v3, p0, Lcom/meizu/smart/wristband/meizuUI/main/MainActivity$18;->this$0:Lcom/meizu/smart/wristband/meizuUI/main/MainActivity;

    invoke-static {v3}, Lcom/meizu/smart/wristband/meizuUI/main/MainActivity;->access$500(Lcom/meizu/smart/wristband/meizuUI/main/MainActivity;)V

    goto :goto_0

    .line 1197
    nop

    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
