.class Lcom/meizu/smart/wristband/meizuUI/login_regist/RegistInfoActivity$2;
.super Ljava/lang/Object;
.source "RegistInfoActivity.java"

# interfaces
.implements Lcom/meizu/smart/wristband/meizuUI/widget/scaleview/DecimalScaleRulerView$OnValueChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/smart/wristband/meizuUI/login_regist/RegistInfoActivity;->initAimView(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/smart/wristband/meizuUI/login_regist/RegistInfoActivity;


# direct methods
.method constructor <init>(Lcom/meizu/smart/wristband/meizuUI/login_regist/RegistInfoActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/meizu/smart/wristband/meizuUI/login_regist/RegistInfoActivity;

    .prologue
    .line 194
    iput-object p1, p0, Lcom/meizu/smart/wristband/meizuUI/login_regist/RegistInfoActivity$2;->this$0:Lcom/meizu/smart/wristband/meizuUI/login_regist/RegistInfoActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onValueChange(F)V
    .locals 5
    .param p1, "value"    # F

    .prologue
    .line 197
    const/high16 v2, 0x40c00000    # 6.0f

    mul-float v0, p1, v2

    .line 199
    .local v0, "fMin":F
    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v2

    mul-int/lit8 v1, v2, 0xa

    .line 200
    .local v1, "nMin":I
    iget-object v2, p0, Lcom/meizu/smart/wristband/meizuUI/login_regist/RegistInfoActivity$2;->this$0:Lcom/meizu/smart/wristband/meizuUI/login_regist/RegistInfoActivity;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/meizu/smart/wristband/meizuUI/login_regist/RegistInfoActivity;->access$202(Lcom/meizu/smart/wristband/meizuUI/login_regist/RegistInfoActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 201
    iget-object v2, p0, Lcom/meizu/smart/wristband/meizuUI/login_regist/RegistInfoActivity$2;->this$0:Lcom/meizu/smart/wristband/meizuUI/login_regist/RegistInfoActivity;

    invoke-static {v2}, Lcom/meizu/smart/wristband/meizuUI/login_regist/RegistInfoActivity;->access$300(Lcom/meizu/smart/wristband/meizuUI/login_regist/RegistInfoActivity;)Lcom/meizu/smart/wristband/meizuUI/font/BaseTextView;

    move-result-object v2

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

    .line 202
    rem-int/lit8 v2, v1, 0x3c

    if-nez v2, :cond_0

    .line 203
    iget-object v2, p0, Lcom/meizu/smart/wristband/meizuUI/login_regist/RegistInfoActivity$2;->this$0:Lcom/meizu/smart/wristband/meizuUI/login_regist/RegistInfoActivity;

    invoke-static {v2}, Lcom/meizu/smart/wristband/meizuUI/login_regist/RegistInfoActivity;->access$400(Lcom/meizu/smart/wristband/meizuUI/login_regist/RegistInfoActivity;)Lcom/meizu/smart/wristband/meizuUI/font/BaseTextView;

    move-result-object v2

    const-string v3, "00"

    invoke-virtual {v2, v3}, Lcom/meizu/smart/wristband/meizuUI/font/BaseTextView;->setText(Ljava/lang/CharSequence;)V

    .line 208
    :goto_0
    return-void

    .line 205
    :cond_0
    iget-object v2, p0, Lcom/meizu/smart/wristband/meizuUI/login_regist/RegistInfoActivity$2;->this$0:Lcom/meizu/smart/wristband/meizuUI/login_regist/RegistInfoActivity;

    invoke-static {v2}, Lcom/meizu/smart/wristband/meizuUI/login_regist/RegistInfoActivity;->access$400(Lcom/meizu/smart/wristband/meizuUI/login_regist/RegistInfoActivity;)Lcom/meizu/smart/wristband/meizuUI/font/BaseTextView;

    move-result-object v2

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
