.class Lcn/sharesdk/facebook/l;
.super Lcn/sharesdk/framework/i;


# instance fields
.field final synthetic a:Lcn/sharesdk/facebook/i;


# direct methods
.method constructor <init>(Lcn/sharesdk/facebook/i;)V
    .locals 0

    iput-object p1, p0, Lcn/sharesdk/facebook/l;->a:Lcn/sharesdk/facebook/i;

    invoke-direct {p0}, Lcn/sharesdk/framework/i;-><init>()V

    return-void
.end method


# virtual methods
.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 1
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    if-eqz p2, :cond_0

    const-string v0, "fbconnect://success"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/sharesdk/facebook/l;->a:Lcn/sharesdk/facebook/i;

    invoke-static {v0, p2}, Lcn/sharesdk/facebook/i;->a(Lcn/sharesdk/facebook/i;Ljava/lang/String;)V

    :cond_0
    invoke-super {p0, p1, p2}, Lcn/sharesdk/framework/i;->shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method
