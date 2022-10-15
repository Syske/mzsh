.class Lcom/meizu/smart/wristband/meizuUI/product521/ProductActivity$5;
.super Ljava/lang/Object;
.source "ProductActivity.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/smart/wristband/meizuUI/product521/ProductActivity;->setListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/smart/wristband/meizuUI/product521/ProductActivity;


# direct methods
.method constructor <init>(Lcom/meizu/smart/wristband/meizuUI/product521/ProductActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/meizu/smart/wristband/meizuUI/product521/ProductActivity;

    .prologue
    .line 612
    iput-object p1, p0, Lcom/meizu/smart/wristband/meizuUI/product521/ProductActivity$5;->this$0:Lcom/meizu/smart/wristband/meizuUI/product521/ProductActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 3
    .param p1, "buttonView"    # Landroid/widget/CompoundButton;
    .param p2, "isChecked"    # Z

    .prologue
    .line 615
    const-string/jumbo v0, "\u8fd0\u52a8\u76ee\u6807\u5f00\u5173\u6709\u6539\u52a8\uff0c\u4fdd\u5b58\u5230\u6570\u636e\u5e93"

    invoke-static {v0}, Ldolphin/tools/util/LogUtil;->i(Ljava/lang/String;)V

    .line 616
    iget-object v1, p0, Lcom/meizu/smart/wristband/meizuUI/product521/ProductActivity$5;->this$0:Lcom/meizu/smart/wristband/meizuUI/product521/ProductActivity;

    sget-object v2, Lcom/meizu/smart/wristband/models/database/entity/Other$Type;->aimSwich:Lcom/meizu/smart/wristband/models/database/entity/Other$Type;

    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/product521/ProductActivity$5;->this$0:Lcom/meizu/smart/wristband/meizuUI/product521/ProductActivity;

    invoke-static {v0}, Lcom/meizu/smart/wristband/meizuUI/product521/ProductActivity;->access$500(Lcom/meizu/smart/wristband/meizuUI/product521/ProductActivity;)Landroid/widget/CheckBox;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "01"

    :goto_0
    invoke-static {v1, v2, v0}, Lcom/meizu/smart/wristband/servers/DBUserApi;->setOtherInfo(Landroid/content/Context;Lcom/meizu/smart/wristband/models/database/entity/Other$Type;Ljava/lang/String;)V

    .line 617
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/product521/ProductActivity$5;->this$0:Lcom/meizu/smart/wristband/meizuUI/product521/ProductActivity;

    invoke-static {v0}, Lcom/meizu/smart/wristband/meizuUI/product521/ProductActivity;->access$600(Lcom/meizu/smart/wristband/meizuUI/product521/ProductActivity;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/meizu/smart/wristband/servers/BleServer;->getBleInstance(Landroid/content/Context;)Lcom/meizu/smart/wristband/servers/BleServer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/meizu/smart/wristband/servers/BleServer;->setSportAim()Lrx/Observable;

    move-result-object v0

    new-instance v1, Lcom/meizu/smart/wristband/constant/SubscriberErrorCatch;

    invoke-direct {v1}, Lcom/meizu/smart/wristband/constant/SubscriberErrorCatch;-><init>()V

    invoke-virtual {v0, v1}, Lrx/Observable;->subscribe(Lrx/Subscriber;)Lrx/Subscription;

    .line 618
    return-void

    .line 616
    :cond_0
    const-string v0, "00"

    goto :goto_0
.end method
