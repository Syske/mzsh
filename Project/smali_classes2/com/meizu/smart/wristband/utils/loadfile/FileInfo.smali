.class public Lcom/meizu/smart/wristband/utils/loadfile/FileInfo;
.super Ljava/lang/Object;
.source "FileInfo.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final UPDATE_END:I = 0x3

.field public static final UPDATE_PROCESS:I = 0x2

.field public static final UPDATE_START:I = 0x1

.field private static final serialVersionUID:J = 0x6086e279fb6bb2bL


# instance fields
.field private downUrl:Ljava/lang/String;

.field private fileName:Ljava/lang/String;

.field private filePath:Ljava/lang/String;

.field private fileType:I

.field private newVersion:I

.field private packageName:Ljava/lang/String;

.field private updatestate:I

.field private version:I

.field private versionName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getDownUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/meizu/smart/wristband/utils/loadfile/FileInfo;->downUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getFileName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/meizu/smart/wristband/utils/loadfile/FileInfo;->fileName:Ljava/lang/String;

    return-object v0
.end method

.method public getFilePath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/meizu/smart/wristband/utils/loadfile/FileInfo;->filePath:Ljava/lang/String;

    return-object v0
.end method

.method public getFileType()I
    .locals 1

    .prologue
    .line 91
    iget v0, p0, Lcom/meizu/smart/wristband/utils/loadfile/FileInfo;->fileType:I

    return v0
.end method

.method public getNewVersion()I
    .locals 1

    .prologue
    .line 59
    iget v0, p0, Lcom/meizu/smart/wristband/utils/loadfile/FileInfo;->newVersion:I

    return v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lcom/meizu/smart/wristband/utils/loadfile/FileInfo;->packageName:Ljava/lang/String;

    return-object v0
.end method

.method public getUpdatestate()I
    .locals 1

    .prologue
    .line 27
    iget v0, p0, Lcom/meizu/smart/wristband/utils/loadfile/FileInfo;->updatestate:I

    return v0
.end method

.method public getVersion()I
    .locals 1

    .prologue
    .line 43
    iget v0, p0, Lcom/meizu/smart/wristband/utils/loadfile/FileInfo;->version:I

    return v0
.end method

.method public getVersionName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/meizu/smart/wristband/utils/loadfile/FileInfo;->versionName:Ljava/lang/String;

    return-object v0
.end method

.method public isUpdate()Z
    .locals 2

    .prologue
    .line 99
    iget v0, p0, Lcom/meizu/smart/wristband/utils/loadfile/FileInfo;->newVersion:I

    iget v1, p0, Lcom/meizu/smart/wristband/utils/loadfile/FileInfo;->version:I

    if-le v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setDownUrl(Ljava/lang/String;)V
    .locals 0
    .param p1, "downUrl"    # Ljava/lang/String;

    .prologue
    .line 39
    iput-object p1, p0, Lcom/meizu/smart/wristband/utils/loadfile/FileInfo;->downUrl:Ljava/lang/String;

    .line 40
    return-void
.end method

.method public setFileName(Ljava/lang/String;)V
    .locals 0
    .param p1, "fileName"    # Ljava/lang/String;

    .prologue
    .line 71
    iput-object p1, p0, Lcom/meizu/smart/wristband/utils/loadfile/FileInfo;->fileName:Ljava/lang/String;

    .line 72
    return-void
.end method

.method public setFilePath(Ljava/lang/String;)V
    .locals 0
    .param p1, "filePath"    # Ljava/lang/String;

    .prologue
    .line 79
    iput-object p1, p0, Lcom/meizu/smart/wristband/utils/loadfile/FileInfo;->filePath:Ljava/lang/String;

    .line 80
    return-void
.end method

.method public setFileType(I)V
    .locals 0
    .param p1, "fileType"    # I

    .prologue
    .line 95
    iput p1, p0, Lcom/meizu/smart/wristband/utils/loadfile/FileInfo;->fileType:I

    .line 96
    return-void
.end method

.method public setNewVersion(I)V
    .locals 0
    .param p1, "newVersion"    # I

    .prologue
    .line 63
    iput p1, p0, Lcom/meizu/smart/wristband/utils/loadfile/FileInfo;->newVersion:I

    .line 64
    return-void
.end method

.method public setPackageName(Ljava/lang/String;)V
    .locals 0
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 87
    iput-object p1, p0, Lcom/meizu/smart/wristband/utils/loadfile/FileInfo;->packageName:Ljava/lang/String;

    .line 88
    return-void
.end method

.method public setUpdatestate(I)V
    .locals 0
    .param p1, "updatestate"    # I

    .prologue
    .line 31
    iput p1, p0, Lcom/meizu/smart/wristband/utils/loadfile/FileInfo;->updatestate:I

    .line 32
    return-void
.end method

.method public setVersion(I)V
    .locals 0
    .param p1, "version"    # I

    .prologue
    .line 47
    iput p1, p0, Lcom/meizu/smart/wristband/utils/loadfile/FileInfo;->version:I

    .line 48
    return-void
.end method

.method public setVersionName(Ljava/lang/String;)V
    .locals 0
    .param p1, "versionName"    # Ljava/lang/String;

    .prologue
    .line 55
    iput-object p1, p0, Lcom/meizu/smart/wristband/utils/loadfile/FileInfo;->versionName:Ljava/lang/String;

    .line 56
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Lcom/meizu/smart/wristband/utils/loadfile/FileInfo;->filePath:Ljava/lang/String;

    return-object v0
.end method
