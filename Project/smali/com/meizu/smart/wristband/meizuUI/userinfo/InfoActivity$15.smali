.class Lcom/meizu/smart/wristband/meizuUI/userinfo/InfoActivity$15;
.super Ljava/lang/Object;
.source "InfoActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/smart/wristband/meizuUI/userinfo/InfoActivity;->showHeadImageChooseDialog(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/smart/wristband/meizuUI/userinfo/InfoActivity;

.field final synthetic val$dialog:Landroid/app/Dialog;


# direct methods
.method constructor <init>(Lcom/meizu/smart/wristband/meizuUI/userinfo/InfoActivity;Landroid/app/Dialog;)V
    .locals 0
    .param p1, "this$0"    # Lcom/meizu/smart/wristband/meizuUI/userinfo/InfoActivity;

    .prologue
    .line 773
    iput-object p1, p0, Lcom/meizu/smart/wristband/meizuUI/userinfo/InfoActivity$15;->this$0:Lcom/meizu/smart/wristband/meizuUI/userinfo/InfoActivity;

    iput-object p2, p0, Lcom/meizu/smart/wristband/meizuUI/userinfo/InfoActivity$15;->val$dialog:Landroid/app/Dialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 1
    .param p2, "arg1"    # Landroid/view/View;
    .param p3, "arg2"    # I
    .param p4, "arg3"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 778
    .local p1, "arg0":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/userinfo/InfoActivity$15;->this$0:Lcom/meizu/smart/wristband/meizuUI/userinfo/InfoActivity;

    invoke-static {v0, p3}, Lcom/meizu/smart/wristband/meizuUI/userinfo/InfoActivity;->access$1600(Lcom/meizu/smart/wristband/meizuUI/userinfo/InfoActivity;I)V

    .line 779
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/userinfo/InfoActivity$15;->val$dialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 780
    return-void
.end method
