.class Lcom/meizu/smart/wristband/meizuUI/main/fragment/HeartRateFragment$4;
.super Ljava/lang/Object;
.source "HeartRateFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/smart/wristband/meizuUI/main/fragment/HeartRateFragment;->showMeasureTipDlg()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/smart/wristband/meizuUI/main/fragment/HeartRateFragment;

.field final synthetic val$dlgTip:Landroid/app/AlertDialog;


# direct methods
.method constructor <init>(Lcom/meizu/smart/wristband/meizuUI/main/fragment/HeartRateFragment;Landroid/app/AlertDialog;)V
    .locals 0
    .param p1, "this$0"    # Lcom/meizu/smart/wristband/meizuUI/main/fragment/HeartRateFragment;

    .prologue
    .line 256
    iput-object p1, p0, Lcom/meizu/smart/wristband/meizuUI/main/fragment/HeartRateFragment$4;->this$0:Lcom/meizu/smart/wristband/meizuUI/main/fragment/HeartRateFragment;

    iput-object p2, p0, Lcom/meizu/smart/wristband/meizuUI/main/fragment/HeartRateFragment$4;->val$dlgTip:Landroid/app/AlertDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 260
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/main/fragment/HeartRateFragment$4;->val$dlgTip:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 261
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/main/fragment/HeartRateFragment$4;->this$0:Lcom/meizu/smart/wristband/meizuUI/main/fragment/HeartRateFragment;

    invoke-static {v0}, Lcom/meizu/smart/wristband/meizuUI/main/fragment/HeartRateFragment;->access$200(Lcom/meizu/smart/wristband/meizuUI/main/fragment/HeartRateFragment;)V

    .line 262
    return-void
.end method
