.class Lcn/sharesdk/facebook/h;
.super Ljava/lang/Object;

# interfaces
.implements Lcn/sharesdk/framework/authorize/SSOListener;


# instance fields
.field final synthetic a:Lcn/sharesdk/framework/authorize/AuthorizeListener;

.field final synthetic b:Lcn/sharesdk/facebook/g;


# direct methods
.method constructor <init>(Lcn/sharesdk/facebook/g;Lcn/sharesdk/framework/authorize/AuthorizeListener;)V
    .locals 0

    iput-object p1, p0, Lcn/sharesdk/facebook/h;->b:Lcn/sharesdk/facebook/g;

    iput-object p2, p0, Lcn/sharesdk/facebook/h;->a:Lcn/sharesdk/framework/authorize/AuthorizeListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel()V
    .locals 1

    iget-object v0, p0, Lcn/sharesdk/facebook/h;->a:Lcn/sharesdk/framework/authorize/AuthorizeListener;

    invoke-interface {v0}, Lcn/sharesdk/framework/authorize/AuthorizeListener;->onCancel()V

    return-void
.end method

.method public onComplete(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "values"    # Landroid/os/Bundle;

    .prologue
    iget-object v0, p0, Lcn/sharesdk/facebook/h;->a:Lcn/sharesdk/framework/authorize/AuthorizeListener;

    invoke-interface {v0, p1}, Lcn/sharesdk/framework/authorize/AuthorizeListener;->onComplete(Landroid/os/Bundle;)V

    return-void
.end method

.method public onFailed(Ljava/lang/Throwable;)V
    .locals 2
    .param p1, "t"    # Ljava/lang/Throwable;

    .prologue
    invoke-static {}, Lcn/sharesdk/framework/utils/d;->a()Lcom/mob/tools/log/NLog;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Throwable;)I

    iget-object v0, p0, Lcn/sharesdk/facebook/h;->b:Lcn/sharesdk/facebook/g;

    iget-object v1, p0, Lcn/sharesdk/facebook/h;->a:Lcn/sharesdk/framework/authorize/AuthorizeListener;

    invoke-static {v0, v1}, Lcn/sharesdk/facebook/g;->a(Lcn/sharesdk/facebook/g;Lcn/sharesdk/framework/authorize/AuthorizeListener;)V

    return-void
.end method
