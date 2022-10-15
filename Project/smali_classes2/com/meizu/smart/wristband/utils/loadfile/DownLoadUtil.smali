.class public Lcom/meizu/smart/wristband/utils/loadfile/DownLoadUtil;
.super Ljava/lang/Object;
.source "DownLoadUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/meizu/smart/wristband/utils/loadfile/DownLoadUtil$ApkSelfUpdateThread;,
        Lcom/meizu/smart/wristband/utils/loadfile/DownLoadUtil$DownloadCallback;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    return-void
.end method

.method public static doDownload(Ljava/net/URL;Ljava/lang/String;Lcom/meizu/smart/wristband/utils/loadfile/DownLoadUtil$DownloadCallback;)V
    .locals 1
    .param p0, "url"    # Ljava/net/URL;
    .param p1, "localPath"    # Ljava/lang/String;
    .param p2, "callback"    # Lcom/meizu/smart/wristband/utils/loadfile/DownLoadUtil$DownloadCallback;

    .prologue
    .line 50
    new-instance v0, Lcom/meizu/smart/wristband/utils/loadfile/DownLoadUtil$ApkSelfUpdateThread;

    invoke-direct {v0, p0, p1, p2}, Lcom/meizu/smart/wristband/utils/loadfile/DownLoadUtil$ApkSelfUpdateThread;-><init>(Ljava/net/URL;Ljava/lang/String;Lcom/meizu/smart/wristband/utils/loadfile/DownLoadUtil$DownloadCallback;)V

    invoke-virtual {v0}, Lcom/meizu/smart/wristband/utils/loadfile/DownLoadUtil$ApkSelfUpdateThread;->start()V

    .line 51
    return-void
.end method

.method public static downloadFile(Ljava/net/URL;Ljava/lang/String;)Lrx/Observable;
    .locals 1
    .param p0, "url"    # Ljava/net/URL;
    .param p1, "localPath"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/URL;",
            "Ljava/lang/String;",
            ")",
            "Lrx/Observable",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .prologue
    .line 30
    new-instance v0, Lcom/meizu/smart/wristband/utils/loadfile/DownLoadUtil$1;

    invoke-direct {v0, p0, p1}, Lcom/meizu/smart/wristband/utils/loadfile/DownLoadUtil$1;-><init>(Ljava/net/URL;Ljava/lang/String;)V

    invoke-static {v0}, Lrx/Observable;->create(Lrx/Observable$OnSubscribe;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public static getDataPath()Ljava/lang/String;
    .locals 4

    .prologue
    .line 55
    invoke-static {}, Lcom/meizu/smart/wristband/utils/loadfile/Util;->isSDCardReady()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 56
    const-string v2, "meizu/upgrade/"

    invoke-static {v2}, Lcom/meizu/smart/wristband/utils/SdCardUtil;->getSdCardPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 57
    .local v1, "savePath":Ljava/lang/String;
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 58
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    .line 61
    :try_start_0
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 70
    .end local v0    # "file":Ljava/io/File;
    :cond_0
    :goto_0
    return-object v1

    .line 67
    .end local v1    # "savePath":Ljava/lang/String;
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/data/com.meizu.smart.wristband/meizu/upgrade/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .restart local v1    # "savePath":Ljava/lang/String;
    goto :goto_0

    .line 62
    .restart local v0    # "file":Ljava/io/File;
    :catch_0
    move-exception v2

    goto :goto_0
.end method
