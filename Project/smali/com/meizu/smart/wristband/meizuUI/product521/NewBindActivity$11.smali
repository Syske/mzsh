.class Lcom/meizu/smart/wristband/meizuUI/product521/NewBindActivity$11;
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
    .line 476
    iput-object p1, p0, Lcom/meizu/smart/wristband/meizuUI/product521/NewBindActivity$11;->this$0:Lcom/meizu/smart/wristband/meizuUI/product521/NewBindActivity;

    iput-object p2, p0, Lcom/meizu/smart/wristband/meizuUI/product521/NewBindActivity$11;->val$dialog:Landroid/app/Dialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 481
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/product521/NewBindActivity$11;->this$0:Lcom/meizu/smart/wristband/meizuUI/product521/NewBindActivity;

    invoke-static {v0}, Lcom/meizu/smart/wristband/meizuUI/product521/NewBindActivity;->access$1200(Lcom/meizu/smart/wristband/meizuUI/product521/NewBindActivity;)Landroid/widget/LinearLayout;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 482
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/product521/NewBindActivity$11;->this$0:Lcom/meizu/smart/wristband/meizuUI/product521/NewBindActivity;

    invoke-static {v0}, Lcom/meizu/smart/wristband/meizuUI/product521/NewBindActivity;->access$200(Lcom/meizu/smart/wristband/meizuUI/product521/NewBindActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 483
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/product521/NewBindActivity$11;->this$0:Lcom/meizu/smart/wristband/meizuUI/product521/NewBindActivity;

    invoke-static {v0}, Lcom/meizu/smart/wristband/meizuUI/product521/NewBindActivity;->access$400(Lcom/meizu/smart/wristband/meizuUI/product521/NewBindActivity;)Lcom/meizu/smart/wristband/meizuUI/product521/NewBindActivity$MyListAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/meizu/smart/wristband/meizuUI/product521/NewBindActivity$MyListAdapter;->notifyDataSetChanged()V

    .line 484
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/product521/NewBindActivity$11;->this$0:Lcom/meizu/smart/wristband/meizuUI/product521/NewBindActivity;

    const/4 v1, -0x1

    iput v1, v0, Lcom/meizu/smart/wristband/meizuUI/product521/NewBindActivity;->nSelectIndex:I

    .line 485
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/product521/NewBindActivity$11;->this$0:Lcom/meizu/smart/wristband/meizuUI/product521/NewBindActivity;

    invoke-static {v0}, Lcom/meizu/smart/wristband/meizuUI/product521/NewBindActivity;->access$000(Lcom/meizu/smart/wristband/meizuUI/product521/NewBindActivity;)V

    .line 486
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/product521/NewBindActivity$11;->val$dialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 487
    return-void
.end method
