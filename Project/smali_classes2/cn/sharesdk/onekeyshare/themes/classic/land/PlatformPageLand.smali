.class public Lcn/sharesdk/onekeyshare/themes/classic/land/PlatformPageLand;
.super Lcn/sharesdk/onekeyshare/themes/classic/PlatformPage;
.source "PlatformPageLand.java"


# direct methods
.method public constructor <init>(Lcn/sharesdk/onekeyshare/OnekeyShareThemeImpl;)V
    .locals 0
    .param p1, "impl"    # Lcn/sharesdk/onekeyshare/OnekeyShareThemeImpl;

    .prologue
    .line 21
    invoke-direct {p0, p1}, Lcn/sharesdk/onekeyshare/themes/classic/PlatformPage;-><init>(Lcn/sharesdk/onekeyshare/OnekeyShareThemeImpl;)V

    .line 22
    return-void
.end method


# virtual methods
.method protected newAdapter(Ljava/util/ArrayList;)Lcn/sharesdk/onekeyshare/themes/classic/PlatformPageAdapter;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Object;",
            ">;)",
            "Lcn/sharesdk/onekeyshare/themes/classic/PlatformPageAdapter;"
        }
    .end annotation

    .prologue
    .line 30
    .local p1, "cells":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Object;>;"
    new-instance v0, Lcn/sharesdk/onekeyshare/themes/classic/land/PlatformPageAdapterLand;

    invoke-direct {v0, p0, p1}, Lcn/sharesdk/onekeyshare/themes/classic/land/PlatformPageAdapterLand;-><init>(Lcn/sharesdk/onekeyshare/themes/classic/PlatformPage;Ljava/util/ArrayList;)V

    return-object v0
.end method

.method public onCreate()V
    .locals 0

    .prologue
    .line 25
    invoke-virtual {p0}, Lcn/sharesdk/onekeyshare/themes/classic/land/PlatformPageLand;->requestLandscapeOrientation()V

    .line 26
    invoke-super {p0}, Lcn/sharesdk/onekeyshare/themes/classic/PlatformPage;->onCreate()V

    .line 27
    return-void
.end method
