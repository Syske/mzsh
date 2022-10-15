.class Lcom/meizu/smart/wristband/meizuUI/product521/NewBindActivity$10;
.super Ljava/lang/Object;
.source "NewBindActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/smart/wristband/meizuUI/product521/NewBindActivity;->showBindRetryDlg()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/smart/wristband/meizuUI/product521/NewBindActivity;

.field final synthetic val$dialog:Landroid/app/Dialog;


# direct methods
.method constructor <init>(Lcom/meizu/smart/wristband/meizuUI/product521/NewBindActivity;Landroid/app/Dialog;)V
    .locals 0
    .param p1, "this$0"    # Lcom/meizu/smart/wristband/meizuUI/product521/NewBindActivity;

    .prologue
    .line 460
    iput-object p1, p0, Lcom/meizu/smart/wristband/meizuUI/product521/NewBindActivity$10;->this$0:Lcom/meizu/smart/wristband/meizuUI/product521/NewBindActivity;

    iput-object p2, p0, Lcom/meizu/smart/wristband/meizuUI/product521/NewBindActivity$10;->val$dialog:Landroid/app/Dialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 464
    new-instance v1, Landroid/content/Intent;

    const-string v2, "action_UNBUND"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 465
    .local v1, "intent1":Landroid/content/Intent;
    iget-object v2, p0, Lcom/meizu/smart/wristband/meizuUI/product521/NewBindActivity$10;->this$0:Lcom/meizu/smart/wristband/meizuUI/product521/NewBindActivity;

    invoke-virtual {v2, v1}, Lcom/meizu/smart/wristband/meizuUI/product521/NewBindActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 466
    new-instance v0, Landroid/content/Intent;

    iget-object v2, p0, Lcom/meizu/smart/wristband/meizuUI/product521/NewBindActivity$10;->this$0:Lcom/meizu/smart/wristband/meizuUI/product521/NewBindActivity;

    const-class v3, Lcom/meizu/smart/wristband/meizuUI/main/MainActivity;

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 467
    .local v0, "intent":Landroid/content/Intent;
    iget-object v2, p0, Lcom/meizu/smart/wristband/meizuUI/product521/NewBindActivity$10;->this$0:Lcom/meizu/smart/wristband/meizuUI/product521/NewBindActivity;

    invoke-virtual {v2, v0}, Lcom/meizu/smart/wristband/meizuUI/product521/NewBindActivity;->startActivity(Landroid/content/Intent;)V

    .line 468
    iget-object v2, p0, Lcom/meizu/smart/wristband/meizuUI/product521/NewBindActivity$10;->this$0:Lcom/meizu/smart/wristband/meizuUI/product521/NewBindActivity;

    invoke-virtual {v2}, Lcom/meizu/smart/wristband/meizuUI/product521/NewBindActivity;->finish()V

    .line 469
    iget-object v2, p0, Lcom/meizu/smart/wristband/meizuUI/product521/NewBindActivity$10;->val$dialog:Landroid/app/Dialog;

    invoke-virtual {v2}, Landroid/app/Dialog;->dismiss()V

    .line 470
    return-void
.end method
