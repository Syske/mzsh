.class Lcom/meizu/smart/wristband/meizuUI/login_regist/findpwd/GetIdentifyCardFrament$3;
.super Ljava/lang/Object;
.source "GetIdentifyCardFrament.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/smart/wristband/meizuUI/login_regist/findpwd/GetIdentifyCardFrament;->setListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/smart/wristband/meizuUI/login_regist/findpwd/GetIdentifyCardFrament;


# direct methods
.method constructor <init>(Lcom/meizu/smart/wristband/meizuUI/login_regist/findpwd/GetIdentifyCardFrament;)V
    .locals 0
    .param p1, "this$0"    # Lcom/meizu/smart/wristband/meizuUI/login_regist/findpwd/GetIdentifyCardFrament;

    .prologue
    .line 90
    iput-object p1, p0, Lcom/meizu/smart/wristband/meizuUI/login_regist/findpwd/GetIdentifyCardFrament$3;->this$0:Lcom/meizu/smart/wristband/meizuUI/login_regist/findpwd/GetIdentifyCardFrament;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 1
    .param p1, "s"    # Landroid/text/Editable;

    .prologue
    .line 103
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/login_regist/findpwd/GetIdentifyCardFrament$3;->this$0:Lcom/meizu/smart/wristband/meizuUI/login_regist/findpwd/GetIdentifyCardFrament;

    invoke-static {v0}, Lcom/meizu/smart/wristband/meizuUI/login_regist/findpwd/GetIdentifyCardFrament;->access$100(Lcom/meizu/smart/wristband/meizuUI/login_regist/findpwd/GetIdentifyCardFrament;)V

    .line 104
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "count"    # I
    .param p4, "after"    # I

    .prologue
    .line 94
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "before"    # I
    .param p4, "count"    # I

    .prologue
    .line 99
    return-void
.end method
