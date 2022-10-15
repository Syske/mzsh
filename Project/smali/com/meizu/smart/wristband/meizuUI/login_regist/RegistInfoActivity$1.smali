.class Lcom/meizu/smart/wristband/meizuUI/login_regist/RegistInfoActivity$1;
.super Ljava/lang/Object;
.source "RegistInfoActivity.java"

# interfaces
.implements Lcom/meizu/smart/wristband/meizuUI/widget/scaleview/ScaleRulerView$OnValueChangeListener;


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
    .line 176
    iput-object p1, p0, Lcom/meizu/smart/wristband/meizuUI/login_regist/RegistInfoActivity$1;->this$0:Lcom/meizu/smart/wristband/meizuUI/login_regist/RegistInfoActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onValueChange(F)V
    .locals 3
    .param p1, "value"    # F

    .prologue
    .line 179
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/login_regist/RegistInfoActivity$1;->this$0:Lcom/meizu/smart/wristband/meizuUI/login_regist/RegistInfoActivity;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    float-to-int v2, p1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/meizu/smart/wristband/meizuUI/login_regist/RegistInfoActivity;->access$002(Lcom/meizu/smart/wristband/meizuUI/login_regist/RegistInfoActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 180
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/login_regist/RegistInfoActivity$1;->this$0:Lcom/meizu/smart/wristband/meizuUI/login_regist/RegistInfoActivity;

    invoke-static {v0}, Lcom/meizu/smart/wristband/meizuUI/login_regist/RegistInfoActivity;->access$100(Lcom/meizu/smart/wristband/meizuUI/login_regist/RegistInfoActivity;)Lcom/meizu/smart/wristband/meizuUI/font/BaseTextView;

    move-result-object v0

    iget-object v1, p0, Lcom/meizu/smart/wristband/meizuUI/login_regist/RegistInfoActivity$1;->this$0:Lcom/meizu/smart/wristband/meizuUI/login_regist/RegistInfoActivity;

    invoke-static {v1}, Lcom/meizu/smart/wristband/meizuUI/login_regist/RegistInfoActivity;->access$000(Lcom/meizu/smart/wristband/meizuUI/login_regist/RegistInfoActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/meizu/smart/wristband/meizuUI/font/BaseTextView;->setText(Ljava/lang/CharSequence;)V

    .line 181
    return-void
.end method
