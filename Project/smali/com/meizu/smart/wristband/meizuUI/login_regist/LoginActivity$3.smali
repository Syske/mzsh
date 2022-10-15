.class Lcom/meizu/smart/wristband/meizuUI/login_regist/LoginActivity$3;
.super Ljava/lang/Object;
.source "LoginActivity.java"

# interfaces
.implements Lrx/functions/Func1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/smart/wristband/meizuUI/login_regist/LoginActivity;->gologin(Ljava/lang/String;Ljava/lang/String;)Lrx/Observable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lrx/functions/Func1",
        "<",
        "Ljava/lang/Boolean;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/smart/wristband/meizuUI/login_regist/LoginActivity;


# direct methods
.method constructor <init>(Lcom/meizu/smart/wristband/meizuUI/login_regist/LoginActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/meizu/smart/wristband/meizuUI/login_regist/LoginActivity;

    .prologue
    .line 338
    iput-object p1, p0, Lcom/meizu/smart/wristband/meizuUI/login_regist/LoginActivity$3;->this$0:Lcom/meizu/smart/wristband/meizuUI/login_regist/LoginActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic call(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 338
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/meizu/smart/wristband/meizuUI/login_regist/LoginActivity$3;->call(Ljava/lang/Boolean;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public call(Ljava/lang/Boolean;)Ljava/lang/Void;
    .locals 1
    .param p1, "aBoolean"    # Ljava/lang/Boolean;

    .prologue
    .line 341
    const/4 v0, 0x0

    return-object v0
.end method
