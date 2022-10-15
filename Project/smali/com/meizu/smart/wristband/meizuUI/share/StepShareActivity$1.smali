.class Lcom/meizu/smart/wristband/meizuUI/share/StepShareActivity$1;
.super Ljava/lang/Object;
.source "StepShareActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/smart/wristband/meizuUI/share/StepShareActivity;->setListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/smart/wristband/meizuUI/share/StepShareActivity;


# direct methods
.method constructor <init>(Lcom/meizu/smart/wristband/meizuUI/share/StepShareActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/meizu/smart/wristband/meizuUI/share/StepShareActivity;

    .prologue
    .line 125
    iput-object p1, p0, Lcom/meizu/smart/wristband/meizuUI/share/StepShareActivity$1;->this$0:Lcom/meizu/smart/wristband/meizuUI/share/StepShareActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 128
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/share/StepShareActivity$1;->this$0:Lcom/meizu/smart/wristband/meizuUI/share/StepShareActivity;

    invoke-virtual {v0}, Lcom/meizu/smart/wristband/meizuUI/share/StepShareActivity;->finish()V

    .line 129
    return-void
.end method
