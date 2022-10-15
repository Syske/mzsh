.class Lcom/meizu/smart/wristband/meizuUI/login_regist/findpwd/ReSetPwdFrament$2;
.super Ljava/lang/Object;
.source "ReSetPwdFrament.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/smart/wristband/meizuUI/login_regist/findpwd/ReSetPwdFrament;->setListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/smart/wristband/meizuUI/login_regist/findpwd/ReSetPwdFrament;


# direct methods
.method constructor <init>(Lcom/meizu/smart/wristband/meizuUI/login_regist/findpwd/ReSetPwdFrament;)V
    .locals 0
    .param p1, "this$0"    # Lcom/meizu/smart/wristband/meizuUI/login_regist/findpwd/ReSetPwdFrament;

    .prologue
    .line 67
    iput-object p1, p0, Lcom/meizu/smart/wristband/meizuUI/login_regist/findpwd/ReSetPwdFrament$2;->this$0:Lcom/meizu/smart/wristband/meizuUI/login_regist/findpwd/ReSetPwdFrament;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 1
    .param p1, "s"    # Landroid/text/Editable;

    .prologue
    .line 80
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/login_regist/findpwd/ReSetPwdFrament$2;->this$0:Lcom/meizu/smart/wristband/meizuUI/login_regist/findpwd/ReSetPwdFrament;

    invoke-static {v0}, Lcom/meizu/smart/wristband/meizuUI/login_regist/findpwd/ReSetPwdFrament;->access$100(Lcom/meizu/smart/wristband/meizuUI/login_regist/findpwd/ReSetPwdFrament;)V

    .line 81
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "count"    # I
    .param p4, "after"    # I

    .prologue
    .line 71
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "before"    # I
    .param p4, "count"    # I

    .prologue
    .line 76
    return-void
.end method
