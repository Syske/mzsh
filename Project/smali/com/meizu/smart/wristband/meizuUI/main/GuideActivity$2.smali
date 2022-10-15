.class Lcom/meizu/smart/wristband/meizuUI/main/GuideActivity$2;
.super Ljava/lang/Object;
.source "GuideActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/smart/wristband/meizuUI/main/GuideActivity;->initView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/smart/wristband/meizuUI/main/GuideActivity;


# direct methods
.method constructor <init>(Lcom/meizu/smart/wristband/meizuUI/main/GuideActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/meizu/smart/wristband/meizuUI/main/GuideActivity;

    .prologue
    .line 126
    iput-object p1, p0, Lcom/meizu/smart/wristband/meizuUI/main/GuideActivity$2;->this$0:Lcom/meizu/smart/wristband/meizuUI/main/GuideActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 129
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/main/GuideActivity$2;->this$0:Lcom/meizu/smart/wristband/meizuUI/main/GuideActivity;

    invoke-static {v0}, Lcom/meizu/smart/wristband/meizuUI/main/GuideActivity;->access$400(Lcom/meizu/smart/wristband/meizuUI/main/GuideActivity;)V

    .line 130
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/main/GuideActivity$2;->this$0:Lcom/meizu/smart/wristband/meizuUI/main/GuideActivity;

    invoke-virtual {v0}, Lcom/meizu/smart/wristband/meizuUI/main/GuideActivity;->finish()V

    .line 132
    return-void
.end method
