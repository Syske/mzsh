.class Lcom/meizu/smart/wristband/meizuUI/login_regist/regist/SetPwdFrament$4;
.super Ljava/lang/Object;
.source "SetPwdFrament.java"

# interfaces
.implements Lcom/meizu/smart/wristband/meizuUI/main/widget/DrawHookView$onDrawCompleteListenter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/smart/wristband/meizuUI/login_regist/regist/SetPwdFrament;->showRegisterDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/smart/wristband/meizuUI/login_regist/regist/SetPwdFrament;

.field final synthetic val$ad:Landroid/app/Dialog;


# direct methods
.method constructor <init>(Lcom/meizu/smart/wristband/meizuUI/login_regist/regist/SetPwdFrament;Landroid/app/Dialog;)V
    .locals 0
    .param p1, "this$0"    # Lcom/meizu/smart/wristband/meizuUI/login_regist/regist/SetPwdFrament;

    .prologue
    .line 217
    iput-object p1, p0, Lcom/meizu/smart/wristband/meizuUI/login_regist/regist/SetPwdFrament$4;->this$0:Lcom/meizu/smart/wristband/meizuUI/login_regist/regist/SetPwdFrament;

    iput-object p2, p0, Lcom/meizu/smart/wristband/meizuUI/login_regist/regist/SetPwdFrament$4;->val$ad:Landroid/app/Dialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDrawComplete()V
    .locals 1

    .prologue
    .line 220
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/login_regist/regist/SetPwdFrament$4;->val$ad:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 221
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/login_regist/regist/SetPwdFrament$4;->this$0:Lcom/meizu/smart/wristband/meizuUI/login_regist/regist/SetPwdFrament;

    invoke-static {v0}, Lcom/meizu/smart/wristband/meizuUI/login_regist/regist/SetPwdFrament;->access$100(Lcom/meizu/smart/wristband/meizuUI/login_regist/regist/SetPwdFrament;)V

    .line 222
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/login_regist/regist/SetPwdFrament$4;->this$0:Lcom/meizu/smart/wristband/meizuUI/login_regist/regist/SetPwdFrament;

    invoke-static {v0}, Lcom/meizu/smart/wristband/meizuUI/login_regist/regist/SetPwdFrament;->access$200(Lcom/meizu/smart/wristband/meizuUI/login_regist/regist/SetPwdFrament;)Lcom/meizu/smart/wristband/meizuUI/login_regist/regist/RegistActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/meizu/smart/wristband/meizuUI/login_regist/regist/RegistActivity;->finish()V

    .line 223
    return-void
.end method
