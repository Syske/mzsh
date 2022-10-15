.class Lcom/meizu/smart/wristband/meizuUI/product521/NewBindActivity$2;
.super Ljava/lang/Object;
.source "NewBindActivity.java"

# interfaces
.implements Lrx/functions/Action1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/smart/wristband/meizuUI/product521/NewBindActivity;->setListener()V
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
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/smart/wristband/meizuUI/product521/NewBindActivity;


# direct methods
.method constructor <init>(Lcom/meizu/smart/wristband/meizuUI/product521/NewBindActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/meizu/smart/wristband/meizuUI/product521/NewBindActivity;

    .prologue
    .line 118
    iput-object p1, p0, Lcom/meizu/smart/wristband/meizuUI/product521/NewBindActivity$2;->this$0:Lcom/meizu/smart/wristband/meizuUI/product521/NewBindActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Ljava/lang/Integer;)V
    .locals 5
    .param p1, "integer"    # Ljava/lang/Integer;

    .prologue
    .line 122
    iget-object v2, p0, Lcom/meizu/smart/wristband/meizuUI/product521/NewBindActivity$2;->this$0:Lcom/meizu/smart/wristband/meizuUI/product521/NewBindActivity;

    iget v2, v2, Lcom/meizu/smart/wristband/meizuUI/product521/NewBindActivity;->nSelectIndex:I

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-ne v2, v3, :cond_0

    .line 142
    :goto_0
    return-void

    .line 127
    :cond_0
    iget-object v2, p0, Lcom/meizu/smart/wristband/meizuUI/product521/NewBindActivity$2;->this$0:Lcom/meizu/smart/wristband/meizuUI/product521/NewBindActivity;

    invoke-static {v2}, Lcom/meizu/smart/wristband/meizuUI/product521/NewBindActivity;->access$100(Lcom/meizu/smart/wristband/meizuUI/product521/NewBindActivity;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/meizu/smart/wristband/servers/DBDeviceApi;->getMainDevice(Landroid/content/Context;)Lcom/meizu/smart/wristband/models/database/entity/BtDev;

    move-result-object v0

    .line 128
    .local v0, "device":Lcom/meizu/smart/wristband/models/database/entity/BtDev;
    if-eqz v0, :cond_1

    .line 129
    iget-object v2, p0, Lcom/meizu/smart/wristband/meizuUI/product521/NewBindActivity$2;->this$0:Lcom/meizu/smart/wristband/meizuUI/product521/NewBindActivity;

    invoke-static {v2}, Lcom/meizu/smart/wristband/meizuUI/product521/NewBindActivity;->access$100(Lcom/meizu/smart/wristband/meizuUI/product521/NewBindActivity;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/meizu/smart/wristband/bluetooth/BleManager;->instance(Landroid/content/Context;)Lcom/meizu/smart/wristband/bluetooth/BleManager;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/meizu/smart/wristband/bluetooth/BleManager;->setAutoConnect(ZLjava/lang/String;)Z

    .line 130
    iget-object v2, p0, Lcom/meizu/smart/wristband/meizuUI/product521/NewBindActivity$2;->this$0:Lcom/meizu/smart/wristband/meizuUI/product521/NewBindActivity;

    invoke-static {v2}, Lcom/meizu/smart/wristband/meizuUI/product521/NewBindActivity;->access$100(Lcom/meizu/smart/wristband/meizuUI/product521/NewBindActivity;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/meizu/smart/wristband/servers/BleServer;->getBleInstance(Landroid/content/Context;)Lcom/meizu/smart/wristband/servers/BleServer;

    move-result-object v2

    invoke-virtual {v2}, Lcom/meizu/smart/wristband/servers/BleServer;->disConnect()V

    .line 134
    :cond_1
    iget-object v2, p0, Lcom/meizu/smart/wristband/meizuUI/product521/NewBindActivity$2;->this$0:Lcom/meizu/smart/wristband/meizuUI/product521/NewBindActivity;

    invoke-static {v2}, Lcom/meizu/smart/wristband/meizuUI/product521/NewBindActivity;->access$200(Lcom/meizu/smart/wristband/meizuUI/product521/NewBindActivity;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/meizu/smart/wristband/meizuUI/product521/NewBindActivity$Product;

    .line 135
    .local v1, "p":Lcom/meizu/smart/wristband/meizuUI/product521/NewBindActivity$Product;
    iget-object v2, v1, Lcom/meizu/smart/wristband/meizuUI/product521/NewBindActivity$Product;->mode:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_2

    .line 136
    iget-object v2, p0, Lcom/meizu/smart/wristband/meizuUI/product521/NewBindActivity$2;->this$0:Lcom/meizu/smart/wristband/meizuUI/product521/NewBindActivity;

    invoke-static {v2, p1}, Lcom/meizu/smart/wristband/meizuUI/product521/NewBindActivity;->access$300(Lcom/meizu/smart/wristband/meizuUI/product521/NewBindActivity;Ljava/lang/Integer;)V

    goto :goto_0

    .line 138
    :cond_2
    iget-object v2, p0, Lcom/meizu/smart/wristband/meizuUI/product521/NewBindActivity$2;->this$0:Lcom/meizu/smart/wristband/meizuUI/product521/NewBindActivity;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iput v3, v2, Lcom/meizu/smart/wristband/meizuUI/product521/NewBindActivity;->nSelectIndex:I

    .line 139
    iget-object v2, p0, Lcom/meizu/smart/wristband/meizuUI/product521/NewBindActivity$2;->this$0:Lcom/meizu/smart/wristband/meizuUI/product521/NewBindActivity;

    invoke-static {v2}, Lcom/meizu/smart/wristband/meizuUI/product521/NewBindActivity;->access$400(Lcom/meizu/smart/wristband/meizuUI/product521/NewBindActivity;)Lcom/meizu/smart/wristband/meizuUI/product521/NewBindActivity$MyListAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/meizu/smart/wristband/meizuUI/product521/NewBindActivity$MyListAdapter;->notifyDataSetChanged()V

    .line 140
    iget-object v2, p0, Lcom/meizu/smart/wristband/meizuUI/product521/NewBindActivity$2;->this$0:Lcom/meizu/smart/wristband/meizuUI/product521/NewBindActivity;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v2, v3}, Lcom/meizu/smart/wristband/meizuUI/product521/NewBindActivity;->access$500(Lcom/meizu/smart/wristband/meizuUI/product521/NewBindActivity;I)V

    goto :goto_0
.end method

.method public bridge synthetic call(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 118
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/meizu/smart/wristband/meizuUI/product521/NewBindActivity$2;->call(Ljava/lang/Integer;)V

    return-void
.end method
