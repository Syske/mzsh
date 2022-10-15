.class Lcom/meizu/smart/wristband/meizuUI/product521/ProductActivity$3;
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
    .line 587
    iput-object p1, p0, Lcom/meizu/smart/wristband/meizuUI/product521/ProductActivity$3;->this$0:Lcom/meizu/smart/wristband/meizuUI/product521/ProductActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 3
    .param p1, "buttonView"    # Landroid/widget/CompoundButton;
    .param p2, "isChecked"    # Z

    .prologue
    .line 590
    if-eqz p2, :cond_0

    .line 591
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/product521/ProductActivity$3;->this$0:Lcom/meizu/smart/wristband/meizuUI/product521/ProductActivity;

    invoke-static {v0}, Lcom/meizu/smart/wristband/meizuUI/product521/ProductActivity;->access$100(Lcom/meizu/smart/wristband/meizuUI/product521/ProductActivity;)V

    .line 596
    :goto_0
    return-void

    .line 593
    :cond_0
    const-string/jumbo v0, "\u77ed\u4fe1\u63d0\u9192\u5f00\u5173\u6709\u6539\u52a8\uff0c\u4fdd\u5b58\u5230\u6570\u636e\u5e93"

    invoke-static {v0}, Ldolphin/tools/util/LogUtil;->i(Ljava/lang/String;)V

    .line 594
    iget-object v1, p0, Lcom/meizu/smart/wristband/meizuUI/product521/ProductActivity$3;->this$0:Lcom/meizu/smart/wristband/meizuUI/product521/ProductActivity;

    sget-object v2, Lcom/meizu/smart/wristband/models/database/entity/Other$Type;->sms:Lcom/meizu/smart/wristband/models/database/entity/Other$Type;

    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/product521/ProductActivity$3;->this$0:Lcom/meizu/smart/wristband/meizuUI/product521/ProductActivity;

    invoke-static {v0}, Lcom/meizu/smart/wristband/meizuUI/product521/ProductActivity;->access$200(Lcom/meizu/smart/wristband/meizuUI/product521/ProductActivity;)Landroid/widget/CheckBox;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "01"

    :goto_1
    invoke-static {v1, v2, v0}, Lcom/meizu/smart/wristband/servers/DBUserApi;->setOtherInfo(Landroid/content/Context;Lcom/meizu/smart/wristband/models/database/entity/Other$Type;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string v0, "00"

    goto :goto_1
.end method
