.class final Lcom/baidu/mapapi/utils/b;
.super Lcom/baidu/a/a/a/c$a;


# instance fields
.field final synthetic a:I


# direct methods
.method constructor <init>(I)V
    .locals 0

    iput p1, p0, Lcom/baidu/mapapi/utils/b;->a:I

    invoke-direct {p0}, Lcom/baidu/a/a/a/c$a;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/os/IBinder;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {}, Lcom/baidu/mapapi/utils/a;->b()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onClientReady"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/baidu/mapapi/utils/a;->c()Lcom/baidu/a/a/a/a;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/baidu/mapapi/utils/a;->a(Lcom/baidu/a/a/a/a;)Lcom/baidu/a/a/a/a;

    :cond_0
    invoke-static {p1}, Lcom/baidu/a/a/a/a$a;->a(Landroid/os/IBinder;)Lcom/baidu/a/a/a/a;

    move-result-object v0

    invoke-static {v0}, Lcom/baidu/mapapi/utils/a;->a(Lcom/baidu/a/a/a/a;)Lcom/baidu/a/a/a/a;

    iget v0, p0, Lcom/baidu/mapapi/utils/b;->a:I

    invoke-static {v0}, Lcom/baidu/mapapi/utils/a;->a(I)Z

    const/4 v0, 0x1

    invoke-static {v0}, Lcom/baidu/mapapi/utils/a;->a(Z)Z

    return-void
.end method
