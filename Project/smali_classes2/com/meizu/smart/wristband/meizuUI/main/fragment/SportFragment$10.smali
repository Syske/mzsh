.class Lcom/meizu/smart/wristband/meizuUI/main/fragment/SportFragment$10;
.super Ljava/lang/Object;
.source "SportFragment.java"

# interfaces
.implements Lcom/meizu/smart/wristband/meizuUI/widget/scaleview/ScaleRulerView$OnValueChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/smart/wristband/meizuUI/main/fragment/SportFragment;->showSetAimDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/smart/wristband/meizuUI/main/fragment/SportFragment;

.field final synthetic val$sport_aim:Lcom/meizu/smart/wristband/meizuUI/font/BaseTextView;


# direct methods
.method constructor <init>(Lcom/meizu/smart/wristband/meizuUI/main/fragment/SportFragment;Lcom/meizu/smart/wristband/meizuUI/font/BaseTextView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/meizu/smart/wristband/meizuUI/main/fragment/SportFragment;

    .prologue
    .line 650
    iput-object p1, p0, Lcom/meizu/smart/wristband/meizuUI/main/fragment/SportFragment$10;->this$0:Lcom/meizu/smart/wristband/meizuUI/main/fragment/SportFragment;

    iput-object p2, p0, Lcom/meizu/smart/wristband/meizuUI/main/fragment/SportFragment$10;->val$sport_aim:Lcom/meizu/smart/wristband/meizuUI/font/BaseTextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onValueChange(F)V
    .locals 3
    .param p1, "value"    # F

    .prologue
    .line 653
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/main/fragment/SportFragment$10;->this$0:Lcom/meizu/smart/wristband/meizuUI/main/fragment/SportFragment;

    float-to-int v1, p1

    invoke-static {v0, v1}, Lcom/meizu/smart/wristband/meizuUI/main/fragment/SportFragment;->access$802(Lcom/meizu/smart/wristband/meizuUI/main/fragment/SportFragment;I)I

    .line 654
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/main/fragment/SportFragment$10;->val$sport_aim:Lcom/meizu/smart/wristband/meizuUI/font/BaseTextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/meizu/smart/wristband/meizuUI/main/fragment/SportFragment$10;->this$0:Lcom/meizu/smart/wristband/meizuUI/main/fragment/SportFragment;

    invoke-static {v2}, Lcom/meizu/smart/wristband/meizuUI/main/fragment/SportFragment;->access$800(Lcom/meizu/smart/wristband/meizuUI/main/fragment/SportFragment;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/meizu/smart/wristband/meizuUI/font/BaseTextView;->setText(Ljava/lang/CharSequence;)V

    .line 655
    return-void
.end method
