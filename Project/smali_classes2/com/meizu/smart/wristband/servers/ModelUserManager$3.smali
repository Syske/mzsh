.class final Lcom/meizu/smart/wristband/servers/ModelUserManager$3;
.super Ljava/lang/Object;
.source "ModelUserManager.java"

# interfaces
.implements Lrx/functions/Func1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/smart/wristband/servers/ModelUserManager;->loginForData(Landroid/content/Context;Lcom/meizu/smart/wristband/models/newwork/request/Login;)Lrx/Observable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lrx/functions/Func1",
        "<",
        "Ljava/lang/String;",
        "Lcom/meizu/smart/wristband/models/newwork/response/Logindata;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Ljava/lang/String;)Lcom/meizu/smart/wristband/models/newwork/response/Logindata;
    .locals 2
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 49
    const-class v1, Lcom/meizu/smart/wristband/models/newwork/response/Logindata;

    invoke-static {p1, v1}, Lcom/alibaba/fastjson/JSON;->parseObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/meizu/smart/wristband/models/newwork/response/Logindata;

    .line 50
    .local v0, "logindata":Lcom/meizu/smart/wristband/models/newwork/response/Logindata;
    return-object v0
.end method

.method public bridge synthetic call(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 46
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/meizu/smart/wristband/servers/ModelUserManager$3;->call(Ljava/lang/String;)Lcom/meizu/smart/wristband/models/newwork/response/Logindata;

    move-result-object v0

    return-object v0
.end method
