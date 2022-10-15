.class public Ldolphin/tools/util/DownloadUtil;
.super Ljava/lang/Object;
.source "DownloadUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static downloadByDownloadManager(Landroid/content/Context;Ljava/lang/String;)J
    .locals 6
    .param p0, "paramContext"    # Landroid/content/Context;
    .param p1, "paramString"    # Ljava/lang/String;
    .annotation build Landroid/annotation/TargetApi;
        value = 0x9
    .end annotation

    .prologue
    .line 18
    invoke-static {p0}, Ldolphin/tools/util/DownloadUtil;->getDownloadManager(Landroid/content/Context;)Landroid/app/DownloadManager;

    move-result-object v0

    .line 19
    .local v0, "d":Landroid/app/DownloadManager;
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    .line 20
    .local v4, "u":Landroid/net/Uri;
    new-instance v1, Landroid/app/DownloadManager$Request;

    invoke-direct {v1, v4}, Landroid/app/DownloadManager$Request;-><init>(Landroid/net/Uri;)V

    .line 21
    .local v1, "r":Landroid/app/DownloadManager$Request;
    const/4 v5, 0x3

    invoke-virtual {v1, v5}, Landroid/app/DownloadManager$Request;->setAllowedNetworkTypes(I)Landroid/app/DownloadManager$Request;

    .line 23
    const/4 v5, 0x0

    invoke-virtual {v1, v5}, Landroid/app/DownloadManager$Request;->setVisibleInDownloadsUi(Z)Landroid/app/DownloadManager$Request;

    .line 24
    invoke-virtual {v0, v1}, Landroid/app/DownloadManager;->enqueue(Landroid/app/DownloadManager$Request;)J

    move-result-wide v2

    .line 25
    .local v2, "l":J
    return-wide v2
.end method

.method public static getDownloadManager(Landroid/content/Context;)Landroid/app/DownloadManager;
    .locals 1
    .param p0, "paramContext"    # Landroid/content/Context;

    .prologue
    .line 12
    const-string v0, "download"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/DownloadManager;

    return-object v0
.end method

.method public static queryDownloadStatus(Landroid/content/Context;JLdolphin/tools/common/download/QueryDownloadStatusCallback;)I
    .locals 7
    .param p0, "paramContext"    # Landroid/content/Context;
    .param p1, "paramLong"    # J
    .param p3, "paramQueryDownloadStatusCallback"    # Ldolphin/tools/common/download/QueryDownloadStatusCallback;
    .annotation build Landroid/annotation/TargetApi;
        value = 0x9
    .end annotation

    .prologue
    .line 32
    new-instance v3, Landroid/app/DownloadManager$Query;

    invoke-direct {v3}, Landroid/app/DownloadManager$Query;-><init>()V

    .line 33
    .local v3, "localQuery":Landroid/app/DownloadManager$Query;
    const/4 v4, 0x1

    new-array v4, v4, [J

    const/4 v5, 0x0

    aput-wide p1, v4, v5

    invoke-virtual {v3, v4}, Landroid/app/DownloadManager$Query;->setFilterById([J)Landroid/app/DownloadManager$Query;

    .line 35
    invoke-static {p0}, Ldolphin/tools/util/DownloadUtil;->getDownloadManager(Landroid/content/Context;)Landroid/app/DownloadManager;

    move-result-object v1

    .line 36
    .local v1, "d":Landroid/app/DownloadManager;
    invoke-virtual {v1, v3}, Landroid/app/DownloadManager;->query(Landroid/app/DownloadManager$Query;)Landroid/database/Cursor;

    move-result-object v0

    .line 37
    .local v0, "c":Landroid/database/Cursor;
    const/4 v2, -0x1

    .line 38
    .local v2, "i":I
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 39
    const-string v4, "status"

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    .line 40
    if-eqz p3, :cond_0

    .line 41
    sparse-switch v2, :sswitch_data_0

    .line 54
    :cond_0
    :goto_0
    :sswitch_0
    return v2

    .line 47
    :sswitch_1
    invoke-virtual {p3, p1, p2}, Ldolphin/tools/common/download/QueryDownloadStatusCallback;->onSuccessful(J)V

    goto :goto_0

    .line 50
    :sswitch_2
    invoke-virtual {p3, p1, p2}, Ldolphin/tools/common/download/QueryDownloadStatusCallback;->onFailed(J)V

    goto :goto_0

    .line 41
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_0
        0x4 -> :sswitch_0
        0x8 -> :sswitch_1
        0x10 -> :sswitch_2
    .end sparse-switch
.end method
