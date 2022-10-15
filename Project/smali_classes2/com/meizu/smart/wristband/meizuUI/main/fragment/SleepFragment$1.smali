.class Lcom/meizu/smart/wristband/meizuUI/main/fragment/SleepFragment$1;
.super Ljava/lang/Object;
.source "SleepFragment.java"

# interfaces
.implements Lcom/meizu/smart/wristband/meizuUI/widget/scaleview/DecimalScaleRulerView$OnValueChangeListener;


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

.field final synthetic val$sleepHour:Lcom/meizu/smart/wristband/meizuUI/font/BaseTextView;

.field final synthetic val$sleepMinu:Lcom/meizu/smart/wristband/meizuUI/font/BaseTextView;


# direct methods
.method constructor <init>(Lcom/meizu/smart/wristband/meizuUI/main/fragment/SleepFragment;Lcom/meizu/smart/wristband/meizuUI/font/BaseTextView;Lcom/meizu/smart/wristband/meizuUI/font/BaseTextView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/meizu/smart/wristband/meizuUI/main/fragment/SleepFragment;

    .prologue
    .line 460
    iput-object p1, p0, Lcom/meizu/smart/wristband/meizuUI/main/fragment/SleepFragment$1;->this$0:Lcom/meizu/smart/wristband/meizuUI/main/fragment/SleepFragment;

    iput-object p2, p0, Lcom/meizu/smart/wristband/meizuUI/main/fragment/SleepFragment$1;->val$sleepHour:Lcom/meizu/smart/wristband/meizuUI/font/BaseTextView;

    iput-object p3, p0, Lcom/meizu/smart/wristband/meizuUI/main/fragment/SleepFragment$1;->val$sleepMinu:Lcom/meizu/smart/wristband/meizuUI/font/BaseTextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onValueChange(F)V
    .locals 5
    .param p1, "value"    # F

    .prologue
    .line 463
    const/high16 v2, 0x40c00000    # 6.0f

    mul-float v0, p1, v2

    .line 465
    .local v0, "fMin":F
    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v2

    mul-int/lit8 v1, v2, 0xa

    .line 466
    .local v1, "nMin":I
    iget-object v2, p0, Lcom/meizu/smart/wristband/meizuUI/main/fragment/SleepFragment$1;->this$0:Lcom/meizu/smart/wristband/meizuUI/main/fragment/SleepFragment;

    invoke-static {v2, v1}, Lcom/meizu/smart/wristband/meizuUI/main/fragment/SleepFragment;->access$002(Lcom/meizu/smart/wristband/meizuUI/main/fragment/SleepFragment;I)I

    .line 467
    iget-object v2, p0, Lcom/meizu/smart/wristband/meizuUI/main/fragment/SleepFragment$1;->val$sleepHour:Lcom/meizu/smart/wristband/meizuUI/font/BaseTextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    div-int/lit8 v4, v1, 0x3c

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/meizu/smart/wristband/meizuUI/font/BaseTextView;->setText(Ljava/lang/CharSequence;)V

    .line 468
    rem-int/lit8 v2, v1, 0x3c

    if-nez v2, :cond_0

    .line 469
    iget-object v2, p0, Lcom/meizu/smart/wristband/meizuUI/main/fragment/SleepFragment$1;->val$sleepMinu:Lcom/meizu/smart/wristband/meizuUI/font/BaseTextView;

    const-string v3, "00"

    invoke-virtual {v2, v3}, Lcom/meizu/smart/wristband/meizuUI/font/BaseTextView;->setText(Ljava/lang/CharSequence;)V

    .line 474
    :goto_0
    return-void

    .line 471
    :cond_0
    iget-object v2, p0, Lcom/meizu/smart/wristband/meizuUI/main/fragment/SleepFragment$1;->val$sleepMinu:Lcom/meizu/smart/wristband/meizuUI/font/BaseTextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    rem-int/lit8 v4, v1, 0x3c

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/meizu/smart/wristband/meizuUI/font/BaseTextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method
