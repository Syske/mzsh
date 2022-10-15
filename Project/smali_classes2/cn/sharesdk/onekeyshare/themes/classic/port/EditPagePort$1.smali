.class Lcn/sharesdk/onekeyshare/themes/classic/port/EditPagePort$1;
.super Lcom/mob/tools/gui/AsyncImageView;
.source "EditPagePort.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/sharesdk/onekeyshare/themes/classic/port/EditPagePort;->initBody(Landroid/widget/RelativeLayout;F)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/sharesdk/onekeyshare/themes/classic/port/EditPagePort;


# direct methods
.method constructor <init>(Lcn/sharesdk/onekeyshare/themes/classic/port/EditPagePort;Landroid/content/Context;)V
    .locals 0
    .param p1, "this$0"    # Lcn/sharesdk/onekeyshare/themes/classic/port/EditPagePort;
    .param p2, "x0"    # Landroid/content/Context;

    .prologue
    .line 152
    iput-object p1, p0, Lcn/sharesdk/onekeyshare/themes/classic/port/EditPagePort$1;->this$0:Lcn/sharesdk/onekeyshare/themes/classic/port/EditPagePort;

    invoke-direct {p0, p2}, Lcom/mob/tools/gui/AsyncImageView;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public onImageGot(Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 1
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "bm"    # Landroid/graphics/Bitmap;

    .prologue
    .line 154
    iget-object v0, p0, Lcn/sharesdk/onekeyshare/themes/classic/port/EditPagePort$1;->this$0:Lcn/sharesdk/onekeyshare/themes/classic/port/EditPagePort;

    invoke-static {v0, p2}, Lcn/sharesdk/onekeyshare/themes/classic/port/EditPagePort;->access$002(Lcn/sharesdk/onekeyshare/themes/classic/port/EditPagePort;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    .line 155
    invoke-super {p0, p1, p2}, Lcom/mob/tools/gui/AsyncImageView;->onImageGot(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 156
    return-void
.end method
