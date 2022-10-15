.class Lcom/meizu/smart/wristband/meizuUI/product521/ProductActivity$9;
.super Ljava/lang/Object;
.source "ProductActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/smart/wristband/meizuUI/product521/ProductActivity;->showOffDlg()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/smart/wristband/meizuUI/product521/ProductActivity;

.field final synthetic val$dialog:Landroid/app/Dialog;


# direct methods
.method constructor <init>(Lcom/meizu/smart/wristband/meizuUI/product521/ProductActivity;Landroid/app/Dialog;)V
    .locals 0
    .param p1, "this$0"    # Lcom/meizu/smart/wristband/meizuUI/product521/ProductActivity;

    .prologue
    .line 729
    iput-object p1, p0, Lcom/meizu/smart/wristband/meizuUI/product521/ProductActivity$9;->this$0:Lcom/meizu/smart/wristband/meizuUI/product521/ProductActivity;

    iput-object p2, p0, Lcom/meizu/smart/wristband/meizuUI/product521/ProductActivity$9;->val$dialog:Landroid/app/Dialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 733
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/product521/ProductActivity$9;->val$dialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 734
    return-void
.end method
