.class Lcom/meizu/smart/wristband/meizuUI/product521/NewBindActivity$7;
.super Ljava/lang/Object;
.source "NewBindActivity.java"

# interfaces
.implements Lrx/functions/Action1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/smart/wristband/meizuUI/product521/NewBindActivity;->gotoOTA(Ljava/lang/String;Ljava/lang/String;)V
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
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/smart/wristband/meizuUI/product521/NewBindActivity;

.field final synthetic val$productMac:Ljava/lang/String;

.field final synthetic val$productName:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/meizu/smart/wristband/meizuUI/product521/NewBindActivity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/meizu/smart/wristband/meizuUI/product521/NewBindActivity;

    .prologue
    .line 271
    iput-object p1, p0, Lcom/meizu/smart/wristband/meizuUI/product521/NewBindActivity$7;->this$0:Lcom/meizu/smart/wristband/meizuUI/product521/NewBindActivity;

    iput-object p2, p0, Lcom/meizu/smart/wristband/meizuUI/product521/NewBindActivity$7;->val$productName:Ljava/lang/String;

    iput-object p3, p0, Lcom/meizu/smart/wristband/meizuUI/product521/NewBindActivity$7;->val$productMac:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic call(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 271
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/meizu/smart/wristband/meizuUI/product521/NewBindActivity$7;->call(Ljava/lang/String;)V

    return-void
.end method

.method public call(Ljava/lang/String;)V
    .locals 4
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 274
    if-nez p1, :cond_1

    .line 275
    iget-object v2, p0, Lcom/meizu/smart/wristband/meizuUI/product521/NewBindActivity$7;->this$0:Lcom/meizu/smart/wristband/meizuUI/product521/NewBindActivity;

    const-string v3, "sorry , upgrade failed"

    invoke-static {v2, v3}, Ldolphin/tools/util/ToastUtil;->shortShow(Landroid/content/Context;Ljava/lang/String;)V

    .line 301
    :cond_0
    :goto_0
    return-void

    .line 284
    :cond_1
    iget-object v2, p0, Lcom/meizu/smart/wristband/meizuUI/product521/NewBindActivity$7;->val$productName:Ljava/lang/String;

    invoke-static {v2}, Lcom/meizu/smart/wristband/constant/Producter;->isB52Set(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 285
    new-instance v0, Landroid/content/Intent;

    iget-object v2, p0, Lcom/meizu/smart/wristband/meizuUI/product521/NewBindActivity$7;->this$0:Lcom/meizu/smart/wristband/meizuUI/product521/NewBindActivity;

    const-class v3, Lcom/meizu/smart/wristband/ota/nodic/DfuActivity;

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 286
    .local v0, "intent":Landroid/content/Intent;
    const-string v2, "device_name"

    iget-object v3, p0, Lcom/meizu/smart/wristband/meizuUI/product521/NewBindActivity$7;->val$productName:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 287
    const-string v2, "device_mode"

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 288
    const-string v2, "device_mac"

    iget-object v3, p0, Lcom/meizu/smart/wristband/meizuUI/product521/NewBindActivity$7;->val$productMac:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 289
    const-string v2, "filepath"

    invoke-virtual {v0, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 290
    iget-object v2, p0, Lcom/meizu/smart/wristband/meizuUI/product521/NewBindActivity$7;->this$0:Lcom/meizu/smart/wristband/meizuUI/product521/NewBindActivity;

    invoke-virtual {v2, v0}, Lcom/meizu/smart/wristband/meizuUI/product521/NewBindActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 291
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_2
    iget-object v2, p0, Lcom/meizu/smart/wristband/meizuUI/product521/NewBindActivity$7;->val$productName:Ljava/lang/String;

    invoke-static {v2}, Lcom/meizu/smart/wristband/constant/Producter;->isB10Set(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 292
    iget-object v2, p0, Lcom/meizu/smart/wristband/meizuUI/product521/NewBindActivity$7;->val$productMac:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v3, 0x11

    if-ne v2, v3, :cond_0

    .line 293
    iget-object v2, p0, Lcom/meizu/smart/wristband/meizuUI/product521/NewBindActivity$7;->this$0:Lcom/meizu/smart/wristband/meizuUI/product521/NewBindActivity;

    iget-object v3, p0, Lcom/meizu/smart/wristband/meizuUI/product521/NewBindActivity$7;->val$productMac:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/meizu/smart/wristband/meizuUI/product521/NewBindActivity;->access$900(Lcom/meizu/smart/wristband/meizuUI/product521/NewBindActivity;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 294
    .local v1, "real_address":Ljava/lang/String;
    new-instance v0, Landroid/content/Intent;

    iget-object v2, p0, Lcom/meizu/smart/wristband/meizuUI/product521/NewBindActivity$7;->this$0:Lcom/meizu/smart/wristband/meizuUI/product521/NewBindActivity;

    const-class v3, Lcom/meizu/smart/wristband/ota/suota/DeviceActivity;

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 295
    .restart local v0    # "intent":Landroid/content/Intent;
    const-string v2, "device_name"

    iget-object v3, p0, Lcom/meizu/smart/wristband/meizuUI/product521/NewBindActivity$7;->val$productName:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 296
    const-string v2, "device_mac"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 297
    const-string v2, "filepath"

    invoke-virtual {v0, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 298
    iget-object v2, p0, Lcom/meizu/smart/wristband/meizuUI/product521/NewBindActivity$7;->this$0:Lcom/meizu/smart/wristband/meizuUI/product521/NewBindActivity;

    invoke-virtual {v2, v0}, Lcom/meizu/smart/wristband/meizuUI/product521/NewBindActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method
