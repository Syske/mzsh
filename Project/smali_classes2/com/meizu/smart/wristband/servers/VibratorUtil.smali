.class public Lcom/meizu/smart/wristband/servers/VibratorUtil;
.super Ljava/lang/Object;
.source "VibratorUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static Vibrate(Landroid/content/Context;J)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "milliseconds"    # J

    .prologue
    .line 22
    const-string v1, "vibrator"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    .line 23
    .local v0, "vib":Landroid/os/Vibrator;
    invoke-virtual {v0, p1, p2}, Landroid/os/Vibrator;->vibrate(J)V

    .line 24
    return-void
.end method

.method public static Vibrate(Landroid/content/Context;[JZ)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "pattern"    # [J
    .param p2, "isRepeat"    # Z

    .prologue
    .line 27
    const-string v1, "vibrator"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    .line 28
    .local v0, "vib":Landroid/os/Vibrator;
    if-eqz p2, :cond_0

    const/4 v1, 0x1

    :goto_0
    invoke-virtual {v0, p1, v1}, Landroid/os/Vibrator;->vibrate([JI)V

    .line 29
    return-void

    .line 28
    :cond_0
    const/4 v1, -0x1

    goto :goto_0
.end method
