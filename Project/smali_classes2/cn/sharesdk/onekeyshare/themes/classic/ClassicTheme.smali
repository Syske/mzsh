.class public Lcn/sharesdk/onekeyshare/themes/classic/ClassicTheme;
.super Lcn/sharesdk/onekeyshare/OnekeyShareThemeImpl;
.source "ClassicTheme.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Lcn/sharesdk/onekeyshare/OnekeyShareThemeImpl;-><init>()V

    return-void
.end method


# virtual methods
.method protected showEditPage(Landroid/content/Context;Lcn/sharesdk/framework/Platform;Lcn/sharesdk/framework/Platform$ShareParams;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "platform"    # Lcn/sharesdk/framework/Platform;
    .param p3, "sp"    # Lcn/sharesdk/framework/Platform$ShareParams;

    .prologue
    .line 39
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v0, v2, Landroid/content/res/Configuration;->orientation:I

    .line 40
    .local v0, "orientation":I
    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    .line 41
    new-instance v1, Lcn/sharesdk/onekeyshare/themes/classic/port/EditPagePort;

    invoke-direct {v1, p0}, Lcn/sharesdk/onekeyshare/themes/classic/port/EditPagePort;-><init>(Lcn/sharesdk/onekeyshare/OnekeyShareThemeImpl;)V

    .line 45
    .local v1, "page":Lcn/sharesdk/onekeyshare/themes/classic/EditPage;
    :goto_0
    invoke-virtual {v1, p2}, Lcn/sharesdk/onekeyshare/themes/classic/EditPage;->setPlatform(Lcn/sharesdk/framework/Platform;)V

    .line 46
    invoke-virtual {v1, p3}, Lcn/sharesdk/onekeyshare/themes/classic/EditPage;->setShareParams(Lcn/sharesdk/framework/Platform$ShareParams;)V

    .line 47
    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Lcn/sharesdk/onekeyshare/themes/classic/EditPage;->show(Landroid/content/Context;Landroid/content/Intent;)V

    .line 48
    return-void

    .line 43
    .end local v1    # "page":Lcn/sharesdk/onekeyshare/themes/classic/EditPage;
    :cond_0
    new-instance v1, Lcn/sharesdk/onekeyshare/themes/classic/land/EditPageLand;

    invoke-direct {v1, p0}, Lcn/sharesdk/onekeyshare/themes/classic/land/EditPageLand;-><init>(Lcn/sharesdk/onekeyshare/OnekeyShareThemeImpl;)V

    .restart local v1    # "page":Lcn/sharesdk/onekeyshare/themes/classic/EditPage;
    goto :goto_0
.end method

.method protected showPlatformPage(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 27
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v0, v2, Landroid/content/res/Configuration;->orientation:I

    .line 28
    .local v0, "orientation":I
    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    .line 29
    new-instance v1, Lcn/sharesdk/onekeyshare/themes/classic/port/PlatformPagePort;

    invoke-direct {v1, p0}, Lcn/sharesdk/onekeyshare/themes/classic/port/PlatformPagePort;-><init>(Lcn/sharesdk/onekeyshare/OnekeyShareThemeImpl;)V

    .line 33
    .local v1, "page":Lcn/sharesdk/onekeyshare/themes/classic/PlatformPage;
    :goto_0
    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Lcn/sharesdk/onekeyshare/themes/classic/PlatformPage;->show(Landroid/content/Context;Landroid/content/Intent;)V

    .line 34
    return-void

    .line 31
    .end local v1    # "page":Lcn/sharesdk/onekeyshare/themes/classic/PlatformPage;
    :cond_0
    new-instance v1, Lcn/sharesdk/onekeyshare/themes/classic/land/PlatformPageLand;

    invoke-direct {v1, p0}, Lcn/sharesdk/onekeyshare/themes/classic/land/PlatformPageLand;-><init>(Lcn/sharesdk/onekeyshare/OnekeyShareThemeImpl;)V

    .restart local v1    # "page":Lcn/sharesdk/onekeyshare/themes/classic/PlatformPage;
    goto :goto_0
.end method
