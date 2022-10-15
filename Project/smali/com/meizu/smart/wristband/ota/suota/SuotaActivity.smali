.class public abstract Lcom/meizu/smart/wristband/ota/suota/SuotaActivity;
.super Landroid/app/Activity;
.source "SuotaActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 10
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 11
    return-void
.end method

.method protected final showAlertDialog(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "message"    # Ljava/lang/String;

    .prologue
    .line 38
    return-void
.end method
