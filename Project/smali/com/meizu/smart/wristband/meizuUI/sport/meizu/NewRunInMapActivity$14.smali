.class Lcom/meizu/smart/wristband/meizuUI/sport/meizu/NewRunInMapActivity$14;
.super Ljava/lang/Object;
.source "NewRunInMapActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/smart/wristband/meizuUI/sport/meizu/NewRunInMapActivity;->showExitDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/smart/wristband/meizuUI/sport/meizu/NewRunInMapActivity;


# direct methods
.method constructor <init>(Lcom/meizu/smart/wristband/meizuUI/sport/meizu/NewRunInMapActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/meizu/smart/wristband/meizuUI/sport/meizu/NewRunInMapActivity;

    .prologue
    .line 1498
    iput-object p1, p0, Lcom/meizu/smart/wristband/meizuUI/sport/meizu/NewRunInMapActivity$14;->this$0:Lcom/meizu/smart/wristband/meizuUI/sport/meizu/NewRunInMapActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 1502
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/sport/meizu/NewRunInMapActivity$14;->this$0:Lcom/meizu/smart/wristband/meizuUI/sport/meizu/NewRunInMapActivity;

    invoke-static {v0}, Lcom/meizu/smart/wristband/meizuUI/sport/meizu/NewRunInMapActivity;->access$2300(Lcom/meizu/smart/wristband/meizuUI/sport/meizu/NewRunInMapActivity;)V

    .line 1503
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/sport/meizu/NewRunInMapActivity$14;->this$0:Lcom/meizu/smart/wristband/meizuUI/sport/meizu/NewRunInMapActivity;

    invoke-static {v0}, Lcom/meizu/smart/wristband/meizuUI/sport/meizu/NewRunInMapActivity;->access$2200(Lcom/meizu/smart/wristband/meizuUI/sport/meizu/NewRunInMapActivity;)Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 1504
    return-void
.end method
