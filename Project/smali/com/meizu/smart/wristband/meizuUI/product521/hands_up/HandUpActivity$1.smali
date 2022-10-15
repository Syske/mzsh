.class Lcom/meizu/smart/wristband/meizuUI/product521/hands_up/HandUpActivity$1;
.super Ljava/lang/Object;
.source "HandUpActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/smart/wristband/meizuUI/product521/hands_up/HandUpActivity;->showTimeDialog(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/smart/wristband/meizuUI/product521/hands_up/HandUpActivity;

.field final synthetic val$ad:Landroid/app/Dialog;

.field final synthetic val$setStartTime:Z

.field final synthetic val$sit_hours:Lcom/meizu/smart/wristband/meizuUI/widget/CycleWheelView;

.field final synthetic val$sit_mins:Lcom/meizu/smart/wristband/meizuUI/widget/CycleWheelView;


# direct methods
.method constructor <init>(Lcom/meizu/smart/wristband/meizuUI/product521/hands_up/HandUpActivity;Lcom/meizu/smart/wristband/meizuUI/widget/CycleWheelView;Lcom/meizu/smart/wristband/meizuUI/widget/CycleWheelView;ZLandroid/app/Dialog;)V
    .locals 0
    .param p1, "this$0"    # Lcom/meizu/smart/wristband/meizuUI/product521/hands_up/HandUpActivity;

    .prologue
    .line 327
    iput-object p1, p0, Lcom/meizu/smart/wristband/meizuUI/product521/hands_up/HandUpActivity$1;->this$0:Lcom/meizu/smart/wristband/meizuUI/product521/hands_up/HandUpActivity;

    iput-object p2, p0, Lcom/meizu/smart/wristband/meizuUI/product521/hands_up/HandUpActivity$1;->val$sit_hours:Lcom/meizu/smart/wristband/meizuUI/widget/CycleWheelView;

    iput-object p3, p0, Lcom/meizu/smart/wristband/meizuUI/product521/hands_up/HandUpActivity$1;->val$sit_mins:Lcom/meizu/smart/wristband/meizuUI/widget/CycleWheelView;

    iput-boolean p4, p0, Lcom/meizu/smart/wristband/meizuUI/product521/hands_up/HandUpActivity$1;->val$setStartTime:Z

    iput-object p5, p0, Lcom/meizu/smart/wristband/meizuUI/product521/hands_up/HandUpActivity$1;->val$ad:Landroid/app/Dialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/16 v5, 0xa

    .line 330
    iget-object v2, p0, Lcom/meizu/smart/wristband/meizuUI/product521/hands_up/HandUpActivity$1;->val$sit_hours:Lcom/meizu/smart/wristband/meizuUI/widget/CycleWheelView;

    invoke-virtual {v2}, Lcom/meizu/smart/wristband/meizuUI/widget/CycleWheelView;->getSelection()I

    move-result v0

    .line 331
    .local v0, "hour":I
    iget-object v2, p0, Lcom/meizu/smart/wristband/meizuUI/product521/hands_up/HandUpActivity$1;->val$sit_mins:Lcom/meizu/smart/wristband/meizuUI/widget/CycleWheelView;

    invoke-virtual {v2}, Lcom/meizu/smart/wristband/meizuUI/widget/CycleWheelView;->getSelection()I

    move-result v1

    .line 332
    .local v1, "minute":I
    iget-boolean v2, p0, Lcom/meizu/smart/wristband/meizuUI/product521/hands_up/HandUpActivity$1;->val$setStartTime:Z

    if-eqz v2, :cond_2

    .line 333
    iget-object v3, p0, Lcom/meizu/smart/wristband/meizuUI/product521/hands_up/HandUpActivity$1;->this$0:Lcom/meizu/smart/wristband/meizuUI/product521/hands_up/HandUpActivity;

    if-ge v0, v5, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "0"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_0
    invoke-static {v3, v2}, Lcom/meizu/smart/wristband/meizuUI/product521/hands_up/HandUpActivity;->access$002(Lcom/meizu/smart/wristband/meizuUI/product521/hands_up/HandUpActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 334
    iget-object v3, p0, Lcom/meizu/smart/wristband/meizuUI/product521/hands_up/HandUpActivity$1;->this$0:Lcom/meizu/smart/wristband/meizuUI/product521/hands_up/HandUpActivity;

    if-ge v1, v5, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "0"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_1
    invoke-static {v3, v2}, Lcom/meizu/smart/wristband/meizuUI/product521/hands_up/HandUpActivity;->access$102(Lcom/meizu/smart/wristband/meizuUI/product521/hands_up/HandUpActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 335
    iget-object v2, p0, Lcom/meizu/smart/wristband/meizuUI/product521/hands_up/HandUpActivity$1;->this$0:Lcom/meizu/smart/wristband/meizuUI/product521/hands_up/HandUpActivity;

    invoke-static {v2}, Lcom/meizu/smart/wristband/meizuUI/product521/hands_up/HandUpActivity;->access$200(Lcom/meizu/smart/wristband/meizuUI/product521/hands_up/HandUpActivity;)Landroid/widget/TextView;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/meizu/smart/wristband/meizuUI/product521/hands_up/HandUpActivity$1;->this$0:Lcom/meizu/smart/wristband/meizuUI/product521/hands_up/HandUpActivity;

    invoke-static {v4}, Lcom/meizu/smart/wristband/meizuUI/product521/hands_up/HandUpActivity;->access$000(Lcom/meizu/smart/wristband/meizuUI/product521/hands_up/HandUpActivity;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/meizu/smart/wristband/meizuUI/product521/hands_up/HandUpActivity$1;->this$0:Lcom/meizu/smart/wristband/meizuUI/product521/hands_up/HandUpActivity;

    invoke-static {v4}, Lcom/meizu/smart/wristband/meizuUI/product521/hands_up/HandUpActivity;->access$100(Lcom/meizu/smart/wristband/meizuUI/product521/hands_up/HandUpActivity;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 343
    :goto_2
    iget-object v2, p0, Lcom/meizu/smart/wristband/meizuUI/product521/hands_up/HandUpActivity$1;->this$0:Lcom/meizu/smart/wristband/meizuUI/product521/hands_up/HandUpActivity;

    invoke-static {v2}, Lcom/meizu/smart/wristband/meizuUI/product521/hands_up/HandUpActivity;->access$600(Lcom/meizu/smart/wristband/meizuUI/product521/hands_up/HandUpActivity;)V

    .line 344
    iget-object v2, p0, Lcom/meizu/smart/wristband/meizuUI/product521/hands_up/HandUpActivity$1;->val$ad:Landroid/app/Dialog;

    invoke-virtual {v2}, Landroid/app/Dialog;->dismiss()V

    .line 345
    return-void

    .line 333
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ""

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 334
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ""

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    .line 338
    :cond_2
    iget-object v3, p0, Lcom/meizu/smart/wristband/meizuUI/product521/hands_up/HandUpActivity$1;->this$0:Lcom/meizu/smart/wristband/meizuUI/product521/hands_up/HandUpActivity;

    if-ge v0, v5, :cond_3

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "0"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_3
    invoke-static {v3, v2}, Lcom/meizu/smart/wristband/meizuUI/product521/hands_up/HandUpActivity;->access$302(Lcom/meizu/smart/wristband/meizuUI/product521/hands_up/HandUpActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 339
    iget-object v3, p0, Lcom/meizu/smart/wristband/meizuUI/product521/hands_up/HandUpActivity$1;->this$0:Lcom/meizu/smart/wristband/meizuUI/product521/hands_up/HandUpActivity;

    if-ge v1, v5, :cond_4

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "0"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_4
    invoke-static {v3, v2}, Lcom/meizu/smart/wristband/meizuUI/product521/hands_up/HandUpActivity;->access$402(Lcom/meizu/smart/wristband/meizuUI/product521/hands_up/HandUpActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 340
    iget-object v2, p0, Lcom/meizu/smart/wristband/meizuUI/product521/hands_up/HandUpActivity$1;->this$0:Lcom/meizu/smart/wristband/meizuUI/product521/hands_up/HandUpActivity;

    invoke-static {v2}, Lcom/meizu/smart/wristband/meizuUI/product521/hands_up/HandUpActivity;->access$500(Lcom/meizu/smart/wristband/meizuUI/product521/hands_up/HandUpActivity;)Landroid/widget/TextView;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/meizu/smart/wristband/meizuUI/product521/hands_up/HandUpActivity$1;->this$0:Lcom/meizu/smart/wristband/meizuUI/product521/hands_up/HandUpActivity;

    invoke-static {v4}, Lcom/meizu/smart/wristband/meizuUI/product521/hands_up/HandUpActivity;->access$300(Lcom/meizu/smart/wristband/meizuUI/product521/hands_up/HandUpActivity;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/meizu/smart/wristband/meizuUI/product521/hands_up/HandUpActivity$1;->this$0:Lcom/meizu/smart/wristband/meizuUI/product521/hands_up/HandUpActivity;

    invoke-static {v4}, Lcom/meizu/smart/wristband/meizuUI/product521/hands_up/HandUpActivity;->access$400(Lcom/meizu/smart/wristband/meizuUI/product521/hands_up/HandUpActivity;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 338
    :cond_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ""

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_3

    .line 339
    :cond_4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ""

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_4
.end method
