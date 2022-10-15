.class Lcom/meizu/smart/wristband/meizuUI/sport/RunInMapActivity$9;
.super Ljava/lang/Object;
.source "RunInMapActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/smart/wristband/meizuUI/sport/RunInMapActivity;->showExitDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/smart/wristband/meizuUI/sport/RunInMapActivity;

.field final synthetic val$dialog:Landroid/app/Dialog;


# direct methods
.method constructor <init>(Lcom/meizu/smart/wristband/meizuUI/sport/RunInMapActivity;Landroid/app/Dialog;)V
    .locals 0
    .param p1, "this$0"    # Lcom/meizu/smart/wristband/meizuUI/sport/RunInMapActivity;

    .prologue
    .line 1023
    iput-object p1, p0, Lcom/meizu/smart/wristband/meizuUI/sport/RunInMapActivity$9;->this$0:Lcom/meizu/smart/wristband/meizuUI/sport/RunInMapActivity;

    iput-object p2, p0, Lcom/meizu/smart/wristband/meizuUI/sport/RunInMapActivity$9;->val$dialog:Landroid/app/Dialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 1027
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/sport/RunInMapActivity$9;->this$0:Lcom/meizu/smart/wristband/meizuUI/sport/RunInMapActivity;

    invoke-static {v0}, Lcom/meizu/smart/wristband/meizuUI/sport/RunInMapActivity;->access$1400(Lcom/meizu/smart/wristband/meizuUI/sport/RunInMapActivity;)V

    .line 1028
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/sport/RunInMapActivity$9;->val$dialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 1029
    return-void
.end method
