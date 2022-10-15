.class Lcom/meizu/smart/wristband/meizuUI/login_regist/LoginActivity$5$1;
.super Ljava/lang/Object;
.source "LoginActivity.java"

# interfaces
.implements Lrx/functions/Func0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/smart/wristband/meizuUI/login_regist/LoginActivity$5;->call(Ljava/lang/Void;)Lrx/Observable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lrx/functions/Func0",
        "<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/meizu/smart/wristband/meizuUI/login_regist/LoginActivity$5;


# direct methods
.method constructor <init>(Lcom/meizu/smart/wristband/meizuUI/login_regist/LoginActivity$5;)V
    .locals 0
    .param p1, "this$1"    # Lcom/meizu/smart/wristband/meizuUI/login_regist/LoginActivity$5;

    .prologue
    .line 572
    iput-object p1, p0, Lcom/meizu/smart/wristband/meizuUI/login_regist/LoginActivity$5$1;->this$1:Lcom/meizu/smart/wristband/meizuUI/login_regist/LoginActivity$5;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Ljava/lang/Boolean;
    .locals 4

    .prologue
    .line 575
    iget-object v2, p0, Lcom/meizu/smart/wristband/meizuUI/login_regist/LoginActivity$5$1;->this$1:Lcom/meizu/smart/wristband/meizuUI/login_regist/LoginActivity$5;

    iget-object v2, v2, Lcom/meizu/smart/wristband/meizuUI/login_regist/LoginActivity$5;->this$0:Lcom/meizu/smart/wristband/meizuUI/login_regist/LoginActivity;

    new-instance v3, Lcom/meizu/smart/wristband/servers/DBUserApi;

    invoke-direct {v3}, Lcom/meizu/smart/wristband/servers/DBUserApi;-><init>()V

    iget-object v3, p0, Lcom/meizu/smart/wristband/meizuUI/login_regist/LoginActivity$5$1;->this$1:Lcom/meizu/smart/wristband/meizuUI/login_regist/LoginActivity$5;

    iget-object v3, v3, Lcom/meizu/smart/wristband/meizuUI/login_regist/LoginActivity$5;->this$0:Lcom/meizu/smart/wristband/meizuUI/login_regist/LoginActivity;

    invoke-static {v3}, Lcom/meizu/smart/wristband/servers/DBUserApi;->getLoginUser(Landroid/content/Context;)Lcom/meizu/smart/wristband/models/database/entity/User;

    move-result-object v3

    iput-object v3, v2, Lcom/meizu/smart/wristband/meizuUI/login_regist/LoginActivity;->user:Lcom/meizu/smart/wristband/models/database/entity/User;

    .line 576
    iget-object v2, p0, Lcom/meizu/smart/wristband/meizuUI/login_regist/LoginActivity$5$1;->this$1:Lcom/meizu/smart/wristband/meizuUI/login_regist/LoginActivity$5;

    iget-object v2, v2, Lcom/meizu/smart/wristband/meizuUI/login_regist/LoginActivity$5;->this$0:Lcom/meizu/smart/wristband/meizuUI/login_regist/LoginActivity;

    iget-object v2, v2, Lcom/meizu/smart/wristband/meizuUI/login_regist/LoginActivity;->user:Lcom/meizu/smart/wristband/models/database/entity/User;

    if-nez v2, :cond_0

    .line 577
    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .line 592
    :goto_0
    return-object v2

    .line 579
    :cond_0
    iget-object v2, p0, Lcom/meizu/smart/wristband/meizuUI/login_regist/LoginActivity$5$1;->this$1:Lcom/meizu/smart/wristband/meizuUI/login_regist/LoginActivity$5;

    iget-object v2, v2, Lcom/meizu/smart/wristband/meizuUI/login_regist/LoginActivity$5;->this$0:Lcom/meizu/smart/wristband/meizuUI/login_regist/LoginActivity;

    invoke-static {v2}, Lcom/meizu/smart/wristband/meizuUI/login_regist/LoginActivity;->access$100(Lcom/meizu/smart/wristband/meizuUI/login_regist/LoginActivity;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/meizu/smart/wristband/meizuUI/login_regist/LoginActivity$5$1;->this$1:Lcom/meizu/smart/wristband/meizuUI/login_regist/LoginActivity$5;

    iget-object v2, v2, Lcom/meizu/smart/wristband/meizuUI/login_regist/LoginActivity$5;->this$0:Lcom/meizu/smart/wristband/meizuUI/login_regist/LoginActivity;

    invoke-static {v2}, Lcom/meizu/smart/wristband/meizuUI/login_regist/LoginActivity;->access$100(Lcom/meizu/smart/wristband/meizuUI/login_regist/LoginActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_1

    .line 580
    iget-object v2, p0, Lcom/meizu/smart/wristband/meizuUI/login_regist/LoginActivity$5$1;->this$1:Lcom/meizu/smart/wristband/meizuUI/login_regist/LoginActivity$5;

    iget-object v2, v2, Lcom/meizu/smart/wristband/meizuUI/login_regist/LoginActivity$5;->this$0:Lcom/meizu/smart/wristband/meizuUI/login_regist/LoginActivity;

    iget-object v2, v2, Lcom/meizu/smart/wristband/meizuUI/login_regist/LoginActivity;->user:Lcom/meizu/smart/wristband/models/database/entity/User;

    iget-object v3, p0, Lcom/meizu/smart/wristband/meizuUI/login_regist/LoginActivity$5$1;->this$1:Lcom/meizu/smart/wristband/meizuUI/login_regist/LoginActivity$5;

    iget-object v3, v3, Lcom/meizu/smart/wristband/meizuUI/login_regist/LoginActivity$5;->this$0:Lcom/meizu/smart/wristband/meizuUI/login_regist/LoginActivity;

    invoke-static {v3}, Lcom/meizu/smart/wristband/meizuUI/login_regist/LoginActivity;->access$100(Lcom/meizu/smart/wristband/meizuUI/login_regist/LoginActivity;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/meizu/smart/wristband/models/database/entity/User;->setNickname(Ljava/lang/String;)V

    .line 583
    :cond_1
    iget-object v2, p0, Lcom/meizu/smart/wristband/meizuUI/login_regist/LoginActivity$5$1;->this$1:Lcom/meizu/smart/wristband/meizuUI/login_regist/LoginActivity$5;

    iget-object v2, v2, Lcom/meizu/smart/wristband/meizuUI/login_regist/LoginActivity$5;->this$0:Lcom/meizu/smart/wristband/meizuUI/login_regist/LoginActivity;

    invoke-static {v2}, Lcom/meizu/smart/wristband/meizuUI/login_regist/LoginActivity;->access$200(Lcom/meizu/smart/wristband/meizuUI/login_regist/LoginActivity;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/meizu/smart/wristband/meizuUI/login_regist/LoginActivity$5$1;->this$1:Lcom/meizu/smart/wristband/meizuUI/login_regist/LoginActivity$5;

    iget-object v2, v2, Lcom/meizu/smart/wristband/meizuUI/login_regist/LoginActivity$5;->this$0:Lcom/meizu/smart/wristband/meizuUI/login_regist/LoginActivity;

    invoke-static {v2}, Lcom/meizu/smart/wristband/meizuUI/login_regist/LoginActivity;->access$200(Lcom/meizu/smart/wristband/meizuUI/login_regist/LoginActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_2

    .line 584
    const/4 v1, 0x0

    .line 586
    .local v1, "photo":Ljava/lang/String;
    :try_start_0
    iget-object v2, p0, Lcom/meizu/smart/wristband/meizuUI/login_regist/LoginActivity$5$1;->this$1:Lcom/meizu/smart/wristband/meizuUI/login_regist/LoginActivity$5;

    iget-object v2, v2, Lcom/meizu/smart/wristband/meizuUI/login_regist/LoginActivity$5;->this$0:Lcom/meizu/smart/wristband/meizuUI/login_regist/LoginActivity;

    invoke-static {v2}, Lcom/meizu/smart/wristband/meizuUI/login_regist/LoginActivity;->access$200(Lcom/meizu/smart/wristband/meizuUI/login_regist/LoginActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/meizu/smart/wristband/utils/ImageHandle;->loadImageFromUrl(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 590
    :goto_1
    iget-object v2, p0, Lcom/meizu/smart/wristband/meizuUI/login_regist/LoginActivity$5$1;->this$1:Lcom/meizu/smart/wristband/meizuUI/login_regist/LoginActivity$5;

    iget-object v2, v2, Lcom/meizu/smart/wristband/meizuUI/login_regist/LoginActivity$5;->this$0:Lcom/meizu/smart/wristband/meizuUI/login_regist/LoginActivity;

    iget-object v2, v2, Lcom/meizu/smart/wristband/meizuUI/login_regist/LoginActivity;->user:Lcom/meizu/smart/wristband/models/database/entity/User;

    invoke-virtual {v2, v1}, Lcom/meizu/smart/wristband/models/database/entity/User;->setPortrait(Ljava/lang/String;)V

    .line 592
    .end local v1    # "photo":Ljava/lang/String;
    :cond_2
    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    goto :goto_0

    .line 587
    .restart local v1    # "photo":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 588
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 572
    invoke-virtual {p0}, Lcom/meizu/smart/wristband/meizuUI/login_regist/LoginActivity$5$1;->call()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
