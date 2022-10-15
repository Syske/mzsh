.class Lcom/meizu/smart/wristband/meizuUI/sport/meizu/NewRunInMapActivity$6;
.super Ljava/lang/Object;
.source "NewRunInMapActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/smart/wristband/meizuUI/sport/meizu/NewRunInMapActivity;->initView()V
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
    .line 870
    iput-object p1, p0, Lcom/meizu/smart/wristband/meizuUI/sport/meizu/NewRunInMapActivity$6;->this$0:Lcom/meizu/smart/wristband/meizuUI/sport/meizu/NewRunInMapActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 873
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/sport/meizu/NewRunInMapActivity$6;->this$0:Lcom/meizu/smart/wristband/meizuUI/sport/meizu/NewRunInMapActivity;

    invoke-static {v0}, Lcom/meizu/smart/wristband/meizuUI/sport/meizu/NewRunInMapActivity;->access$1200(Lcom/meizu/smart/wristband/meizuUI/sport/meizu/NewRunInMapActivity;)Lcom/meizu/smart/wristband/meizuUI/widget/MySlidingDrawer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/meizu/smart/wristband/meizuUI/widget/MySlidingDrawer;->open()V

    .line 874
    return-void
.end method
