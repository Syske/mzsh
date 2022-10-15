.class Lcom/meizu/smart/wristband/meizuUI/product521/BindActivity$2;
.super Ljava/lang/Object;
.source "BindActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/smart/wristband/meizuUI/product521/BindActivity;->showConnectDialog(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/smart/wristband/meizuUI/product521/BindActivity;


# direct methods
.method constructor <init>(Lcom/meizu/smart/wristband/meizuUI/product521/BindActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/meizu/smart/wristband/meizuUI/product521/BindActivity;

    .prologue
    .line 219
    iput-object p1, p0, Lcom/meizu/smart/wristband/meizuUI/product521/BindActivity$2;->this$0:Lcom/meizu/smart/wristband/meizuUI/product521/BindActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 223
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/product521/BindActivity$2;->this$0:Lcom/meizu/smart/wristband/meizuUI/product521/BindActivity;

    invoke-static {v0}, Lcom/meizu/smart/wristband/meizuUI/product521/BindActivity;->access$300(Lcom/meizu/smart/wristband/meizuUI/product521/BindActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 224
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/product521/BindActivity$2;->this$0:Lcom/meizu/smart/wristband/meizuUI/product521/BindActivity;

    invoke-static {v0}, Lcom/meizu/smart/wristband/meizuUI/product521/BindActivity;->access$400(Lcom/meizu/smart/wristband/meizuUI/product521/BindActivity;)Lcom/meizu/smart/wristband/meizuUI/product521/BindActivity$MyListAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/meizu/smart/wristband/meizuUI/product521/BindActivity$MyListAdapter;->notifyDataSetChanged()V

    .line 226
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/product521/BindActivity$2;->this$0:Lcom/meizu/smart/wristband/meizuUI/product521/BindActivity;

    invoke-static {v0}, Lcom/meizu/smart/wristband/meizuUI/product521/BindActivity;->access$500(Lcom/meizu/smart/wristband/meizuUI/product521/BindActivity;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 227
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/product521/BindActivity$2;->this$0:Lcom/meizu/smart/wristband/meizuUI/product521/BindActivity;

    invoke-static {v0}, Lcom/meizu/smart/wristband/meizuUI/product521/BindActivity;->access$600(Lcom/meizu/smart/wristband/meizuUI/product521/BindActivity;)Lcom/meizu/smart/wristband/meizuUI/main/widget/RefreshableView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/meizu/smart/wristband/meizuUI/main/widget/RefreshableView;->refreshManual()V

    .line 230
    :cond_0
    return-void
.end method
