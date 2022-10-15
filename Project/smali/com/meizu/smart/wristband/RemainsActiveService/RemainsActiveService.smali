.class public Lcom/meizu/smart/wristband/RemainsActiveService/RemainsActiveService;
.super Landroid/app/Service;
.source "RemainsActiveService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/meizu/smart/wristband/RemainsActiveService/RemainsActiveService$LocalBinder;
    }
.end annotation


# static fields
.field private static final ONGOING_NOTIFICATION_ID:I = 0x7f030000


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 59
    return-void
.end method

.method private sendNotification()V
    .locals 8

    .prologue
    const/high16 v7, 0x7f030000

    const/4 v6, 0x0

    .line 41
    new-instance v0, Landroid/app/Notification;

    const v3, 0x7f0800af

    invoke-virtual {p0, v3}, Lcom/meizu/smart/wristband/RemainsActiveService/RemainsActiveService;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-direct {v0, v7, v3, v4, v5}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    .line 42
    .local v0, "notification":Landroid/app/Notification;
    new-instance v1, Landroid/content/Intent;

    const-class v3, Lcom/meizu/smart/wristband/meizuUI/main/MainActivity;

    invoke-direct {v1, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 43
    .local v1, "notificationIntent":Landroid/content/Intent;
    const/high16 v3, 0x20000000

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 44
    invoke-static {p0, v6, v1, v6}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    .line 47
    .local v2, "pendingIntent":Landroid/app/PendingIntent;
    invoke-virtual {p0, v7, v0}, Lcom/meizu/smart/wristband/RemainsActiveService/RemainsActiveService;->startForeground(ILandroid/app/Notification;)V

    .line 48
    return-void
.end method


# virtual methods
.method public initialize()Z
    .locals 1

    .prologue
    .line 56
    const/4 v0, 0x1

    return v0
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 19
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .locals 0

    .prologue
    .line 35
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 36
    return-void
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    .line 52
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 53
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "flags"    # I
    .param p3, "startId"    # I

    .prologue
    .line 29
    invoke-super {p0, p1, p2, p3}, Landroid/app/Service;->onStartCommand(Landroid/content/Intent;II)I

    move-result v0

    return v0
.end method

.method public onUnbind(Landroid/content/Intent;)Z
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 24
    invoke-super {p0, p1}, Landroid/app/Service;->onUnbind(Landroid/content/Intent;)Z

    move-result v0

    return v0
.end method
