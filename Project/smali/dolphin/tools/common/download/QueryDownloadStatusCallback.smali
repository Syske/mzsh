.class public Ldolphin/tools/common/download/QueryDownloadStatusCallback;
.super Ljava/lang/Object;
.source "QueryDownloadStatusCallback.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailed(J)V
    .locals 0
    .param p1, "id"    # J

    .prologue
    .line 10
    return-void
.end method

.method public onSuccessful(J)V
    .locals 0
    .param p1, "id"    # J

    .prologue
    .line 7
    return-void
.end method
