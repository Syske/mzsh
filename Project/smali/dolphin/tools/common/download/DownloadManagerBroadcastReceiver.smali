.class public Ldolphin/tools/common/download/DownloadManagerBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "DownloadManagerBroadcastReceiver.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x9
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onClickNotification(Landroid/content/Context;J)V
    .locals 0
    .param p1, "paramContext"    # Landroid/content/Context;
    .param p2, "paramLong"    # J

    .prologue
    .line 58
    return-void
.end method

.method public onDownloadComplete(Landroid/content/Context;J)V
    .locals 6
    .param p1, "paramContext"    # Landroid/content/Context;
    .param p2, "paramLong"    # J

    .prologue
    .line 33
    invoke-static {p1}, Ldolphin/tools/util/DownloadUtil;->getDownloadManager(Landroid/content/Context;)Landroid/app/DownloadManager;

    move-result-object v1

    .line 34
    .local v1, "localObject1":Landroid/app/DownloadManager;
    new-instance v2, Landroid/app/DownloadManager$Query;

    invoke-direct {v2}, Landroid/app/DownloadManager$Query;-><init>()V

    .line 35
    .local v2, "localObject2":Landroid/app/DownloadManager$Query;
    const/4 v3, 0x1

    new-array v3, v3, [J

    const/4 v4, 0x0

    aput-wide p2, v3, v4

    invoke-virtual {v2, v3}, Landroid/app/DownloadManager$Query;->setFilterById([J)Landroid/app/DownloadManager$Query;

    .line 37
    check-cast v1, Landroid/app/DownloadManager;

    .line 38
    .end local v1    # "localObject1":Landroid/app/DownloadManager;
    invoke-virtual {v1, v2}, Landroid/app/DownloadManager;->query(Landroid/app/DownloadManager$Query;)Landroid/database/Cursor;

    move-result-object v1

    .line 37
    .local v1, "localObject1":Landroid/database/Cursor;
    if-nez v1, :cond_1

    .line 51
    .end local v1    # "localObject1":Landroid/database/Cursor;
    :cond_0
    :goto_0
    return-void

    .restart local v1    # "localObject1":Landroid/database/Cursor;
    :cond_1
    move-object v3, v1

    .line 41
    check-cast v3, Landroid/database/Cursor;

    invoke-interface {v3}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_0

    move-object v3, v1

    .line 42
    check-cast v3, Landroid/database/Cursor;

    .line 43
    check-cast v1, Landroid/database/Cursor;

    .line 44
    .end local v1    # "localObject1":Landroid/database/Cursor;
    const-string v4, "local_filename"

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    .line 43
    invoke-interface {v3, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 46
    .local v1, "localObject1":Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, "f2":Ljava/io/File;
    move-object v3, v1

    .line 47
    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Ldolphin/tools/util/StringUtil;->isBlank(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 48
    new-instance v0, Ljava/io/File;

    .end local v0    # "f2":Ljava/io/File;
    check-cast v1, Ljava/lang/String;

    .end local v1    # "localObject1":Ljava/lang/String;
    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 49
    .restart local v0    # "f2":Ljava/io/File;
    :cond_2
    invoke-virtual {p0, p1, p2, p3, v0}, Ldolphin/tools/common/download/DownloadManagerBroadcastReceiver;->onDownloadComplete(Landroid/content/Context;JLjava/io/File;)V

    goto :goto_0
.end method

.method public onDownloadComplete(Landroid/content/Context;JLjava/io/File;)V
    .locals 0
    .param p1, "paramContext"    # Landroid/content/Context;
    .param p2, "paramLong"    # J
    .param p4, "paramFile"    # Ljava/io/File;

    .prologue
    .line 55
    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .param p1, "paramContext"    # Landroid/content/Context;
    .param p2, "paramIntent"    # Landroid/content/Intent;

    .prologue
    .line 18
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    .line 19
    .local v2, "str":Ljava/lang/String;
    const-string v3, "extra_download_id"

    const-wide/16 v4, 0x0

    invoke-virtual {p2, v3, v4, v5}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    .line 20
    .local v0, "l":J
    const-string v3, "android.intent.action.DOWNLOAD_COMPLETE"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 21
    invoke-virtual {p0, p1, v0, v1}, Ldolphin/tools/common/download/DownloadManagerBroadcastReceiver;->onDownloadComplete(Landroid/content/Context;J)V

    .line 30
    :cond_0
    :goto_0
    return-void

    .line 24
    :cond_1
    const-string v3, "android.intent.action.DOWNLOAD_NOTIFICATION_CLICKED"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 25
    invoke-virtual {p0, p1, v0, v1}, Ldolphin/tools/common/download/DownloadManagerBroadcastReceiver;->onClickNotification(Landroid/content/Context;J)V

    goto :goto_0

    .line 28
    :cond_2
    const-string v3, "android.intent.action.VIEW_DOWNLOADS"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 29
    invoke-virtual {p0, p1, v0, v1}, Ldolphin/tools/common/download/DownloadManagerBroadcastReceiver;->onViewDownloads(Landroid/content/Context;J)V

    goto :goto_0
.end method

.method public onViewDownloads(Landroid/content/Context;J)V
    .locals 0
    .param p1, "paramContext"    # Landroid/content/Context;
    .param p2, "paramLong"    # J

    .prologue
    .line 61
    return-void
.end method

.method public register(Landroid/content/Context;)V
    .locals 2
    .param p1, "paramContext"    # Landroid/content/Context;

    .prologue
    .line 65
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 66
    .local v0, "localIntentFilter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.DOWNLOAD_NOTIFICATION_CLICKED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 67
    const-string v1, "android.intent.action.DOWNLOAD_COMPLETE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 68
    const-string v1, "android.intent.action.VIEW_DOWNLOADS"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 69
    invoke-virtual {p1, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 70
    return-void
.end method

.method public unregister(Landroid/content/Context;)V
    .locals 0
    .param p1, "paramContext"    # Landroid/content/Context;

    .prologue
    .line 73
    invoke-virtual {p1, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 74
    return-void
.end method
