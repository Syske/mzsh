.class public abstract Lcom/tencent/bugly/beta/download/DownloadTask;
.super Ljava/lang/Object;
.source "BUGLY"


# static fields
.field public static final COMPLETE:I = 0x1

.field public static final DELETED:I = 0x4

.field public static final DOWNLOADING:I = 0x2

.field public static final FAILED:I = 0x5

.field public static final INIT:I = 0x0

.field public static final PAUSED:I = 0x3


# instance fields
.field protected a:Ljava/lang/String;

.field protected b:Ljava/lang/String;

.field protected c:Ljava/lang/String;

.field protected d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/tencent/bugly/beta/download/DownloadListener;",
            ">;"
        }
    .end annotation
.end field

.field protected e:J

.field protected f:J

.field protected g:Z

.field protected h:Ljava/lang/String;

.field protected i:I


# direct methods
.method protected constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "downloadUrl"    # Ljava/lang/String;
    .param p2, "saveDir"    # Ljava/lang/String;
    .param p3, "saveName"    # Ljava/lang/String;
    .param p4, "md5"    # Ljava/lang/String;

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/tencent/bugly/beta/download/DownloadTask;->d:Ljava/util/List;

    .line 26
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tencent/bugly/beta/download/DownloadTask;->g:Z

    .line 27
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/bugly/beta/download/DownloadTask;->h:Ljava/lang/String;

    .line 28
    const/4 v0, 0x0

    iput v0, p0, Lcom/tencent/bugly/beta/download/DownloadTask;->i:I

    .line 38
    iput-object p1, p0, Lcom/tencent/bugly/beta/download/DownloadTask;->a:Ljava/lang/String;

    .line 39
    iput-object p2, p0, Lcom/tencent/bugly/beta/download/DownloadTask;->b:Ljava/lang/String;

    .line 40
    iput-object p3, p0, Lcom/tencent/bugly/beta/download/DownloadTask;->c:Ljava/lang/String;

    .line 41
    iput-object p4, p0, Lcom/tencent/bugly/beta/download/DownloadTask;->h:Ljava/lang/String;

    .line 42
    return-void
.end method


# virtual methods
.method public addListener(Lcom/tencent/bugly/beta/download/DownloadListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/tencent/bugly/beta/download/DownloadListener;

    .prologue
    .line 77
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/tencent/bugly/beta/download/DownloadTask;->d:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 78
    iget-object v0, p0, Lcom/tencent/bugly/beta/download/DownloadTask;->d:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 80
    :cond_0
    return-void
.end method

.method public abstract delete(Z)V
.end method

.method public abstract download()V
.end method

.method public abstract getCostTime()J
.end method

.method public getDownloadUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/tencent/bugly/beta/download/DownloadTask;->a:Ljava/lang/String;

    return-object v0
.end method

.method public getMD5()Ljava/lang/String;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/tencent/bugly/beta/download/DownloadTask;->h:Ljava/lang/String;

    return-object v0
.end method

.method public abstract getSaveFile()Ljava/io/File;
.end method

.method public getSavedLength()J
    .locals 2

    .prologue
    .line 53
    iget-wide v0, p0, Lcom/tencent/bugly/beta/download/DownloadTask;->e:J

    return-wide v0
.end method

.method public abstract getStatus()I
.end method

.method public getTotalLength()J
    .locals 2

    .prologue
    .line 45
    iget-wide v0, p0, Lcom/tencent/bugly/beta/download/DownloadTask;->f:J

    return-wide v0
.end method

.method public isNeededNotify()Z
    .locals 1

    .prologue
    .line 87
    iget-boolean v0, p0, Lcom/tencent/bugly/beta/download/DownloadTask;->g:Z

    return v0
.end method

.method public removeListener(Lcom/tencent/bugly/beta/download/DownloadListener;)Z
    .locals 1
    .param p1, "listener"    # Lcom/tencent/bugly/beta/download/DownloadListener;

    .prologue
    .line 83
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/tencent/bugly/beta/download/DownloadTask;->d:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setNeededNotify(Z)V
    .locals 0
    .param p1, "neededNotify"    # Z

    .prologue
    .line 65
    iput-boolean p1, p0, Lcom/tencent/bugly/beta/download/DownloadTask;->g:Z

    .line 66
    return-void
.end method

.method public setSavedLength(J)V
    .locals 1
    .param p1, "savedLength"    # J

    .prologue
    .line 57
    iput-wide p1, p0, Lcom/tencent/bugly/beta/download/DownloadTask;->e:J

    .line 58
    return-void
.end method

.method public setTotalLength(J)V
    .locals 1
    .param p1, "totalLength"    # J

    .prologue
    .line 49
    iput-wide p1, p0, Lcom/tencent/bugly/beta/download/DownloadTask;->f:J

    .line 50
    return-void
.end method

.method public abstract stop()V
.end method
