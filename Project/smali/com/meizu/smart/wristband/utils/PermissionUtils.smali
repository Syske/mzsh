.class public abstract Lcom/meizu/smart/wristband/utils/PermissionUtils;
.super Ljava/lang/Object;
.source "PermissionUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/meizu/smart/wristband/utils/PermissionUtils$RationaleDialog;,
        Lcom/meizu/smart/wristband/utils/PermissionUtils$PermissionDeniedDialog;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 128
    return-void
.end method

.method public static checkPermission(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "permission"    # Ljava/lang/String;

    .prologue
    .line 73
    invoke-static {p0, p1}, Landroid/support/v4/app/ActivityCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isPermissionGranted([Ljava/lang/String;[ILjava/lang/String;)Z
    .locals 3
    .param p0, "grantPermissions"    # [Ljava/lang/String;
    .param p1, "grantResults"    # [I
    .param p2, "permission"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 63
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v2, p0

    if-ge v0, v2, :cond_1

    .line 64
    if-eqz p2, :cond_0

    aget-object v2, p0, v0

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 65
    :cond_0
    aget v2, p1, v0

    if-nez v2, :cond_1

    const/4 v1, 0x1

    .line 68
    :cond_1
    return v1

    .line 63
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static requestPermission(Landroid/support/v7/app/AppCompatActivity;ILjava/lang/String;Z)V
    .locals 3
    .param p0, "activity"    # Landroid/support/v7/app/AppCompatActivity;
    .param p1, "requestId"    # I
    .param p2, "permission"    # Ljava/lang/String;
    .param p3, "finishActivity"    # Z

    .prologue
    .line 44
    invoke-static {p0, p2}, Landroid/support/v4/app/ActivityCompat;->shouldShowRequestPermissionRationale(Landroid/app/Activity;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 46
    invoke-static {p1, p3}, Lcom/meizu/smart/wristband/utils/PermissionUtils$RationaleDialog;->newInstance(IZ)Lcom/meizu/smart/wristband/utils/PermissionUtils$RationaleDialog;

    move-result-object v0

    .line 47
    invoke-virtual {p0}, Landroid/support/v7/app/AppCompatActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    const-string v2, "dialog"

    invoke-virtual {v0, v1, v2}, Lcom/meizu/smart/wristband/utils/PermissionUtils$RationaleDialog;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    .line 53
    :goto_0
    return-void

    .line 50
    :cond_0
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    invoke-static {p0, v0, p1}, Landroid/support/v4/app/ActivityCompat;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V

    goto :goto_0
.end method
