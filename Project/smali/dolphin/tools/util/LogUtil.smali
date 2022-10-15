.class public Ldolphin/tools/util/LogUtil;
.super Ljava/lang/Object;
.source "LogUtil.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "Tohow"

.field private static flogToggle:Z

.field private static toggle:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 39
    const/4 v0, 0x1

    sput-boolean v0, Ldolphin/tools/util/LogUtil;->toggle:Z

    .line 40
    const/4 v0, 0x0

    sput-boolean v0, Ldolphin/tools/util/LogUtil;->flogToggle:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final d(Ljava/lang/String;)V
    .locals 1
    .param p0, "msg"    # Ljava/lang/String;

    .prologue
    .line 19
    const-string v0, "Tohow"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 20
    return-void
.end method

.method public static final e(Ljava/lang/String;)V
    .locals 1
    .param p0, "msg"    # Ljava/lang/String;

    .prologue
    .line 15
    const-string v0, "Tohow"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 16
    return-void
.end method

.method public static final i(Ljava/lang/String;)V
    .locals 1
    .param p0, "msg"    # Ljava/lang/String;

    .prologue
    .line 11
    const-string v0, "Tohow"

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 12
    return-void
.end method

.method public static final i1(Ljava/lang/String;)V
    .locals 0
    .param p0, "msg"    # Ljava/lang/String;

    .prologue
    .line 36
    invoke-static {p0}, Ldolphin/tools/util/LogUtil;->i(Ljava/lang/String;)V

    .line 37
    return-void
.end method

.method public static final setToggle(I)V
    .locals 3
    .param p0, "flag"    # I

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 42
    const/4 v0, -0x1

    if-ne p0, v0, :cond_0

    .line 43
    sput-boolean v2, Ldolphin/tools/util/LogUtil;->toggle:Z

    .line 47
    :goto_0
    packed-switch p0, :pswitch_data_0

    .line 58
    :goto_1
    :pswitch_0
    return-void

    .line 45
    :cond_0
    sput-boolean v1, Ldolphin/tools/util/LogUtil;->toggle:Z

    goto :goto_0

    .line 49
    :pswitch_1
    sput-boolean v1, Ldolphin/tools/util/LogUtil;->flogToggle:Z

    goto :goto_1

    .line 52
    :pswitch_2
    sput-boolean v2, Ldolphin/tools/util/LogUtil;->flogToggle:Z

    goto :goto_1

    .line 55
    :pswitch_3
    sput-boolean v1, Ldolphin/tools/util/LogUtil;->flogToggle:Z

    goto :goto_1

    .line 47
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method public static final v(Ljava/lang/String;)V
    .locals 1
    .param p0, "msg"    # Ljava/lang/String;

    .prologue
    .line 23
    const-string v0, "Tohow"

    invoke-static {v0, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 24
    return-void
.end method

.method public static final w(Ljava/lang/String;)V
    .locals 1
    .param p0, "msg"    # Ljava/lang/String;

    .prologue
    .line 27
    const-string v0, "Tohow"

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 28
    return-void
.end method

.method public static final wtf(Ljava/lang/String;)V
    .locals 1
    .param p0, "msg"    # Ljava/lang/String;
    .annotation build Landroid/annotation/TargetApi;
        value = 0x8
    .end annotation

    .prologue
    .line 32
    const-string v0, "Tohow"

    invoke-static {v0, p0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 33
    return-void
.end method
