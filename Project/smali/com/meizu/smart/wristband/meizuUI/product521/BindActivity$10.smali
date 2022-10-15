.class Lcom/meizu/smart/wristband/meizuUI/product521/BindActivity$10;
.super Ljava/lang/Object;
.source "BindActivity.java"

# interfaces
.implements Lrx/functions/Action1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/smart/wristband/meizuUI/product521/BindActivity;->gotoOTA(Ljava/lang/String;Ljava/lang/String;)V
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
.field final synthetic this$0:Lcom/meizu/smart/wristband/meizuUI/product521/BindActivity;

.field final synthetic val$productMac:Ljava/lang/String;

.field final synthetic val$productName:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/meizu/smart/wristband/meizuUI/product521/BindActivity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/meizu/smart/wristband/meizuUI/product521/BindActivity;

    .prologue
    .line 558
    iput-object p1, p0, Lcom/meizu/smart/wristband/meizuUI/product521/BindActivity$10;->this$0:Lcom/meizu/smart/wristband/meizuUI/product521/BindActivity;

    iput-object p2, p0, Lcom/meizu/smart/wristband/meizuUI/product521/BindActivity$10;->val$productName:Ljava/lang/String;

    iput-object p3, p0, Lcom/meizu/smart/wristband/meizuUI/product521/BindActivity$10;->val$productMac:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic call(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 558
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/meizu/smart/wristband/meizuUI/product521/BindActivity$10;->call(Ljava/lang/String;)V

    return-void
.end method

.method public call(Ljava/lang/String;)V
    .locals 4
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 561
    if-nez p1, :cond_1

    .line 562
    iget-object v2, p0, Lcom/meizu/smart/wristband/meizuUI/product521/BindActivity$10;->this$0:Lcom/meizu/smart/wristband/meizuUI/product521/BindActivity;

    const-string v3, "sorry , upgrade failed"

    invoke-static {v2, v3}, Ldolphin/tools/util/ToastUtil;->shortShow(Landroid/content/Context;Ljava/lang/String;)V

    .line 588
    :cond_0
    :goto_0
    return-void

    .line 571
    :cond_1
    iget-object v2, p0, Lcom/meizu/smart/wristband/meizuUI/product521/BindActivity$10;->val$productName:Ljava/lang/String;

    invoke-static {v2}, Lcom/meizu/smart/wristband/constant/Producter;->isB52Set(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 572
    new-instance v0, Landroid/content/Intent;

    iget-object v2, p0, Lcom/meizu/smart/wristband/meizuUI/product521/BindActivity$10;->this$0:Lcom/meizu/smart/wristband/meizuUI/product521/BindActivity;

    const-class v3, Lcom/meizu/smart/wristband/ota/nodic/DfuActivity;

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 573
    .local v0, "intent":Landroid/content/Intent;
    const-string v2, "device_name"

    iget-object v3, p0, Lcom/meizu/smart/wristband/meizuUI/product521/BindActivity$10;->val$productName:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 574
    const-string v2, "device_mode"

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 575
    const-string v2, "device_mac"

    iget-object v3, p0, Lcom/meizu/smart/wristband/meizuUI/product521/BindActivity$10;->val$productMac:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 576
    const-string v2, "filepath"

    invoke-virtual {v0, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 577
    iget-object v2, p0, Lcom/meizu/smart/wristband/meizuUI/product521/BindActivity$10;->this$0:Lcom/meizu/smart/wristband/meizuUI/product521/BindActivity;

    invoke-virtual {v2, v0}, Lcom/meizu/smart/wristband/meizuUI/product521/BindActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 578
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_2
    iget-object v2, p0, Lcom/meizu/smart/wristband/meizuUI/product521/BindActivity$10;->val$productName:Ljava/lang/String;

    invoke-static {v2}, Lcom/meizu/smart/wristband/constant/Producter;->isB10Set(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 579
    iget-object v2, p0, Lcom/meizu/smart/wristband/meizuUI/product521/BindActivity$10;->val$productMac:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v3, 0x11

    if-ne v2, v3, :cond_0

    .line 580
    iget-object v2, p0, Lcom/meizu/smart/wristband/meizuUI/product521/BindActivity$10;->this$0:Lcom/meizu/smart/wristband/meizuUI/product521/BindActivity;

    iget-object v3, p0, Lcom/meizu/smart/wristband/meizuUI/product521/BindActivity$10;->val$productMac:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/meizu/smart/wristband/meizuUI/product521/BindActivity;->access$1500(Lcom/meizu/smart/wristband/meizuUI/product521/BindActivity;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 581
    .local v1, "real_address":Ljava/lang/String;
    new-instance v0, Landroid/content/Intent;

    iget-object v2, p0, Lcom/meizu/smart/wristband/meizuUI/product521/BindActivity$10;->this$0:Lcom/meizu/smart/wristband/meizuUI/product521/BindActivity;

    const-class v3, Lcom/meizu/smart/wristband/ota/suota/DeviceActivity;

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 582
    .restart local v0    # "intent":Landroid/content/Intent;
    const-string v2, "device_name"

    iget-object v3, p0, Lcom/meizu/smart/wristband/meizuUI/product521/BindActivity$10;->val$productName:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 583
    const-string v2, "device_mac"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 584
    const-string v2, "filepath"

    invoke-virtual {v0, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 585
    iget-object v2, p0, Lcom/meizu/smart/wristband/meizuUI/product521/BindActivity$10;->this$0:Lcom/meizu/smart/wristband/meizuUI/product521/BindActivity;

    invoke-virtual {v2, v0}, Lcom/meizu/smart/wristband/meizuUI/product521/BindActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method
