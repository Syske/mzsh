.class Lcom/meizu/smart/wristband/meizuUI/main/fragment/SleepFragment$2;
.super Ljava/lang/Object;
.source "SleepFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/smart/wristband/meizuUI/main/fragment/SleepFragment;->showSetAimDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/smart/wristband/meizuUI/main/fragment/SleepFragment;

.field final synthetic val$ad:Landroid/app/AlertDialog;


# direct methods
.method constructor <init>(Lcom/meizu/smart/wristband/meizuUI/main/fragment/SleepFragment;Landroid/app/AlertDialog;)V
    .locals 0
    .param p1, "this$0"    # Lcom/meizu/smart/wristband/meizuUI/main/fragment/SleepFragment;

    .prologue
    .line 478
    iput-object p1, p0, Lcom/meizu/smart/wristband/meizuUI/main/fragment/SleepFragment$2;->this$0:Lcom/meizu/smart/wristband/meizuUI/main/fragment/SleepFragment;

    iput-object p2, p0, Lcom/meizu/smart/wristband/meizuUI/main/fragment/SleepFragment$2;->val$ad:Landroid/app/AlertDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 481
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/main/fragment/SleepFragment$2;->this$0:Lcom/meizu/smart/wristband/meizuUI/main/fragment/SleepFragment;

    invoke-static {v0}, Lcom/meizu/smart/wristband/meizuUI/main/fragment/SleepFragment;->access$100(Lcom/meizu/smart/wristband/meizuUI/main/fragment/SleepFragment;)V

    .line 482
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/main/fragment/SleepFragment$2;->val$ad:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 483
    return-void
.end method
